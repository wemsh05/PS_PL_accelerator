//`timescale 1ns / 1ps

//// ============================================================================
//// Module: axis_rr_arbiter
//// Description: Round-Robin AXI-Stream Arbiter using custom async_fifo.
//// ============================================================================

//module axis_rr_arbiter #(
//    parameter int NUM_INTERFACES = 4,    // Number of input snoop/stream ports
//    parameter int DATA_WIDTH     = 32,   // Matches standard 32-bit streaming pipelines
//    parameter int FIFO_DEPTH     = 16    // Storage depth per FIFO
//)(
//    input  logic                     aclk,
//    input  logic                     aresetn,

//    // ------------------------------------------------------------------------
//    // AXI-Stream Inputs (0 to 3)
//    // ------------------------------------------------------------------------
//    input  logic [DATA_WIDTH-1:0]    s0_axis_tdata,
//    input  logic                     s0_axis_tvalid,
//    input  logic                     s0_axis_tlast,
//    output logic                     s0_axis_tready,

//    input  logic [DATA_WIDTH-1:0]    s1_axis_tdata,
//    input  logic                     s1_axis_tvalid,
//    input  logic                     s1_axis_tlast,
//    output logic                     s1_axis_tready,

//    input  logic [DATA_WIDTH-1:0]    s2_axis_tdata,
//    input  logic                     s2_axis_tvalid,
//    input  logic                     s2_axis_tlast,
//    output logic                     s2_axis_tready,

//    input  logic [DATA_WIDTH-1:0]    s3_axis_tdata,
//    input  logic                     s3_axis_tvalid,
//    input  logic                     s3_axis_tlast,
//    output logic                     s3_axis_tready,

//    // ------------------------------------------------------------------------
//    // Master AXI-Stream Output
//    // ------------------------------------------------------------------------
//    output logic [DATA_WIDTH-1:0]    m_axis_tdata,
//    output logic                     m_axis_tvalid,
//    output logic                     m_axis_tlast,
//    input  logic                     m_axis_tready
//);

//    // Channel index typedef
//    typedef logic [$clog2(NUM_INTERFACES)-1:0] chan_idx_t;

//    // ------------------------------------------------------------------------
//    // 1. Array Packing
//    // ------------------------------------------------------------------------
//    logic [DATA_WIDTH-1:0] s_tdata  [4];
//    logic [3:0]            s_tvalid;
//    logic [3:0]            s_tlast;
//    logic [3:0]            s_tready;

//    assign s_tdata[0] = s0_axis_tdata;
//    assign s_tdata[1] = s1_axis_tdata;
//    assign s_tdata[2] = s2_axis_tdata;
//    assign s_tdata[3] = s3_axis_tdata;

//    assign s_tvalid = {s3_axis_tvalid, s2_axis_tvalid, s1_axis_tvalid, s0_axis_tvalid};
//    assign s_tlast  = {s3_axis_tlast,  s2_axis_tlast,  s1_axis_tlast,  s0_axis_tlast};

//    assign s0_axis_tready = s_tready[0];
//    assign s1_axis_tready = s_tready[1];
//    assign s2_axis_tready = s_tready[2];
//    assign s3_axis_tready = s_tready[3];

//    // ------------------------------------------------------------------------
//    // 2. FIFO Storage Instantiation (async_fifo)
//    // ------------------------------------------------------------------------
//    logic [DATA_WIDTH-1:0]     fifo_out_data  [NUM_INTERFACES];
//    logic [NUM_INTERFACES-1:0] fifo_out_tlast;
//    logic [NUM_INTERFACES-1:0] fifo_empty;
//    logic [NUM_INTERFACES-1:0] fifo_full;
//    logic [NUM_INTERFACES-1:0] fifo_out_valid;
//    logic [NUM_INTERFACES-1:0] fifo_rd_en;

//    generate
//        for (genvar i = 0; i < NUM_INTERFACES; i++) begin : g_snoop_fifos
//            wire fifo_wr_en = s_tvalid[i] && s_tready[i];
            
//            // Channel ready when its input FIFO is not full
//            assign s_tready[i]       = !fifo_full[i];
            
//            // FWFT valid signal directly reflects non-empty status
//            assign fifo_out_valid[i] = !fifo_empty[i];

//            async_fifo #(
//                .DATA_WIDTH (DATA_WIDTH + 1), // Pack TDATA + TLAST
//                .DEPTH      (FIFO_DEPTH)
//            ) u_fifo (
//                .wr_clk   (aclk),
//                .wr_rst_n (aresetn),
//                .wr_en    (fifo_wr_en),
//                .wr_data  ({s_tlast[i], s_tdata[i]}),
//                .full     (fifo_full[i]),

//                .rd_clk   (aclk),
//                .rd_rst_n (aresetn),
//                .rd_en    (fifo_rd_en[i]),
//                .rd_data  ({fifo_out_tlast[i], fifo_out_data[i]}),
//                .empty    (fifo_empty[i])
//            );
//        end
//    endgenerate

//    // ------------------------------------------------------------------------
//    // 3. Round-Robin Arbiter Logic
//    // ------------------------------------------------------------------------
//    chan_idx_t rr_ptr;
//    chan_idx_t next_channel_choice;
//    logic      next_channel_valid;

//    always_comb begin
//        next_channel_choice = '0;
//        next_channel_valid  = 1'b0;

//        for (int offset = 0; offset < NUM_INTERFACES; offset++) begin
//            chan_idx_t ch;
//            ch = chan_idx_t'((rr_ptr + offset) % NUM_INTERFACES);

//            if (fifo_out_valid[ch] && !next_channel_valid) begin
//                next_channel_choice = ch;
//                next_channel_valid  = 1'b1;
//            end
//        end
//    end

//    // ------------------------------------------------------------------------
//    // 4. Two-Process State Machine
//    // ------------------------------------------------------------------------
//    typedef enum logic [1:0] {
//        ST_IDLE    = 2'b00,
//        ST_WRITING = 2'b01,
//        ST_LAST    = 2'b10
//    } arb_state_t;

//    arb_state_t current_state, next_state;
//    chan_idx_t  active_channel;

//    always_comb begin
//        next_state = current_state;

//        case (current_state)
//            ST_IDLE: begin
//                if (next_channel_valid) begin
//                    next_state = ST_WRITING;
//                end
//            end

//            ST_WRITING: begin
//                if (m_axis_tvalid && m_axis_tready && m_axis_tlast) begin
//                    next_state = ST_LAST;
//                end
//            end

//            ST_LAST: begin
//                next_state = ST_IDLE;
//            end

//            default: next_state = ST_IDLE;
//        endcase
//    end

//    always_ff @(posedge aclk or negedge aresetn) begin
//        if (!aresetn) begin
//            current_state  <= ST_IDLE;
//            active_channel <= '0;
//            rr_ptr         <= '0;
//        end else begin
//            current_state <= next_state;

//            if (current_state == ST_IDLE && next_state == ST_WRITING) begin
//                active_channel <= next_channel_choice;
//                rr_ptr         <= chan_idx_t'((next_channel_choice + 1) % NUM_INTERFACES);
//            end
//        end
//    end

//    // ------------------------------------------------------------------------
//    // 5. Output Multiplexing & Backpressure
//    // ------------------------------------------------------------------------
//    assign m_axis_tdata  = fifo_out_data[active_channel];
//    assign m_axis_tlast  = fifo_out_tlast[active_channel];
//    assign m_axis_tvalid = (current_state == ST_WRITING) && fifo_out_valid[active_channel];

//    always_comb begin
//        fifo_rd_en = '0;
//        if (current_state == ST_WRITING && m_axis_tready && fifo_out_valid[active_channel]) begin
//            fifo_rd_en[active_channel] = 1'b1;
//        end
//    end

//endmodule



`timescale 1ns / 1ps

// ============================================================================
// Module: axis_rr_arbiter
// Description: Round-Robin AXI-Stream Arbiter with 2-deep Skid Buffers at each
//              input port for timing isolation and zero RAM usage.
// ============================================================================

module axis_rr_arbiter #(
    parameter int NUM_INTERFACES = 4,    // Number of input stream ports
    parameter int DATA_WIDTH     = 32    // Bus width
)(
    input  logic                     aclk,
    input  logic                     aresetn,

    // ------------------------------------------------------------------------
    // AXI-Stream Inputs (0 to 3)
    // ------------------------------------------------------------------------
    input  logic [DATA_WIDTH-1:0]    s0_axis_tdata,
    input  logic                     s0_axis_tvalid,
    input  logic                     s0_axis_tlast,
    output logic                     s0_axis_tready,

    input  logic [DATA_WIDTH-1:0]    s1_axis_tdata,
    input  logic                     s1_axis_tvalid,
    input  logic                     s1_axis_tlast,
    output logic                     s1_axis_tready,

    input  logic [DATA_WIDTH-1:0]    s2_axis_tdata,
    input  logic                     s2_axis_tvalid,
    input  logic                     s2_axis_tlast,
    output logic                     s2_axis_tready,

    input  logic [DATA_WIDTH-1:0]    s3_axis_tdata,
    input  logic                     s3_axis_tvalid,
    input  logic                     s3_axis_tlast,
    output logic                     s3_axis_tready,

    // ------------------------------------------------------------------------
    // Master AXI-Stream Output
    // ------------------------------------------------------------------------
    output logic [DATA_WIDTH-1:0]    m_axis_tdata,
    output logic                     m_axis_tvalid,
    output logic                     m_axis_tlast,
    input  logic                     m_axis_tready
);

    typedef logic [$clog2(NUM_INTERFACES)-1:0] chan_idx_t;

    // ------------------------------------------------------------------------
    // 1. Array Packing
    // ------------------------------------------------------------------------
    logic [DATA_WIDTH-1:0] s_tdata  [4];
    logic [3:0]            s_tvalid;
    logic [3:0]            s_tlast;
    logic [3:0]            s_tready;

    assign s_tdata[0] = s0_axis_tdata;
    assign s_tdata[1] = s1_axis_tdata;
    assign s_tdata[2] = s2_axis_tdata;
    assign s_tdata[3] = s3_axis_tdata;

    assign s_tvalid = {s3_axis_tvalid, s2_axis_tvalid, s1_axis_tvalid, s0_axis_tvalid};
    assign s_tlast  = {s3_axis_tlast,  s2_axis_tlast,  s1_axis_tlast,  s0_axis_tlast};

    assign s0_axis_tready = s_tready[0];
    assign s1_axis_tready = s_tready[1];
    assign s2_axis_tready = s_tready[2];
    assign s3_axis_tready = s_tready[3];

    // ------------------------------------------------------------------------
    // 2. Instantiate Skid Buffer for Each Input Port
    // ------------------------------------------------------------------------
    logic [DATA_WIDTH-1:0] buf_tdata  [NUM_INTERFACES];
    logic [NUM_INTERFACES-1:0] buf_tlast;
    logic [NUM_INTERFACES-1:0] buf_tvalid;
    logic [NUM_INTERFACES-1:0] buf_tready;

    generate
        for (genvar i = 0; i < NUM_INTERFACES; i++) begin : g_skid_buffers
            axis_skid_buffer #(
                .DATA_WIDTH (DATA_WIDTH)
            ) u_skid_buffer (
                .aclk     (aclk),
                .aresetn  (aresetn),

                // Slave Interface
                .s_tdata  (s_tdata[i]),
                .s_tvalid (s_tvalid[i]),
                .s_tlast  (s_tlast[i]),
                .s_tready (s_tready[i]),

                // Master Interface (Connected to Arbiter Mux)
                .m_tdata  (buf_tdata[i]),
                .m_tvalid (buf_tvalid[i]),
                .m_tlast  (buf_tlast[i]),
                .m_tready (buf_tready[i])
            );
        end
    endgenerate

    // ------------------------------------------------------------------------
    // 3. Round-Robin Priority Selection
    // ------------------------------------------------------------------------
    chan_idx_t rr_ptr;
    chan_idx_t next_channel_choice;
    logic      next_channel_valid;

    always_comb begin
        next_channel_choice = '0;
        next_channel_valid  = 1'b0;

        for (int offset = 0; offset < NUM_INTERFACES; offset++) begin
            chan_idx_t ch;
            ch = chan_idx_t'((rr_ptr + offset) % NUM_INTERFACES);

            if (buf_tvalid[ch] && !next_channel_valid) begin
                next_channel_choice = ch;
                next_channel_valid  = 1'b1;
            end
        end
    end

    // ------------------------------------------------------------------------
    // 4. Arbiter Finite State Machine (FSM)
    // ------------------------------------------------------------------------
    typedef enum logic [1:0] {
        ST_IDLE    = 2'b00,
        ST_WRITING = 2'b01,
        ST_LAST    = 2'b10
    } arb_state_t;

    arb_state_t current_state, next_state;
    chan_idx_t  active_channel;

    always_comb begin
        next_state = current_state;

        case (current_state)
            ST_IDLE: begin
                if (next_channel_valid) begin
                    next_state = ST_WRITING;
                end
            end

            ST_WRITING: begin
                if (m_axis_tvalid && m_axis_tready && m_axis_tlast) begin
                    next_state = ST_LAST;
                end
            end

            ST_LAST: begin
                next_state = ST_IDLE;
            end

            default: next_state = ST_IDLE;
        endcase
    end

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            current_state  <= ST_IDLE;
            active_channel <= '0;
            rr_ptr         <= '0;
        end else begin
            current_state <= next_state;

            if (current_state == ST_IDLE && next_state == ST_WRITING) begin
                active_channel <= next_channel_choice;
                rr_ptr         <= chan_idx_t'((next_channel_choice + 1) % NUM_INTERFACES);
            end
        end
    end

    // ------------------------------------------------------------------------
    // 5. Output Multiplexing & Handshaking
    // ------------------------------------------------------------------------
    assign m_axis_tdata  = buf_tdata[active_channel];
    assign m_axis_tlast  = buf_tlast[active_channel];
    assign m_axis_tvalid = (current_state == ST_WRITING) && buf_tvalid[active_channel];

    // Read from skid buffer only when active channel completes a handshake
    always_comb begin
        buf_tready = '0;
        if (current_state == ST_WRITING && m_axis_tready) begin
            buf_tready[active_channel] = 1'b1;
        end
    end

endmodule


// ============================================================================
// Helper Sub-Module: AXI-Stream Skid Buffer (Register Slice)
// Description: 2-stage pipelined register buffer that breaks tready timing loops.
// ============================================================================
module axis_skid_buffer #(
    parameter int DATA_WIDTH = 32
)(
    input  logic                  aclk,
    input  logic                  aresetn,

    // Slave Port
    input  logic [DATA_WIDTH-1:0] s_tdata,
    input  logic                  s_tvalid,
    input  logic                  s_tlast,
    output logic                  s_tready,

    // Master Port
    output logic [DATA_WIDTH-1:0] m_tdata,
    output logic                  m_tvalid,
    output logic                  m_tlast,
    input  logic                  m_tready
);

    // Primary pipeline register
    logic [DATA_WIDTH-1:0] reg_tdata;
    logic                  reg_tlast;
    logic                  reg_tvalid;

    // Secondary ("skid") buffer register
    logic [DATA_WIDTH-1:0] skid_tdata;
    logic                  skid_tlast;
    logic                  skid_tvalid;

    // s_tready is high whenever the skid buffer isn't holding data
    assign s_tready = !skid_tvalid;

    // Output multiplexing: drive skid register if active, otherwise main register
    assign m_tdata  = skid_tvalid ? skid_tdata : reg_tdata;
    assign m_tlast  = skid_tvalid ? skid_tlast : reg_tlast;
    assign m_tvalid = skid_tvalid || reg_tvalid;

    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            reg_tdata   <= '0;
            reg_tlast   <= 1'b0;
            reg_tvalid  <= 1'b0;
            skid_tdata  <= '0;
            skid_tlast  <= 1'b0;
            skid_tvalid <= 1'b0;
        end else begin
            // 1. Skid Register Management
            if (s_tready && s_tvalid && m_tvalid && !m_tready) begin
                // Master downstream backed up; capture incoming word in skid buffer
                skid_tdata  <= s_tdata;
                skid_tlast  <= s_tlast;
                skid_tvalid <= 1'b1;
            end else if (m_tready) begin
                // Downstream read cleared; flush skid buffer
                skid_tvalid <= 1'b0;
            end

            // 2. Main Register Management
            if (s_tready) begin
                if (!m_tvalid || m_tready) begin
                    reg_tdata  <= s_tdata;
                    reg_tlast  <= s_tlast;
                    reg_tvalid <= s_tvalid;
                end
            end
        end
    end

endmodule
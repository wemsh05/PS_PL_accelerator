



//`timescale 1ns / 1ps

//module top_stream_acc #(
//    parameter int CLK_FREQ   = 100_000_000,
//    parameter int BAUD_RATE  = 115200,
//    parameter int DATA_WIDTH = 32
//) (
//    input  logic        sys_clk,      // 100 MHz AXI clock domain
//    input  logic        fast_clk,     // 200 MHz Math execution domain
//    input  logic        rst_n,
    
//    // AXI PS Control & Data Interface
//    input  logic [31:0] reg0_ctrl,    // Multiplier Scalar Y [15:0]
//    input  logic [31:0] reg1_data,    // Input Data X [31:0] from PS
//    input  logic        reg1_valid,   // Strobe signal when PS writes to REG1
//    output logic [31:0] status_out,   // Hardware FSM Status (0=IDLE, 1=PROC, 2=DONE)
//    output logic [31:0] result_out,   // Calculated MAC Result to PS

//    // ---------------------------------------------------------
//    // AXI4-Stream Slave Interface (DMA to Accelerator)
//    // ---------------------------------------------------------
//    input  logic [31:0] s_axis_tdata,
//    input  logic [3:0]  s_axis_tkeep,
//    input  logic        s_axis_tvalid,
//    output logic        s_axis_tready,
//    input  logic        s_axis_tlast,

//    // ---------------------------------------------------------
//    // AXI4-Stream Master Interface (Accelerator to DMA)
//    // ---------------------------------------------------------
//    output logic [31:0] m_axis_tdata,
//    output logic        m_axis_tvalid,
//    input  logic        m_axis_tready,
//    output logic        m_axis_tlast,

//    // Serial Hardware Pins (Unused/Idle in AXI mode)
//    input  logic        rxd,
//    output logic        txd,
//    output logic [1:0]  led_status
//);

//    // FSM State Encoding
//    typedef enum logic [1:0] { IDLE_ST = 2'b00, PROC_ST = 2'b01, DONE_ST = 2'b10 } status_t;
//    status_t curr_state;

//    logic [31:0] result_reg;
//    logic        tx_af_rd_en_reg;

//    assign result_out = result_reg;
//    assign status_out = {30'b0, curr_state};
//    assign led_status = curr_state;
//    assign txd        = 1'b1; // Idle high

//    // Default driver tie-offs for stream output ports
//    assign s_axis_tready = 1'b0;
//    assign m_axis_tdata  = 32'b0;
//    assign m_axis_tvalid = 1'b0;
//    assign m_axis_tlast  = 1'b0;

//    // CDC FIFO Signals
//    logic        rx_af_full, rx_af_empty;
//    logic [31:0] rx_af_out_data;
//    logic        rx_af_rd_en;

//    logic        tx_af_full, tx_af_empty;
//    logic [31:0] tx_af_out_data;
//    logic        tx_af_rd_en;

//    assign tx_af_rd_en = tx_af_rd_en_reg;

//    // -------------------------------------------------------------------------
//    // 1. CDC Bridge 1: Pass AXI input data safely (sys_clk -> fast_clk)
//    // -------------------------------------------------------------------------
//    async_fifo #(
//        .DATA_WIDTH(32),
//        .DEPTH(16)
//    ) rx_cdc_fifo (
//        .wr_clk(sys_clk),
//        .wr_rst_n(rst_n),
//        .wr_en(reg1_valid && !rx_af_full),
//        .wr_data(reg1_data),
//        .full(rx_af_full),

//        .rd_clk(fast_clk),
//        .rd_rst_n(rst_n),
//        .rd_en(rx_af_rd_en),
//        .rd_data(rx_af_out_data),
//        .empty(rx_af_empty)
//    );

//    // Controlled Single-Pulse Read for RX FIFO (fast_clk domain)
//    logic rx_af_rd_en_reg;
//    logic mac_in_valid_reg;

//    assign rx_af_rd_en = rx_af_rd_en_reg;

//    always_ff @(posedge fast_clk or negedge rst_n) begin
//        if (!rst_n) begin
//            rx_af_rd_en_reg  <= 1'b0;
//            mac_in_valid_reg <= 1'b0;
//        end else begin
//            rx_af_rd_en_reg  <= 1'b0;
//            mac_in_valid_reg <= 1'b0;

//            if (!rx_af_empty && !rx_af_rd_en_reg && !mac_in_valid_reg) begin
//                rx_af_rd_en_reg  <= 1'b1; // Pop 1 item from FIFO
//                mac_in_valid_reg <= 1'b1; // Trigger MAC core
//            end
//        end
//    end

//    // -------------------------------------------------------------------------
//    // 2. Mathematical Accelerator Core (fast_clk domain)
//    // -------------------------------------------------------------------------
//    logic [35:0] mac_result;
//    logic        mac_out_valid;
//    logic [15:0] mac_x, mac_y;

//    assign mac_x = rx_af_out_data[15:0];
//    assign mac_y = reg0_ctrl[15:0];

//    pipelined_mac #(
//        .input_reg_width(16)
//    ) u_mac (
//        .clk(fast_clk),
//        .rst(rst_n),             // Active-LOW reset passed directly
//        .in_valid(mac_in_valid_reg),
//        .in_clr(1'b0),
//        .x_input_reg(mac_x),
//        .y_input_reg(mac_y),
//        .result_reg(mac_result),
//        .out_valid(mac_out_valid)
//    );

//    // -------------------------------------------------------------------------
//    // 3. CDC Bridge 2: Pass result back safely (fast_clk -> sys_clk)
//    // -------------------------------------------------------------------------
//    async_fifo #(
//        .DATA_WIDTH(32),
//        .DEPTH(16)
//    ) tx_cdc_fifo (
//        .wr_clk(fast_clk),
//        .wr_rst_n(rst_n),
//        .wr_en(mac_out_valid && !tx_af_full),
//        .wr_data(mac_result[31:0]),
//        .full(tx_af_full),

//        .rd_clk(sys_clk),
//        .rd_rst_n(rst_n),
//        .rd_en(tx_af_rd_en),
//        .rd_data(tx_af_out_data),
//        .empty(tx_af_empty)
//    );

//    // -------------------------------------------------------------------------
//    // 4. Hardware FSM State Management (sys_clk domain)
//    // -------------------------------------------------------------------------
//    always_ff @(posedge sys_clk or negedge rst_n) begin
//        if (!rst_n) begin
//            curr_state      <= IDLE_ST;
//            result_reg      <= 32'b0;
//            tx_af_rd_en_reg <= 1'b0;
//        end else begin
//            tx_af_rd_en_reg <= 1'b0; // Default pulse off

//            case (curr_state)
//                IDLE_ST: begin
//                    if (reg1_valid) begin
//                        curr_state <= PROC_ST;
//                    end
//                end

//                PROC_ST: begin
//                    if (!tx_af_empty) begin
//                        tx_af_rd_en_reg <= 1'b1;            // Pop result safely
//                        result_reg      <= tx_af_out_data;  // Capture output
//                        curr_state      <= DONE_ST;
//                    end
//                end

//                DONE_ST: begin
//                    if (reg1_valid) begin
//                        curr_state <= PROC_ST;
//                    end
//                end

//                default: curr_state <= IDLE_ST;
//            endcase
//        end
//    end

//endmodule






`timescale 1ns / 1ps

module top_stream_acc #(
    parameter int CLK_FREQ   = 100_000_000,
    parameter int BAUD_RATE  = 115200,
    parameter int DATA_WIDTH = 32
) (
    input  logic        sys_clk,      // 100 MHz AXI clock domain
    input  logic        fast_clk,     // 200 MHz Math execution domain
    input  logic        rst_n,
    
    // AXI PS Control & Data Interface
    input  logic [31:0] reg0_ctrl,    // Multiplier Scalar Y [15:0]
    input  logic [31:0] reg1_data,    // Input Data X [31:0] from PS
    input  logic        reg1_valid,   // Strobe signal when PS writes to REG1
    output logic [31:0] status_out,   // Hardware FSM Status (0=IDLE, 1=PROC, 2=DONE)
    output logic [31:0] result_out,   // Calculated MAC Result to PS

    // ---------------------------------------------------------
    // AXI4-Stream Slave Interface (DMA to Accelerator)
    // ---------------------------------------------------------
    input  logic [31:0] s_axis_tdata,
    input  logic [3:0]  s_axis_tkeep,
    input  logic        s_axis_tvalid,
    output logic        s_axis_tready,
    input  logic        s_axis_tlast,

    // ---------------------------------------------------------
    // AXI4-Stream Master Interface (Accelerator to DMA)
    // ---------------------------------------------------------
    output logic [31:0] m_axis_tdata,
    output logic        m_axis_tvalid,
    input  logic        m_axis_tready,
    output logic        m_axis_tlast,

    // Serial Hardware Pins (Unused/Idle in AXI mode)
    input  logic        rxd,
    output logic        txd,
    output logic [1:0]  led_status
);

    // FSM State Encoding for AXI-Lite MMIO mode
    typedef enum logic [1:0] { IDLE_ST = 2'b00, PROC_ST = 2'b01, DONE_ST = 2'b10 } status_t;
    status_t curr_state;

    logic [31:0] result_reg;
    logic        tx_af_rd_en_reg;

    assign result_out = result_reg;
    assign status_out = {30'b0, curr_state};
    assign led_status = curr_state;
    assign txd        = 1'b1; // Idle high

    // CDC FIFO Signals (Widened to 34 bits to carry: [33] is_stream, [32] tlast, [31:0] data)
    logic        rx_af_full, rx_af_empty;
    logic [33:0] rx_af_in_data;
    logic [33:0] rx_af_out_data;
    logic        rx_af_wr_en;
    logic        rx_af_rd_en;

    logic        tx_af_full, tx_af_empty;
    logic [33:0] tx_af_in_data;
    logic [33:0] tx_af_out_data;
    logic        tx_af_rd_en;

    // -------------------------------------------------------------------------
    // Input Arbitration: Multiplex AXI-Stream and AXI-Lite MMIO into RX FIFO
    // -------------------------------------------------------------------------
    assign s_axis_tready = !rx_af_full;

    always_comb begin
        if (s_axis_tvalid && !rx_af_full) begin
            rx_af_wr_en   = 1'b1;
            // is_stream = 1, tlast = s_axis_tlast, data = s_axis_tdata
            rx_af_in_data = {1'b1, s_axis_tlast, s_axis_tdata}; 
        end else if (reg1_valid && !rx_af_full) begin
            rx_af_wr_en   = 1'b1;
            // is_stream = 0, tlast = 0, data = reg1_data
            rx_af_in_data = {1'b0, 1'b0, reg1_data};
        end else begin
            rx_af_wr_en   = 1'b0;
            rx_af_in_data = 34'b0;
        end
    end

    // -------------------------------------------------------------------------
    // 1. CDC Bridge 1: Pass input data safely (sys_clk -> fast_clk)
    // -------------------------------------------------------------------------
    async_fifo #(
        .DATA_WIDTH(34),
        .DEPTH(16)
    ) rx_cdc_fifo (
        .wr_clk(sys_clk),
        .wr_rst_n(rst_n),
        .wr_en(rx_af_wr_en),
        .wr_data(rx_af_in_data),
        .full(rx_af_full),

        .rd_clk(fast_clk),
        .rd_rst_n(rst_n),
        .rd_en(rx_af_rd_en),
        .rd_data(rx_af_out_data),
        .empty(rx_af_empty)
    );

    // Controlled Single-Pulse Read for RX FIFO (fast_clk domain)
    logic rx_af_rd_en_reg;
    logic mac_in_valid_reg;

    assign rx_af_rd_en = rx_af_rd_en_reg;

    always_ff @(posedge fast_clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_af_rd_en_reg  <= 1'b0;
            mac_in_valid_reg <= 1'b0;
        end else begin
            rx_af_rd_en_reg  <= 1'b0;
            mac_in_valid_reg <= 1'b0;

            // FIX 1: Check !tx_af_full before popping to prevent data drops & overruns
            if (!rx_af_empty && !rx_af_rd_en_reg && !mac_in_valid_reg && !tx_af_full) begin
                rx_af_rd_en_reg  <= 1'b1; // Pop 1 item from FIFO
                mac_in_valid_reg <= 1'b1; // Trigger MAC core
            end
        end
    end

    // -------------------------------------------------------------------------
    // Metadata Tracking Queue: Track TLAST and is_stream through MAC pipeline
    // -------------------------------------------------------------------------
    logic [3:0] track_wr_ptr, track_rd_ptr;
    logic [1:0] track_mem [0:15]; // stores {is_stream, tlast}
    
    always_ff @(posedge fast_clk or negedge rst_n) begin
        if (!rst_n) begin
            track_wr_ptr <= 0;
            track_rd_ptr <= 0;
        end else begin
            if (mac_in_valid_reg) begin
                track_mem[track_wr_ptr] <= rx_af_out_data[33:32];
                track_wr_ptr <= track_wr_ptr + 1;
            end
            
            // FIX 2: Unconditionally advance track_rd_ptr when MAC produces valid data.
            // This guarantees the metadata stays perfectly in sync with the pipeline,
            // preventing the AXI-Lite MMIO deadlock!
            if (mac_out_valid) begin 
                track_rd_ptr <= track_rd_ptr + 1;
            end
        end
    end

    // -------------------------------------------------------------------------
    // 2. Mathematical Accelerator Core (fast_clk domain)
    // -------------------------------------------------------------------------
    logic [35:0] mac_result;
    logic        mac_out_valid;
    logic [15:0] mac_x, mac_y;

    assign mac_x = rx_af_out_data[15:0];
    assign mac_y = reg0_ctrl[15:0];

    pipelined_mac #(
        .input_reg_width(16)
    ) u_mac (
        .clk(fast_clk),
        .rst(rst_n),             
        .in_valid(mac_in_valid_reg),
//        .in_clr(1'b0),
        .in_clr(reg0_ctrl[31]), // Changed from 1'b0 to bit 31 of reg0_ctrl
        .x_input_reg(mac_x),
        .y_input_reg(mac_y),
        .result_reg(mac_result),
        .out_valid(mac_out_valid)
    );

    // Assemble TX Data with corresponding TLAST and is_stream tracking flags
    assign tx_af_in_data = {track_mem[track_rd_ptr], mac_result[31:0]};

    // -------------------------------------------------------------------------
    // 3. CDC Bridge 2: Pass result back safely (fast_clk -> sys_clk)
    // -------------------------------------------------------------------------
    async_fifo #(
        .DATA_WIDTH(34),
        .DEPTH(16)
    ) tx_cdc_fifo (
        .wr_clk(fast_clk),
        .wr_rst_n(rst_n),
        .wr_en(mac_out_valid && !tx_af_full), // Data dropped if full, but metadata stays synced!
        .wr_data(tx_af_in_data),
        .full(tx_af_full),

        .rd_clk(sys_clk),
        .rd_rst_n(rst_n),
        .rd_en(tx_af_rd_en),
        .rd_data(tx_af_out_data),
        .empty(tx_af_empty)
    );

    // -------------------------------------------------------------------------
    // Output Arbitration: Separate AXI-Stream vs AXI-Lite MMIO responses
    // -------------------------------------------------------------------------
    logic        out_is_stream;
    logic        out_tlast;
    logic [31:0] out_data;

    assign {out_is_stream, out_tlast, out_data} = tx_af_out_data;

    // Drive AXI-Stream Master Ports
    assign m_axis_tvalid = (!tx_af_empty && out_is_stream);
    assign m_axis_tdata  = out_data;
    assign m_axis_tlast  = out_tlast;

    // TX FIFO Pop Control: Pop if AXI-Stream handshakes, OR if FSM is popping
    assign tx_af_rd_en = (m_axis_tvalid && m_axis_tready) || tx_af_rd_en_reg;

    // -------------------------------------------------------------------------
    // 4. Hardware FSM State Management (sys_clk domain)
    // -------------------------------------------------------------------------
    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            curr_state      <= IDLE_ST;
            result_reg      <= 32'b0;
            tx_af_rd_en_reg <= 1'b0;
        end else begin
            tx_af_rd_en_reg <= 1'b0; // Default pulse off

            case (curr_state)
                IDLE_ST: begin
                    if (reg1_valid) begin
                        curr_state <= PROC_ST;
                    end
                end

                PROC_ST: begin
                    // Only process AXI-Lite MMIO responses here
                    if (!tx_af_empty && !out_is_stream) begin
                        tx_af_rd_en_reg <= 1'b1;            
                        result_reg      <= out_data;        
                        curr_state      <= DONE_ST;
                    end
                end

                DONE_ST: begin
                    if (reg1_valid) begin
                        curr_state <= PROC_ST;
                    end
                end

                default: curr_state <= IDLE_ST;
            endcase
        end
    end

endmodule
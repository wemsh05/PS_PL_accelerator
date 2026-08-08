//`timescale 1ns / 1ps

//module axi4_lite_slave #(
//    parameter int DATA_WIDTH = 32,
//    parameter int ADDR_WIDTH = 4   // 4 bits allows addressing up to 4 words (0x0, 0x4, 0x8, 0xC)
//)(
//    // Global Clock and Reset
//    input  logic                    aclk,
//    input  logic                    aresetn,

//    // Write Address Channel
//    input  logic [ADDR_WIDTH-1:0]   awaddr,
//    input  logic                    awvalid,
//    output logic                    awready,

//    // Write Data Channel
//    input  logic [DATA_WIDTH-1:0]   wdata,
//    input  logic [(DATA_WIDTH/8)-1:0] wstrb, // Byte strobes
//    input  logic                    wvalid,
//    output logic                    wready,

//    // Write Response Channel
//    output logic [1:0]              bresp,
//    output logic                    bvalid,
//    input  logic                    bready,

//    // Read Address Channel
//    input  logic [ADDR_WIDTH-1:0]   araddr,
//    input  logic                    arvalid,
//    output logic                    arready,

//    // Read Data Channel
//    output logic [DATA_WIDTH-1:0]   rdata,
//    output logic [1:0]              rresp,
//    output logic                    rvalid,
//    input  logic                    rready,

//    // Register Interface to Accelerator / PL Logic
//    output logic [DATA_WIDTH-1:0]   reg0_out, // PS -> PL (Control / Data A)
//    output logic [DATA_WIDTH-1:0]   reg1_out, // PS -> PL (Config / Data B)
//    input  logic [DATA_WIDTH-1:0]   reg2_in,  // PL -> PS (Accelerator Status / Low Result)
//    input  logic [DATA_WIDTH-1:0]   reg3_in   // PL -> PS (Accelerator Output / High Result)
//);

//    // Strongly typed enum for AXI response statuses
//    typedef enum logic [1:0] {
//        AXI_RESP_OKAY   = 2'b00,
//        AXI_RESP_EXOKAY = 2'b01,
//        AXI_RESP_SLVERR = 2'b10,
//        AXI_RESP_DECERR = 2'b11
//    } axi_resp_t;

//    // Internal storage registers for PS writes
//    logic [DATA_WIDTH-1:0] reg0;
//    logic [DATA_WIDTH-1:0] reg1;

//    assign reg0_out = reg0;
//    assign reg1_out = reg1;

//    // Local address latch
//    logic [ADDR_WIDTH-1:0] axi_awaddr;
//    logic [ADDR_WIDTH-1:0] axi_araddr;

//    //----------------------------------------------------
//    // 1. Write Address, Data, & Register Write Logic
//    //----------------------------------------------------
//    always_ff @(posedge aclk or negedge aresetn) begin
//        if (!aresetn) begin
//            awready    <= 1'b0;
//            wready     <= 1'b0;
//            axi_awaddr <= '0;
//            reg0       <= '0;
//            reg1       <= '0;
//        end else begin
//            if (!awready && awvalid && wvalid) begin
//                awready    <= 1'b1;
//                wready     <= 1'b1;
//                axi_awaddr <= awaddr;

//                // Decode address bits [3:2] for writable registers (reg0 and reg1)
//                case (awaddr[3:2])
//                    2'b00: begin
//                        for (int i = 0; i < DATA_WIDTH/8; i++) begin
//                            if (wstrb[i]) reg0[(i*8) +: 8] <= wdata[(i*8) +: 8];
//                        end
//                    end
//                    2'b01: begin
//                        for (int i = 0; i < DATA_WIDTH/8; i++) begin
//                            if (wstrb[i]) reg1[(i*8) +: 8] <= wdata[(i*8) +: 8];
//                        end
//                    end
//                    // reg2 and reg3 are driven by accelerator hardware (read-only for PS)
//                    default: ; 
//                endcase
//            end else begin
//                awready <= 1'b0;
//                awready <= 1'b0;
//                wready  <= 1'b0;
//            end
//        end
//    end

//    //----------------------------------------------------
//    // 2. Write Response Channel Logic
//    //----------------------------------------------------
//    always_ff @(posedge aclk or negedge aresetn) begin
//        if (!aresetn) begin
//            bvalid <= 1'b0;
//            bresp  <= AXI_RESP_OKAY;
//        end else begin
//            if (awready && awvalid && wready && wvalid && !bvalid) begin
//                bvalid <= 1'b1;
//                bresp  <= AXI_RESP_OKAY;
//            end else if (bready && bvalid) begin
//                bvalid <= 1'b0;
//            end
//        end
//    end

//    //----------------------------------------------------
//    // 3. Read Address Handshake Logic
//    //----------------------------------------------------
//    always_ff @(posedge aclk or negedge aresetn) begin
//        if (!aresetn) begin
//            arready    <= 1'b0;
//            axi_araddr <= '0;
//        end else begin
//            if (!arready && arvalid) begin
//                arready    <= 1'b1;
//                axi_araddr <= araddr;
//            end else begin
//                arready    <= 1'b0;
//            end
//        end
//    end

//    //----------------------------------------------------
//    // 4. Read Data Pipeline & Handshake Logic
//    //----------------------------------------------------
//    always_ff @(posedge aclk or negedge aresetn) begin
//        if (!aresetn) begin
//            rvalid <= 1'b0;
//            rresp  <= AXI_RESP_OKAY;
//            rdata  <= '0;
//        end else begin
//            if (arready && arvalid && !rvalid) begin
//                rvalid <= 1'b1;
//                rresp  <= AXI_RESP_OKAY;
                
//                case (araddr[3:2])
//                    2'b00: rdata <= reg0;    // Reads back written reg0
//                    2'b01: rdata <= reg1;    // Reads back written reg1
//                    2'b10: rdata <= reg2_in; // Live output from accelerator
//                    2'b11: rdata <= reg3_in; // Live output from accelerator
//                    default: begin
//                        rdata <= 32'hDEADBEEF;
//                        rresp <= AXI_RESP_DECERR;
//                    end
//                endcase
//            end else if (rvalid && rready) begin
//                rvalid <= 1'b0;
//            end
//        end
//    end

//endmodule


`timescale 1ns / 1ps

module axi4_lite_slave #(
    parameter int DATA_WIDTH = 32,
    parameter int ADDR_WIDTH = 4   // 4 bits allows addressing up to 4 words (0x0, 0x4, 0x8, 0xC)
)(
    // Global Clock and Reset
    input  logic                    aclk,
    input  logic                    aresetn,

    // Write Address Channel
    input  logic [ADDR_WIDTH-1:0]   awaddr,
    input  logic                    awvalid,
    output logic                    awready,

    // Write Data Channel
    input  logic [DATA_WIDTH-1:0]   wdata,
    input  logic [(DATA_WIDTH/8)-1:0] wstrb, // Byte strobes
    input  logic                    wvalid,
    output logic                    wready,

    // Write Response Channel
    output logic [1:0]              bresp,
    output logic                    bvalid,
    input  logic                    bready,

    // Read Address Channel
    input  logic [ADDR_WIDTH-1:0]   araddr,
    input  logic                    arvalid,
    output logic                    arready,

    // Read Data Channel
    output logic [DATA_WIDTH-1:0]   rdata,
    output logic [1:0]              rresp,
    output logic                    rvalid,
    input  logic                    rready,

    // Register Interface to Accelerator / PL Logic
    output logic [DATA_WIDTH-1:0]   reg0_out,      // PS -> PL (Control / Scalar Y)
    output logic [DATA_WIDTH-1:0]   reg1_out,      // PS -> PL (Data X)
    output logic                    reg1_wr_pulse, // NEW: Exactly 1-cycle pulse on reg1 write
    input  logic [DATA_WIDTH-1:0]   reg2_in,       // PL -> PS (Accelerator Status)
    input  logic [DATA_WIDTH-1:0]   reg3_in        // PL -> PS (Accumulator Output Result)
);

    // Strongly typed enum for AXI response statuses
    typedef enum logic [1:0] {
        AXI_RESP_OKAY   = 2'b00,
        AXI_RESP_EXOKAY = 2'b01,
        AXI_RESP_SLVERR = 2'b10,
        AXI_RESP_DECERR = 2'b11
    } axi_resp_t;

    // Internal storage registers for PS writes
    logic [DATA_WIDTH-1:0] reg0;
    logic [DATA_WIDTH-1:0] reg1;

    assign reg0_out = reg0;
    assign reg1_out = reg1;

    // Local address latch
    logic [ADDR_WIDTH-1:0] axi_awaddr;
    logic [ADDR_WIDTH-1:0] axi_araddr;

    //----------------------------------------------------
    // 1. Write Address, Data, & Register Write Logic
    //----------------------------------------------------
    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            awready       <= 1'b0;
            wready        <= 1'b0;
            axi_awaddr    <= '0;
            reg0          <= '0;
            reg1          <= '0;
            reg1_wr_pulse <= 1'b0;
        end else begin
            // Default pulse to 0 every clock cycle
            reg1_wr_pulse <= 1'b0;

            if (!awready && awvalid && wvalid) begin
                awready    <= 1'b1;
                wready     <= 1'b1;
                axi_awaddr <= awaddr;

                // Decode address bits [3:2] for writable registers (reg0 and reg1)
                case (awaddr[3:2])
                    2'b00: begin // reg0 (Scalar Y)
                        for (int i = 0; i < DATA_WIDTH/8; i++) begin
                            if (wstrb[i]) reg0[(i*8) +: 8] <= wdata[(i*8) +: 8];
                        end
                    end
                    2'b01: begin // reg1 (Input Data X)
                        for (int i = 0; i < DATA_WIDTH/8; i++) begin
                            if (wstrb[i]) reg1[(i*8) +: 8] <= wdata[(i*8) +: 8];
                        end
                        // Fire a single 1-clock-cycle write pulse
                        reg1_wr_pulse <= 1'b1;
                    end
                    default: ; 
                endcase
            end else begin
                awready <= 1'b0;
                wready  <= 1'b0;
                wready  <= 1'b0;
            end
        end
    end

    //----------------------------------------------------
    // 2. Write Response Channel Logic
    //----------------------------------------------------
    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            bvalid <= 1'b0;
            bresp  <= AXI_RESP_OKAY;
        end else begin
            if (awready && awvalid && wready && wvalid && !bvalid) begin
                bvalid <= 1'b1;
                bresp  <= AXI_RESP_OKAY;
            end else if (bready && bvalid) begin
                bvalid <= 1'b0;
            end
        end
    end

    //----------------------------------------------------
    // 3. Read Address Handshake Logic
    //----------------------------------------------------
    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            arready    <= 1'b0;
            axi_araddr <= '0;
        end else begin
            if (!arready && arvalid) begin
                arready    <= 1'b1;
                axi_araddr <= araddr;
            end else begin
                arready    <= 1'b0;
            end
        end
    end

    //----------------------------------------------------
    // 4. Read Data Pipeline & Handshake Logic
    //----------------------------------------------------
    always_ff @(posedge aclk or negedge aresetn) begin
        if (!aresetn) begin
            rvalid <= 1'b0;
            rresp  <= AXI_RESP_OKAY;
            rdata  <= '0;
        end else begin
            if (arready && arvalid && !rvalid) begin
                rvalid <= 1'b1;
                rresp  <= AXI_RESP_OKAY;
                
                case (araddr[3:2])
                    2'b00: rdata <= reg0;    // Multiplier Y
                    2'b01: rdata <= reg1;    // Input Data X
                    2'b10: rdata <= reg2_in; // Live Status
                    2'b11: rdata <= reg3_in; // Live Output Result
                    default: begin
                        rdata <= 32'hDEADBEEF;
                        rresp <= AXI_RESP_DECERR;
                    end
                endcase
            end else if (rvalid && rready) begin
                rvalid <= 1'b0;
            end
        end
    end

endmodule
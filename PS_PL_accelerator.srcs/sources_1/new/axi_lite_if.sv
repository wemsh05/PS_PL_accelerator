interface axi_lite_if #(
    parameter int DATA_WIDTH = 32,
    parameter int ADDR_WIDTH = 4
)(
    input logic aclk,
    input logic aresetn
);
    // Write Address Channel
    logic [ADDR_WIDTH-1:0]   awaddr;
    logic                    awvalid;
    logic                    awready;

    // Write Data Channel
    logic [DATA_WIDTH-1:0]   wdata;
    logic [(DATA_WIDTH/8)-1:0] wstrb;
    logic                    wvalid;
    logic                    wready;

    // Write Response Channel
    logic [1:0]              bresp;
    logic                    bvalid;
    logic                    bready;

    // Read Address Channel
    logic [ADDR_WIDTH-1:0]   araddr;
    logic                    arvalid;
    logic                    arready;

    // Read Data Channel
    logic [DATA_WIDTH-1:0]   rdata;
    logic [1:0]              rresp;
    logic                    rvalid;
    logic                    rready;

    // Master Modport for Testbench / Host CPU driver
    modport Master (
        input  aclk, aresetn, awready, wready, bresp, bvalid, arready, rdata, rresp, rvalid,
        output awaddr, awvalid, wdata, wstrb, wvalid, bready, araddr, arvalid, rready
    );

    // Slave Modport for DUT
    modport Slave (
        input  aclk, aresetn, awaddr, awvalid, wdata, wstrb, wvalid, bready, araddr, arvalid, rready,
        output awready, wready, bresp, bvalid, arready, rdata, rresp, rvalid
    );
endinterface
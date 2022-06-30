
`timescale 1 ns / 1 ps

module FFT_IP_v1_0_S_AXI #(parameter integer WL = 16,
                           parameter integer C_S_AXI_DATA_WIDTH	 = 32,
                           parameter integer C_S_AXI_ADDR_WIDTH	 = 7)
                          (input wire S_AXI_ACLK,
                           input wire S_AXI_ARESETN,
                           input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
                           input wire [2 : 0] S_AXI_AWPROT,
                           input wire S_AXI_AWVALID,
                           output wire S_AXI_AWREADY,
                           input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
                           input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB, 
						   input wire S_AXI_WVALID, 
						   output wire S_AXI_WREADY, 
						   output wire [1 : 0] S_AXI_BRESP, 
						   output wire S_AXI_BVALID, 
						   input wire S_AXI_BREADY, 
						   input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR, 
						   input wire [2 : 0] S_AXI_ARPROT, 
						   input wire S_AXI_ARVALID, 
						   output wire S_AXI_ARREADY, 
						   output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA, 
						   output wire [1 : 0] S_AXI_RRESP, 
						   output wire S_AXI_RVALID, 
						   input wire S_AXI_RREADY);
    
    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
    reg  							axi_awready;
    reg								axi_wready;
    reg [1 : 0] 					axi_bresp;
    reg  							axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
    reg  							axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
    reg [1 : 0] 					axi_rresp;
    reg  							axi_rvalid;
    
    // Example-specific design signals
    // local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    // ADDR_LSB is used for addressing 32/64 bit registers/memories
    // ADDR_LSB = 2 for 32 bits (n downto 2)
    // ADDR_LSB = 3 for 64 bits (n downto 3)
    localparam integer ADDR_LSB          = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 4;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers 18
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg10;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg11;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg12;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg13;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg14;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg15;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg16;
    reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg17;
wire	 							slv_reg_rden;
    wire	 						slv_reg_wren;
    reg [C_S_AXI_DATA_WIDTH-1:0]	reg_data_out;
    integer	 						byte_index;
    reg	 							aw_en;
    
    // I/O Connections assignments
    
    assign S_AXI_AWREADY	= axi_awready;
    assign S_AXI_WREADY		= axi_wready;
    assign S_AXI_BRESP	   	= axi_bresp;
    assign S_AXI_BVALID	  	= axi_bvalid;
    assign S_AXI_ARREADY	= axi_arready;
    assign S_AXI_RDATA	   	= axi_rdata;
    assign S_AXI_RRESP	   	= axi_rresp;
    assign S_AXI_RVALID	  	= axi_rvalid;
    // Implement axi_awready generation
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is low.
    
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_awready <= 1'b0;
            aw_en       <= 1'b1;
        end
        else
        begin
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
            begin
                // slave is ready to accept write address when
                // there is a valid write address and write data
                // on the write address and data bus. This design
                // expects no outstanding transactions.
                axi_awready <= 1'b1;
                aw_en       <= 1'b0;
            end
            else if (S_AXI_BREADY && axi_bvalid)
            begin
                aw_en       <= 1'b1;
                axi_awready <= 1'b0;
            end
            else
            begin
                axi_awready <= 1'b0;
            end
        end
    end
    
    // Implement axi_awaddr latching
    // This process is used to latch the address when both
    // S_AXI_AWVALID and S_AXI_WVALID are valid.
    
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_awaddr <= 0;
        end
        else
        begin
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
            begin
                // Write Address latching
                axi_awaddr <= S_AXI_AWADDR;
            end
        end
    end
    
    // Implement axi_wready generation
    // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
    // de-asserted when reset is low.
    
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_wready <= 1'b0;
        end
        else
        begin
            if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en)
            begin
                // slave is ready to accept write data when
                // there is a valid write address and write data
                // on the write address and data bus. This design
                // expects no outstanding transactions.
                axi_wready <= 1'b1;
            end
            else
            begin
                axi_wready <= 1'b0;
            end
        end
    end
    
    // Implement memory mapped register select and write logic generation
    // The write data is accepted and written to memory mapped registers when
    // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    // select byte enables of slave registers while writing.
    // These registers are cleared when reset (active low) is applied.
    // Slave register write enable is asserted when valid address and data are available
    // and the slave is ready to accept the write address and write data.
    assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
    /*
     always @(posedge S_AXI_ACLK)
     begin
     if (S_AXI_ARESETN == 1'b0)
     begin
     slv_reg0  <= 0;
     slv_reg1  <= 0;
     slv_reg2  <= 0;
     slv_reg3  <= 0;
     slv_reg4  <= 0;
     slv_reg5  <= 0;
     slv_reg6  <= 0;
     slv_reg7  <= 0;
     slv_reg8  <= 0;
     slv_reg9  <= 0;
     slv_reg10 <= 0;
     slv_reg11 <= 0;
     slv_reg12 <= 0;
     slv_reg13 <= 0;
     slv_reg14 <= 0;
     slv_reg15 <= 0;
     slv_reg16 <= 0;
     slv_reg17 <= 0;
     end
     else begin
     if (slv_reg_wren)
     begin
     case (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
     5'h00:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 0
     slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h01:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 1
     slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h02:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 2
     slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h03:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 3
     slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h04:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 4
     slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h05:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 5
     slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h06:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 6
     slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h07:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 7
     slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h08:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 8
     slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h09:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 9
     slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h0A:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 10
     slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h0B:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 11
     slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h0C:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 12
     slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h0D:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 13
     slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h0E:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 14
     slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h0F:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 15
     slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h10:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 16
     slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     5'h11:
     for (byte_index = 0; byte_index < = (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
     if (S_AXI_WSTRB[byte_index] == 1) begin
     // Respective byte enables are asserted as per write strobes
     // Slave register 17
     slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
     end
     default : begin
     slv_reg0  <= slv_reg0;
     slv_reg1  <= slv_reg1;
     slv_reg2  <= slv_reg2;
     slv_reg3  <= slv_reg3;
     slv_reg4  <= slv_reg4;
     slv_reg5  <= slv_reg5;
     slv_reg6  <= slv_reg6;
     slv_reg7  <= slv_reg7;
     slv_reg8  <= slv_reg8;
     slv_reg9  <= slv_reg9;
     slv_reg10 <= slv_reg10;
     slv_reg11 <= slv_reg11;
     slv_reg12 <= slv_reg12;
     slv_reg13 <= slv_reg13;
     slv_reg14 <= slv_reg14;
     slv_reg15 <= slv_reg15;
     slv_reg16 <= slv_reg16;
     slv_reg17 <= slv_reg17;
     end
     endcase
     end
     end
     end
     */
    
    wire            FFT_oEN;
    wire    [3:0]   FFT_oCNT;
    wire            IP_DONE;
    wire    [15:0]  oDATA_re;
    wire    [15:0]  oDATA_im;
    
    COUNTER_VER3#(
    .WL(4),
    .IV(0),
    .LSB(0),
    .ECV(15)
    )U_COUNTER_RESULT_FFT(
    .iCLK(S_AXI_ACLK),
    .iRSTn(S_AXI_ARESETN),
    .iEN(FFT_oEN),
    .iCLR(1'b0),
    .oCNT(FFT_oCNT)
    );
    
    assign IP_DONE = (FFT_oCNT == 4'd15) ? 1'b1 : 1'b0;
    
    //  Register 0
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg0 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h0)
        begin
            slv_reg0 <= S_AXI_WDATA;
        end
        else
        begin
            slv_reg0 <= slv_reg0;
        end
    end
    //  Register 1
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg1 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h1)
        begin
            slv_reg1 <= S_AXI_WDATA;
        end
		else if (IP_DONE == 1'b1)
		begin
            slv_reg1[0] <= 1'b1;
		end
        else
        begin
            slv_reg1 <= slv_reg1;
        end
    end
    //  Register 2
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg2 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h2)
        begin
            slv_reg2 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd0))
		begin
            slv_reg2 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg2 <= slv_reg2;
        end
    end
    //  Register 3
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg3 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h3)
        begin
            slv_reg3 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd1))
		begin
            slv_reg3 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg3 <= slv_reg3;
        end
    end
    //  Register 4
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg4 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h4)
        begin
            slv_reg4 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd2))
		begin
            slv_reg4 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg4 <= slv_reg4;
        end
    end
    //  Register 5
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg5 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h5)
        begin
            slv_reg5 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd3))
		begin
            slv_reg5 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg5 <= slv_reg5;
        end
    end
    //  Register 6
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg6 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h6)
        begin
            slv_reg6 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd4))
		begin
            slv_reg6 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg6 <= slv_reg6;
        end
    end
    //  Register 7
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg7 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h7)
        begin
            slv_reg7 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd5))
		begin
            slv_reg7 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg7 <= slv_reg7;
        end
    end
    //  Register 8
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg8 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h8)
        begin
            slv_reg8 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd6))
		begin
            slv_reg8 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg8 <= slv_reg8;
        end
    end
    //  Register 9
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg9 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h9)
        begin
            slv_reg9 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd7))
		begin
            slv_reg9 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg9 <= slv_reg9;
        end
    end
    //  Register 10
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg10 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'ha)
        begin
            slv_reg10 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd8))
		begin
            slv_reg10 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg10 <= slv_reg10;
        end
    end
    //  Register 11
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg11 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'hb)
        begin
            slv_reg11 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd9))
		begin
            slv_reg11 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg11 <= slv_reg11;
        end
    end
    //  Register 12
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg12 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'hc)
        begin
            slv_reg12 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd10))
		begin
            slv_reg12 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg12 <= slv_reg12;
        end
    end
    //  Register 13
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg13 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'hd)
        begin
            slv_reg13 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd11))
		begin
            slv_reg13 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg13 <= slv_reg13;
        end
    end
    //  Register 14
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg14 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'he)
        begin
            slv_reg14 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd12))
		begin
            slv_reg14 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg14 <= slv_reg14;
        end
    end
    //  Register 15
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg15 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'hf)
        begin
            slv_reg15 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd13))
		begin
            slv_reg15 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg15 <= slv_reg15;
        end
    end
    //  Register 16
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg16 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h10)
        begin
            slv_reg16 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd14))
		begin
            slv_reg16 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg16 <= slv_reg16;
        end
    end
    //  Register 17
    always@(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            slv_reg17 <= 32'd0;
        end
        else if (slv_reg_wren == 1 && axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 4'h11)
        begin
            slv_reg17 <= S_AXI_WDATA;
        end
		else if ((FFT_oEN == 1'b1) && (FFT_oCNT == 4'd15))
		begin
            slv_reg17 <= {oDATA_re, oDATA_im};
		end
        else
        begin
            slv_reg17 <= slv_reg17;
        end
    end
    
    
    
    
    // Implement write response logic generation
    // The write response and response valid signals are asserted by the slave
    // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
    // This marks the acceptance of address and indicates the status of
    // write transaction.
    
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_bvalid <= 0;
            axi_bresp  <= 2'b0;
        end
        else
        begin
            if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
            begin
                // indicates a valid write response is available
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0; // 'OKAY' response
            end                   // work error responses in future
            else
            begin
                if (S_AXI_BREADY && axi_bvalid)
                //check if bready is asserted while bvalid is high)
                //(there is a possibility that bready is always asserted high)
                begin
                    axi_bvalid <= 1'b0;
                end
            end
        end
    end
    
    // Implement axi_arready generation
    // axi_arready is asserted for one S_AXI_ACLK clock cycle when
    // S_AXI_ARVALID is asserted. axi_awready is
    // de-asserted when reset (active low) is asserted.
    // The read address is also latched when S_AXI_ARVALID is
    // asserted. axi_araddr is reset to zero on reset assertion.
    
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_arready <= 1'b0;
            axi_araddr  <= 32'b0;
        end
        else
        begin
            if (~axi_arready && S_AXI_ARVALID)
            begin
                // indicates that the slave has acceped the valid read address
                axi_arready <= 1'b1;
                // Read address latching
                axi_araddr <= S_AXI_ARADDR;
            end
            else
            begin
                axi_arready <= 1'b0;
            end
        end
    end
    
    // Implement axi_arvalid generation
    // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_ARVALID and axi_arready are asserted. The slave registers
    // data are available on the axi_rdata bus at this instance. The
    // assertion of axi_rvalid marks the validity of read data on the
    // bus and axi_rresp indicates the status of read transaction.axi_rvalid
    // is deasserted on reset (active low). axi_rresp and axi_rdata are
    // cleared to zero on reset (active low).
    always @(posedge S_AXI_ACLK)
    begin
        if (S_AXI_ARESETN == 1'b0)
        begin
            axi_rvalid <= 0;
            axi_rresp  <= 0;
        end
        else
        begin
            if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
            begin
                // Valid read data is available at the read data bus
                axi_rvalid <= 1'b1;
                axi_rresp  <= 2'b0; // 'OKAY' response
            end
            else if (axi_rvalid && S_AXI_RREADY)
            begin
                // Read data is accepted by the master
                axi_rvalid <= 1'b0;
            end
		end
	end
                
	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
		// Address decoding for reading registers
		case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
			5'h00   : reg_data_out <= slv_reg0;
			5'h01   : reg_data_out <= slv_reg1;
			5'h02   : reg_data_out <= slv_reg2;
			5'h03   : reg_data_out <= slv_reg3;
			5'h04   : reg_data_out <= slv_reg4;
			5'h05   : reg_data_out <= slv_reg5;
			5'h06   : reg_data_out <= slv_reg6;
			5'h07   : reg_data_out <= slv_reg7;
			5'h08   : reg_data_out <= slv_reg8;
			5'h09   : reg_data_out <= slv_reg9;
			5'h0A   : reg_data_out <= slv_reg10;
			5'h0B   : reg_data_out <= slv_reg11;
			5'h0C   : reg_data_out <= slv_reg12;
			5'h0D   : reg_data_out <= slv_reg13;
			5'h0E   : reg_data_out <= slv_reg14;
			5'h0F   : reg_data_out <= slv_reg15;
			5'h10   : reg_data_out <= slv_reg16;
			5'h11   : reg_data_out <= slv_reg17;
			default : reg_data_out <= 0;
		endcase
	end
                
	// Output register or memory read data
	always @(posedge S_AXI_ACLK)
	begin
		if (S_AXI_ARESETN == 1'b0)
		begin
			axi_rdata <= 0;
		end
		else
		begin
			// When there is a valid read address (S_AXI_ARVALID) with
			// acceptance of read address by the slave (axi_arready),
			// output the read dada
			if (slv_reg_rden)
			begin
				axi_rdata <= reg_data_out;     // register read data
			end
		end
	end
	
	// Add user logic here
	FFT_Top#(
	.WL(WL)
	)U_FFT_TOP(
	.iRSTn(S_AXI_ARESETN),
	.iCLK(S_AXI_ACLK),
	.iStart_INT(slv_reg0[0]),
	.iCLR(slv_reg0[1]),
	.oEN(FFT_oEN),
	.oDATA_re(oDATA_re),
	.oDATA_im(oDATA_im)
	);
	
	// User logic ends
	
endmodule

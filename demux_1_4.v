module demux_1_4(
    input [1:0] Sel,
    input [7:0] Y,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
    );
    
    always @(*) begin
        case(Sel)
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, Y}; 
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, Y, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, Y, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {Y, 8'b0, 8'b0, 8'b0};
        endcase
    end

endmodule
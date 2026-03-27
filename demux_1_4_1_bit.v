module demux_1_4_1_bit(
    input [1:0] Sel,
    input Y,
    output reg A,
    output reg B,
    output reg C,
    output reg D
    );
    
    always @(*) begin
        case(Sel)
            2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, Y}; 
            2'b01: {D, C, B, A} <= {1'b0, 1'b0, Y, 1'b0};
            2'b10: {D, C, B, A} <= {1'b0, Y, 1'b0, 1'b0};
            2'b11: {D, C, B, A} <= {Y, 1'b0, 1'b0, 1'b0};
        endcase
    end
        
endmodule

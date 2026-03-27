module byte_memory(
    input [7:0] D,
    input E,
    output reg [7:0] Q
    );

    wire [7:0] temp;
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin
            D_Latch inst(
            .D(D[i]),
            .E(E),
            .Q(temp[i])
            );
        end
    endgenerate
    always @(temp) begin
        Q <= temp;
    end
    
endmodule
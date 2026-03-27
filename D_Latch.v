module D_Latch(
    input D,
    input E,
    output reg Q,
    output NotQ
    );
    
    always @(E, D) begin
        if (E)
            Q <= D;
    end
    
    assign NotQ = ~Q;
    
endmodule

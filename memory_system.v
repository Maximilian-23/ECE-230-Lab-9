module memory_system(
    input [7:0] data,
    input store,
    input [1:0] address,
    output [7:0] memory
    );
    
    wire [7:0] input_data_vec[3:0];
    wire [7:0] output_data_vec[3:0];
    wire enable_arr[3:0];
    
    demux_1_4_1_bit choose(
        .Sel(address),
        .Y(store),
        .A(enable_arr[0]),
        .B(enable_arr[1]),
        .C(enable_arr[2]),
        .D(enable_arr[3])
    );
    
    demux_1_4 data_demux(
    .Sel(address),
    .Y(data),
    .A(input_data_vec[0]),
    .B(input_data_vec[1]),
    .C(input_data_vec[2]),
    .D(input_data_vec[3])
    );
    
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin
            byte_memory inst(
            .D(input_data_vec[i]),
            .E(enable_arr[i]),
            .Q(output_data_vec[i])
            );
        end
    endgenerate
    
    
    mux_4_1 out(
    .Sel(address),
    .A(output_data_vec[0]),
    .B(output_data_vec[1]),
    .C(output_data_vec[2]),
    .D(output_data_vec[3]),
    .Y(memory)
    );
    
    
endmodule

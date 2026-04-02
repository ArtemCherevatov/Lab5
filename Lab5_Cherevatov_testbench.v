module tb_demux_1to5_4bit;
    reg [3:0] in_data;
    reg [2:0] sel;
    wire [3:0] out0;
    wire [3:0] out1;
    wire [3:0] out2;
    wire [3:0] out3;
    wire [3:0] out4;
    demux_1to5_4bit uut (
        .in_data(in_data),
        .sel(sel),
        .out0(out0),
        .out1(out1),
        .out2(out2),
        .out3(out3),
        .out4(out4)
    );
    initial begin
        in_data = 4'b1010; 
        sel = 3'd0;
        #10 sel = 3'd0; 
        #10 sel = 3'd1;
        #10 sel = 3'd2;
        #10 sel = 3'd3;
        #10 sel = 3'd4; 
        #10 in_data = 4'b1111; 
            sel = 3'd5;
        #10 sel = 3'd2;
        #10 $finish;
    end
    initial begin
        $monitor("Time=%0t | in_data=%b | sel=%d | out0=%b out1=%b out2=%b out3=%b out4=%b", 
                 $time, in_data, sel, out0, out1, out2, out3, out4);
    end
endmodule

module demux_1to5_4bit (
    input wire [3:0] in_data,  
    input wire [2:0] sel,      
    output reg [3:0] out0,     
    output reg [3:0] out1,    
    output reg [3:0] out2,     
    output reg [3:0] out3,     
    output reg [3:0] out4      
);
    always @(*) begin
        out0 = 4'b0000;
        out1 = 4'b0000;
        out2 = 4'b0000;
        out3 = 4'b0000;
        out4 = 4'b0000;
        case (sel)
            3'd0: out0 = in_data;
            3'd1: out1 = in_data;
            3'd2: out2 = in_data;
            3'd3: out3 = in_data;
            3'd4: out4 = in_data;
            default: begin 
                out0 = 4'b0000;
                out1 = 4'b0000;
                out2 = 4'b0000;
                out3 = 4'b0000;
                out4 = 4'b0000;
            end
        endcase
    end
endmodule

library verilog;
use verilog.vl_types.all;
entity demux_1to5_4bit is
    port(
        in_data         : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        out0            : out    vl_logic_vector(3 downto 0);
        out1            : out    vl_logic_vector(3 downto 0);
        out2            : out    vl_logic_vector(3 downto 0);
        out3            : out    vl_logic_vector(3 downto 0);
        out4            : out    vl_logic_vector(3 downto 0)
    );
end demux_1to5_4bit;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.asp_types.all;

entity noise_reduction_filter is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end noise_reduction_filter;

architecture behaviour of noise_reduction_filter is

component averaging_filter is
	port(
			clk			: in bit_1;
			data_in		: in bit_16;
			div_sel		: in bit_2;
			data_out		: out bit_16
	);
end component;

component lulu_smoother is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end component;

signal avg_fil_out : bit_16 := X"0000";
signal lulu_out : bit_16 := X"0000";

begin

	avg_fil: averaging_filter
	port map (clk, data_in, "01", avg_fil_out);
	
	lulu: lulu_smoother
	port map (clk, avg_fil_out, lulu_out);
	
	data_out <= lulu_out;

end architecture;
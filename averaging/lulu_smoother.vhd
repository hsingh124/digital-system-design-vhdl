library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.asp_types.all;

entity lulu_smoother is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end lulu_smoother;

architecture behaviour of lulu_smoother is

component lower_smoother is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end component;

component upper_smoother is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end component;

signal l1_out : bit_16 := X"0000";
signal l2_out : bit_16 := X"0000";
signal u1_out : bit_16 := X"0000";
signal u2_out : bit_16 := X"0000";

begin
	
	l1: lower_smoother
	port map (clk, data_in, l1_out);
	
	u1: upper_smoother
	port map (clk, l1_out, u1_out);
	
	l2: lower_smoother
	port map (clk, u1_out, l2_out);
	
	u2: upper_smoother
	port map (clk, l2_out, u2_out);
	
	data_out <= u2_out;
	
end behaviour;
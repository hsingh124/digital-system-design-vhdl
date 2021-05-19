library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.asp_types.all;

entity lower_smoother is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end lower_smoother;

architecture behaviour of lower_smoother is

type arr is array (2 downto 0) of bit_16;
signal sig_arr	: arr := ((X"0000"),(X"0000"),(X"0000"));
signal l_arr	: arr := ((X"0000"),(X"0000"),(X"0000"));
signal iter		: integer range 2 downto 0 := 0;
signal iter_l	: integer range 2 downto 0 := 0;
signal l_out	: bit_16 := X"0000";

begin

	process(clk)
	
	variable temp_min : bit_16 := X"ffff";
	variable temp_max : bit_16 := X"0000";
		
	begin
		if rising_edge(clk) then
			sig_arr(iter) <= data_in;
			
			if iter >= 2 then
				iter <= 0;
			else
				iter <= iter + 1;
			end if;
			
			for i in 0 to 2 loop
				if sig_arr(i) < temp_min then
					temp_min := sig_arr(i);
				end if;
			end loop;
			l_arr(iter_l) <= temp_min;
			temp_min := X"ffff";
			
			if iter_l >= 2 then
				iter_l <= 0;
			else
				iter_l <= iter_l + 1;
			end if;
			
			for i in 0 to 2 loop
				if l_arr(i) > temp_max then
					temp_max := l_arr(i);
				end if;
			end loop;
			l_out <= temp_max;
			temp_max := X"0000";
		end if;
	end process;
	
	data_out <= l_out;
end behaviour;
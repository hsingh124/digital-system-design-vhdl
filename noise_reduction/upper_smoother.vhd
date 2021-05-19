library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.asp_types.all;

entity upper_smoother is
	port (
		clk : in bit_1;
		data_in : in bit_16;
		data_out : out bit_16
	);
end upper_smoother;

architecture behaviour of upper_smoother is

type arr is array (2 downto 0) of bit_16;
signal sig_arr	: arr := ((X"0000"),(X"0000"),(X"0000"));
signal u_arr	: arr := ((X"0000"),(X"0000"),(X"0000"));
signal iter		: integer range 2 downto 0 := 0;
signal iter_u	: integer range 2 downto 0 := 0;
signal u_out	: bit_16 := X"0000";

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
				if sig_arr(i) > temp_max then
					temp_max := sig_arr(i);
				end if;
			end loop;
			u_arr(iter_u) <= temp_max;
			temp_max := X"0000";
			if iter_u >= 2 then
				iter_u <= 0;
			else
				iter_u <= iter_u + 1;
			end if;
			
			for i in 0 to 2 loop
				if u_arr(i) < temp_min then
					temp_min := u_arr(i);
				end if;
			end loop;
			u_out <= temp_min;
			temp_min := X"ffff";
		end if;
	end process;
	
	data_out <= u_out;
end behaviour;
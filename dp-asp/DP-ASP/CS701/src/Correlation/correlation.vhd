library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.types.all;

entity correlation is
port (
	clk		: in bit_1;
	in_1		: in bit_16;
	in_2		: in bit_16
);
end entity;

architecture behaviour of correlation is
	type arr_type is array (15 downto 0) of bit_16;
	type arr_type_16 is array (15 downto 0) of bit_32;
	signal arr1 : arr_type;
	signal arr2 : arr_type;
	signal arr_sum : arr_type_16;
	signal iterator : integer range 0 to 16 := 0;
--	signal sum : bit_32 := X"00000000";
begin

	process(clk)
	variable sum : bit_32 := X"00000000";
	variable arr_sum_temp : arr_type_16;
	begin
		if rising_edge(clk) then
		
			if iterator <= 15 then
				arr1(iterator) <= in_1;
				arr2(iterator) <= in_2;
				iterator <= iterator + 1;
			else
				for i in 0 to 15 loop
					 for j in 0 to i loop
						sum := sum + arr2(15-j)*arr1(i-j);
					 end loop;
					 arr_sum_temp(i) := sum;
					 sum := X"00000000";
				end loop;
			end if;
		end if;
		arr_sum <= arr_sum_temp;
	end process;
end architecture;
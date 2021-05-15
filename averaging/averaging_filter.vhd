library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.asp_types.all;

entity averaging_filter is

	port(
			clk			: in bit_1;
--			is_period	: in bit_1;
			data_in		: in bit_16;
			data_out		: out bit_16
	);

end averaging_filter;

architecture behaviour of averaging_filter is

--	signal clk_count 			: bit_16 := X"0000";
--	signal clk_count_temp	: bit_16 := x"0000";
--	signal data_sum			: bit_16 := X"0000";

	signal data_avg			: bit_16 := x"0000";
	signal data_sum			: bit_16 := x"0000";
	signal count				: integer range 63 downto 0 := 0;
	signal point				: integer range 63 downto 0 := 0;
	signal temp					: bit_16 := x"0000";
	type arr is array (63 downto 0) of bit_16;
	signal backlog : arr;
	
begin

	process(clk)
	begin
--		if rising_edge(clk) then
--			if is_period = '1' then
--				clk_count <= data_in;
--				clk_count_temp <= data_in;
--			else 
--				if clk_count_temp > X"0000" then
--					data_sum <= data_sum + data_in;
--					clk_count_temp <= clk_count_temp - X"0001";
--					if clk_count_temp = X"0000" then
--						-- data_avg <= data_sum / clk_count;
--						data_avg <= shift_right(unsigned(data_sum), 6);
--					end if;
--				end if;
--			end if;
--		end if;

		temp <= backlog(point);
		
		if rising_edge(clk) then
			if (count < 63) then
				backlog(count) <= data_in;
				data_sum <= data_sum + data_in;
				count <= count + 1;
			else
				data_sum <= data_sum - temp + data_in;
				backlog(point) <= data_in;
				if point < 64 then
					point <= point + 1;
				else
					point <= 0;
				end if;
			end if;
		end if;
		
		data_avg <= "000000" & data_sum(15 downto 6);
	end process;

	data_out <= data_avg;
	
end behaviour;
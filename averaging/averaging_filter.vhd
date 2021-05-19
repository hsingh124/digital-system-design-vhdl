library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.asp_types.all;

entity averaging_filter is

	port(
			clk			: in bit_1;
			data_in		: in bit_16;
			div_sel		: in bit_2 := "00";
			data_out		: out bit_16
	);

end averaging_filter;

architecture behaviour of averaging_filter is

	signal data_avg			: bit_16 := x"0000";
	signal data_sum			: bit_16 := x"0000";
	signal divisor				: bit_5	:= "00000";
	signal count				: integer range 63 downto 0 := 0;
	signal point				: integer range 63 downto 0 := 0;
	signal temp					: bit_16 := x"0000";
	type arr is array (63 downto 0) of bit_16;
	signal backlog : arr;
	
begin

	process(clk)
	begin
		
		case div_sel is
			when "00" => divisor <= "00010";
			when "01" => divisor <= "00100";
			when "10" => divisor <= "01000";
			when "11" => divisor <= "10000";
		end case;
		
		temp <= backlog(point);
		
		if rising_edge(clk) then
			if (count < divisor-1) then
				backlog(count) <= data_in;
				data_sum <= data_sum + data_in;
				count <= count + 1;
			else
				data_sum <= data_sum - temp + data_in;
				backlog(point) <= data_in;
				if point < divisor then
					point <= point + 1;
				else
					point <= 0;
				end if;
			end if;
		end if;
		
		case div_sel is
			when "00" => data_avg <= "0" & data_sum(15 downto 1);
			when "01" => data_avg <= "00" & data_sum(15 downto 2);
			when "10" => data_avg <= "000" & data_sum(15 downto 3);
			when "11" => data_avg <= "0000" & data_sum(15 downto 4);
		end case;
		
		data_avg <= "000000" & data_sum(15 downto 6);
	end process;

	data_out <= data_avg;
	
end behaviour;
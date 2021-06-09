library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity peak_detection is
	port (
		clock : in  std_logic;
		signal_input  : in std_logic_vector(15 downto 0); --input signal from the averaging filter
--		cycle_num : in std_logic_vector(15 downto 0);
		max_val: out std_logic_vector(15 downto 0);
		min_val: out std_logic_vector(15 downto 0)
	);
end entity;

architecture rtl of peak_detection is
	signal cycle_num : std_logic_vector(15 downto 0) := "0000000000001010";
	signal prev_max : std_logic_vector(15 downto 0) := "0000000000000000";
	signal prev_min : std_logic_vector(15 downto 0) := "1111111111111111";
	signal count : std_logic_vector(15 downto 0) := "0000000000000000";
	
begin
	process(clock)
	begin		
		
		if rising_edge(clock) then
			if count <= cycle_num then
				if signal_input > prev_max then --looking for local max value
					prev_max <= signal_input;
				end if;
				if prev_min > signal_input then --looking for local min value
					prev_min <= signal_input; 
				end if;
				count <= count + 1;
			end if;
		end if;
	end process;
	
	max_val <= prev_max;
	min_val <= prev_min;
	
end architecture;

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity peakDetect is
	port (
		clock : in  std_logic;
		recv  : in  tdma_min_port;
		sample_count : in std_logic_vector(7 downto 0); --sample_count from freqDetect
		
		max_val: out std_logic_vector(15 downto 0);
		min_val: out std_logic_vector(15 downto 0)
	);
end entity;

architecture rtl of peakDetect is
	signal prev_max : std_logic_vector := "0";
	signal prev_min : std_logic_vector := "0";
	signal count : std_logic_vector(7 downto 0) := "0";
	variable current_val : std_logic_vector(15 downto 0) := "0";
	
begin
	process(clock)
	begin		
		
		if rising_edge(clock) then
			if current_val > prev_max then --looking for local max value
				prev_max <= current_val;
			elsif prev_min > current_val then --looking for local min value
				prev_min <= current_val; 
			end if;
			
			if count = sample_count then 
				count <= 0;
			count <= count + 1;
		end if;
	end process;
end architecture;
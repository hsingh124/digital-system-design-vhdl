library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity freqDetect is
	port (
		clock : in  std_logic;
		recv  : in  tdma_min_port;
		sample_count: out std_logic_vector(7 downto 0)
	);
end entity;

architecture rtl of freqDetect is
	signal initial : std_logic_vector(15 downto 0) := "0";
	signal flag : std_logic := "0";
	signal count : std_logic_vector(7 downto 0) := "0";
	variable current_val : std_logic_vector(15 downto 0) := "0";
	
begin
	process(clock)
	begin		
		if rising_edge(clock) then
			if flag = 0 then
				intial <= recv(15 downto 0);
				flag <= "1";
			end if
			
			if intial = recv(15 downto 0) and flag = 1 then
				flag = 0;
				sample_count <= count;
			else 
				count <= count + 1;
			end if
			
		end if;
	end process;
end architecture;

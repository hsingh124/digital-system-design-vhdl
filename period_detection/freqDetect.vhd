library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity freqDetect is
	port (
		clock : in  std_logic;
		recv : in std_logic_vector(15 downto 0);
		peak  : in  std_logic_vector(15 downto 0);
		sample_count: out std_logic_vector(7 downto 0)
	);
end entity;

architecture rtl of freqDetect is
	signal initial : std_logic_vector(15 downto 0) := "0000000000000100";
	signal flag : std_logic := '0';
	signal count : std_logic_vector(7 downto 0) := "00000000";
	
begin
	
	process(clock)
	begin		
		if rising_edge(clock) then
			if recv >= peak and flag = '0' then
				flag <= '1';
				count <= "00000000";
			end if;
			
			if recv >= peak and flag = '1' then
				flag <= '0';
				sample_count <= count;
			end if;
			
			if flag = '1' then
				count <= count + 1;
			end if;
			
		end if;
	end process;
end architecture;
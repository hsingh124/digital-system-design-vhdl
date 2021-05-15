library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

library work;
use work.TdmaMinTypes.all;

entity macOperand is
	port (
		clk : in  std_logic;
		val_a: in std_logic_vector(23 downto 0);
		val_b: in std_logic_vector(23 downto 0);
		mac_val: out std_logic_vector(47 downto 0)
		);
end entity;

architecture rtl of macOperand is
	variable mult_val : std_logic_vector(47 downto 0); --the multplied value
	signal prev_val : std_logic_vector(23 downto 0) := "0";
begin
	process(clk)
	begin		
		if rising_edge (clk) then
			mult_val := val_a * val_b; --multiply
			prev_val <= prev_val + mult_val;--add to previous value
		end if
	end process;
		mac_val <= prev_val; 
end architecture;

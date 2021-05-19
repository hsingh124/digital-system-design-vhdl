library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--use ieee.std_logic_arith.all;


entity fir is
	port (
		clk : in  std_logic;
		sample_in : in std_logic_vector(15 downto 0);
		acc_val : out std_logic_vector(15 downto 0)
		);
end entity;

architecture rtl of fir is
signal prev_val_1 :std_logic_vector(15 downto 0) :="0000000000000000"; --the value delayed by a clock cycle...
signal prev_val_2 :std_logic_vector(15 downto 0) :="0000000000000000";
signal prev_val_3 :std_logic_vector(15 downto 0) :="0000000000000000";
type accumulate_sample_type is array (3 downto 0) of std_logic_vector(15 downto 0);
signal accumulate_sample : accumulate_sample_type := ("0000000000000000", "0000000000000000", "0000000000000000", "0000000000000000");
begin
	process(clk)
	variable sum : std_logic_vector(15 downto 0) := "0000000000000000";
	variable sum_2 : std_logic_vector(15 downto 0) := "0000000000000000";
	begin
		if rising_edge(clk) then	
				
				accumulate_sample(3) <= std_logic_vector(to_unsigned(to_integer(unsigned(prev_val_3)) * 1, prev_val_3'length));
				prev_val_3 <= prev_val_2;
				
				accumulate_sample(2) <= std_logic_vector(to_unsigned(to_integer(unsigned(prev_val_2)) * 1, prev_val_2'length));
				prev_val_2 <= prev_val_1;
				
				accumulate_sample(1) <= std_logic_vector(to_unsigned(to_integer(unsigned(prev_val_1)) * 1, prev_val_1'length));
				prev_val_1 <= sample_in;
				
				accumulate_sample(0) <= std_logic_vector(to_unsigned(to_integer(unsigned(sample_in)) * 1, prev_val_1'length));
			
			for i in 0 to 3 loop
				sum := sum + accumulate_sample(i);
			end loop; 
			sum_2 := sum;
		end if;
			acc_val <= sum_2; --send out the accumulated value
			sum := "0000000000000000";
	end process;
end architecture;

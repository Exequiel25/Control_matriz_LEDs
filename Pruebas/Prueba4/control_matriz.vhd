----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:54 11/22/2021 
-- Design Name: 
-- Module Name:    control_matriz - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_matriz is
    Port ( CLK_50MHz : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           An : out  STD_LOGIC_VECTOR (3 downto 0);
           Dn : out  STD_LOGIC_VECTOR (7 downto 0));
end control_matriz;

architecture Behavioral of control_matriz is

signal cuenta : integer;
signal frec : integer := 24999999;

signal clk : STD_LOGIC := '0';

signal addr : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal data : STD_LOGIC_VECTOR(7 downto 0) := "10000001";

begin

-- divisor frecuencia
process (CLK_50MHz, reset) begin

	if reset = '1' then 
		cuenta <= 0;
	elsif rising_edge(CLK_50MHz) then
		cuenta <= cuenta +1;
		if cuenta = frec then
			clk <= not clk;
			cuenta <= 0;
		end if;	
	end if;
	
end process;

process (clk, reset) begin
	if reset = '1' then
		Dn <= "00000000";
		An <= "0000";
	elsif clk = '1' then
		An <= addr;
		addr <= addr +1;
		Dn <= data;
		Q <= '1';
	else
		Dn <= "00000000";
		Q <= '0';
	end if;
end process;

end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:22:23 11/19/2021 
-- Design Name: 
-- Module Name:    prueba1 - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prueba1 is
    Port ( An : out  STD_LOGIC_VECTOR (3 downto 0);
           Dn : out  STD_LOGIC_VECTOR (7 downto 0);
           SW0 : in  STD_LOGIC;
			  SW1 : in  STD_LOGIC;
			  SW2 : in  STD_LOGIC;
			  SW3 : in  STD_LOGIC);
end prueba1;

architecture Behavioral of prueba1 is

begin

process (SW0, SW1, SW2, SW3) begin
	if SW0 = '1' then
		An <= "0000";
--		An <= "0100";
--		An <= "1000";
--		An <= "1100";
	elsif SW1 = '1' then
		An <= "0001";
--		An <= "0101";
--		An <= "1001";
--		An <= "1101";
	elsif SW2 = '1' then
		An <= "0010";
--		An <= "0110";
--		An <= "1010";
--		An <= "1110";
	elsif SW3 = '1' then
		An <= "0011";
--		An <= "0111";
--		An <= "1011";
--		An <= "1111";
	end if;
	
	Dn <= "11111111";

end process;

end Behavioral;


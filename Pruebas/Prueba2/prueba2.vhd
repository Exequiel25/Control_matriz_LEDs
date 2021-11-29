----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:14:41 11/19/2021 
-- Design Name: 
-- Module Name:    prueba2 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity prueba2 is
    Port ( Dn : out  STD_LOGIC_VECTOR (7 downto 0);
           An : out  STD_LOGIC_VECTOR (3 downto 0);
           CLK : in  STD_LOGIC);
end prueba2;

architecture Behavioral of prueba2 is

-- Reduccion reloj
signal TIMER : std_logic_vector(15 downto 0) := "1111111111111111";
signal CLK_aux : std_logic := '0';

signal Cuenta : std_logic_vector(3 downto 0) := "0000";

begin

process (CLK, CLK_aux, TIMER, Cuenta) begin

	if CLK_aux = '1' then
		An <= Cuenta;
		Dn <= "11111111";
	elsif CLK_aux = '0' then
		An <= "0011";
		Dn <= "11111111";
	end if;

--Dn <= "01101110";

	if rising_edge(CLK) then
		TIMER <= TIMER -1;
	end if;
	
	if TIMER = "000000000000000" then
		CLK_aux <= not(CLK_aux);
		TIMER <= "1111111111111111";
		Cuenta <= Cuenta + 1;
	end if;

end process;

end Behavioral;


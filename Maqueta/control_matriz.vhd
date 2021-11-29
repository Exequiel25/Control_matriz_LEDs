----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:18:23 11/05/2021 
-- Design Name: 
-- Module Name:    Control_matriz - Behavioral 
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

entity Control_matriz is
    Port ( CLK : in  STD_LOGIC;
			  Reset : in STD_LOGIC;
			  LED : out std_logic;
			  An : out  STD_LOGIC_VECTOR (3 downto 0);
           Dn : out  STD_LOGIC_VECTOR (7 downto 0));		  
end Control_matriz;

architecture Behavioral of Control_matriz is

-- CONTADORES
signal Cuenta : std_logic_vector(3 downto 0) := "0000";
signal despla : std_logic_vector(3 downto 0) := "0000";
--signal TIMER : std_logic_vector(23 downto 0) := "111111111111111111111111";
--signal TIMER : std_logic_vector(19 downto 0) := "11111111111111111111";
signal TIMER : std_logic_vector(15 downto 0) := "1111111111111111";

-- CONSTANTES
signal VUELTA_MAX : integer := 10;

-- VARIABLES
signal vuelta_actual : integer := 0;
signal CLK_aux : std_logic := '0';

begin

process(CLK, Reset, CLK_aux, TIMER) begin
	-- los botones normalmente estan en 1
	if Reset = '1' then
		An <= "0000";
		Cuenta <= "0000";
		despla <= "0000";
		LED <= '0';
	elsif CLK = '1' then
		An <= Cuenta;
		Cuenta <= Cuenta+1;
		LED <= '1';
		
		if Cuenta = despla then
			Dn <= "01111111";
		elsif Cuenta = despla+1 then
			Dn <= "01001000";
		elsif Cuenta = despla+2 then
			Dn <= "01001000";
		elsif Cuenta = despla+3 then
			Dn <= "01111111";
		else
			Dn <= "00000000";
		end if;
		
	else
		Dn <= "00000000";
		LED <= '0';
	end if;
	
	if Cuenta = "1111" then
		vuelta_actual <= vuelta_actual +1;
	end if;
	if vuelta_actual = VUELTA_MAX then
		despla <= despla +1;
	end if;
	
--	if rising_edge(CLK) then
--		TIMER <= TIMER -1;
--	end if;
	
--	if TIMER = "00000000000000000000" then
--		CLK_aux <= not(CLK_aux);
--		TIMER <= "11111111111111111111";
--	end if;
	if rising_edge(CLK) then
		TIMER <= TIMER -1;
	end if;
	
	if TIMER = "000000000000000" then
		CLK_aux <= not(CLK_aux);
		TIMER <= "1111111111111111";
	end if;
	
end process;


end Behavioral;
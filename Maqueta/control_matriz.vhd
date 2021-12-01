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
    Port ( CLK_50MHz : in  STD_LOGIC;
			  Reset : in STD_LOGIC;
			  An : out  STD_LOGIC_VECTOR (3 downto 0);
           Dn : out  STD_LOGIC_VECTOR (7 downto 0));		  
end Control_matriz;

architecture Behavioral of Control_matriz is

-- CONTADORES
signal Cuenta : std_logic_vector(3 downto 0) := "0000";
signal despla : std_logic_vector(3 downto 0) := "0000";

signal TIMER : integer := 65536;

-- CONSTANTES
signal VUELTA_MAX : integer := 50;

-- VARIABLES
signal vuelta_actual : integer := 0;

-- Reloj auxiliar derivado del integrado a la placa
signal reloj : std_logic := '0';

begin

process(CLK_50MHz, Reset) begin
	-- los botones normalmente estan en 1
	if Reset = '1' then
		TIMER <= 65536;
		reloj <= '0';
	elsif CLK_50MHz'event and CLK_50MHz = '1' then
		-- divisor de frecuencia / generador de reloj auxiliar
		TIMER <= TIMER -1;
		if TIMER = 0 then
			reloj <= not reloj;
		end if;
	end if;
end process;
	
process(reloj, Reset) begin
	if Reset = '1' then
		-- seteamos todos los valores a nulo
		An <= "0000";
		Cuenta <= "0000";
		despla <= "0000";
	elsif reloj = '1' then
		-- actualizamos direccion y su dato correspondiente
		An <= Cuenta;
		Cuenta <= Cuenta+1;
		
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
		-- reloj = '0'
		Dn <= "00000000";
	end if;
	
	-- se ha completado una vuelta
	if Cuenta = "1111" then
		vuelta_actual <= vuelta_actual +1;
	end if;
	-- actualizamos el ciclo de desplazamiento
	if vuelta_actual = VUELTA_MAX then
		despla <= despla +1;
	end if;
	
end process;

end Behavioral;
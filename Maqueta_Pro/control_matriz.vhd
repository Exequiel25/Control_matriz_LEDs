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
signal addr : std_logic_vector(3 downto 0) := "0000";
signal despla : std_logic_vector(3 downto 0) := "1111";

signal TIMER : integer := 1000000;

-- CONSTANTES
signal VUELTA_MAX : integer := 50;

-- VARIABLES y AUXILIARES
signal vuelta_actual : integer := 0;
signal data : std_logic_vector(7 downto 0) := "00000000";

-- Reloj auxiliar derivado del integrado a la placa
signal reloj : std_logic := '0';

begin

process(CLK_50MHz, Reset) begin
	-- los botones normalmente estan en 1
	if Reset = '1' then
		TIMER <= 1000000;
		reloj <= '0';
	elsif CLK_50MHz'event and CLK_50MHz = '1' then
		-- divisor de frecuencia / generador de reloj auxiliar
		TIMER <= TIMER -1;
		if TIMER = 0 then
			reloj <= not reloj;
			TIMER <= 1000000;
		end if;
	end if;
end process;
	
process(reloj, Reset) begin
	if Reset = '1' then
		-- seteamos todos los valores a nulo
		addr <= "0000";
		despla <= "1111";
	elsif reloj = '1' then
		-- actualizamos direccion y su dato correspondiente
		addr <= addr +1;
		
		if addr = despla then
			data <= "01111111";
		elsif addr = despla-1 then
			data <= "01001000";
		elsif addr = despla-2 then
			data <= "01001000";
		elsif addr = despla-3 then
			data <= "01111111";
		else
			data <= "00000000";
		end if;
		
	else
		-- reloj = '0'
		data <= "00000000";
	end if;
	
	-- se ha completado una vuelta
	if addr = "1111" then
		vuelta_actual <= vuelta_actual +1;
	end if;
	-- actualizamos el ciclo de desplazamiento
	if vuelta_actual = VUELTA_MAX then
		despla <= despla -1;
	end if;
	
end process;

An <= addr;
Dn <= data;

end Behavioral;
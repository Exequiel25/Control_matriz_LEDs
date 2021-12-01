----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:45:24 11/30/2021 
-- Design Name: 
-- Module Name:    proceso_clk - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity proceso_clk is
	Port ( CLK_50MHz : in  STD_LOGIC;
			 Reset : in STD_LOGIC;
			  reloj : out STD_LOGIC);	  
end proceso_clk;

architecture Behavioral of proceso_clk is

-- Reloj auxiliar derivado del integrado a la placa
signal clk_aux : std_logic := '0';
signal TIMER : integer := 65536;

begin

process(CLK_50MHz, Reset) begin
	-- los botones normalmente estan en 1
	if Reset = '1' then
		TIMER <= 1000000;
		clk_aux <= '0';
	elsif CLK_50MHz'event and CLK_50MHz = '1' then
		-- divisor de frecuencia / generador de reloj auxiliar
		TIMER <= TIMER -1;
		if TIMER = 0 then
			clk_aux <= not clk_aux;
			TIMER <= 1000000;
		end if;
	end if;
end process;

reloj <= clk_aux;

end Behavioral;


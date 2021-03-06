# Maqueta de Matriz de LEDs 8x16
## Proyecto TD1 UTN 3° año
### Entorno utilizado: ISE XILINX
#### Utilización de placa FPGA con lenguaje VHDL

Se deja a continuación el código procedente de la carpeta "Maqueta_Pro"

---
```
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
```

Se deja a continuación el código procedente de la carpeta "Maqueta_ROM"
```
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
signal despla : std_logic_vector(3 downto 0) := "0000";

signal TIMER : integer := 1000000;

-- CONSTANTES
signal VUELTA_MAX : integer := 50;

-- VARIABLES y AUXILIARES
signal vuelta_actual : integer := 0;

-- Reloj auxiliar derivado del integrado a la placa
signal reloj : std_logic := '0';


-- MEMORIA
type rom_type is array (15 downto 0) of std_logic_vector (7 downto 0);                 
    signal ROM : rom_type:= (X"7F", X"48", X"48", X"7F", 
									  X"00", X"00", X"00", X"00",
									  X"00", X"00", X"00", X"00",
                             X"00", X"00", X"00", X"00");                      

    signal rdata : std_logic_vector(7 downto 0) := "00000000";

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
		despla <= "0000";
	elsif reloj = '1' then
		-- actualizamos direccion y su dato correspondiente	
		rdata <= ROM(conv_integer(addr + despla));
		
		addr <= addr +1;
		
	end if;
	
	-- se ha completado una vuelta
	if addr = "1111" then
		vuelta_actual <= vuelta_actual +1;
	end if;
	-- actualizamos el ciclo de desplazamiento
	if vuelta_actual = VUELTA_MAX then
		despla <= despla +1;
	end if;
	
end process;

An <= addr;
Dn <= rdata;

end Behavioral;
```
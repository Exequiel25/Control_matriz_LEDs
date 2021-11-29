--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:43:27 11/22/2021
-- Design Name:   
-- Module Name:   C:/Xilinx/Proyectos/ProyectoTD1/Prueba4/prueba.vhd
-- Project Name:  Prueba4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control_matriz
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY prueba IS
END prueba;
 
ARCHITECTURE behavior OF prueba IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_matriz
    PORT(
         CLK_50MHz : IN  std_logic;
         reset : IN  std_logic;
         Q : OUT  std_logic;
         An : OUT  std_logic_vector(3 downto 0);
         Dn : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_50MHz : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal An : std_logic_vector(3 downto 0);
   signal Dn : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_matriz PORT MAP (
          CLK_50MHz => CLK_50MHz,
          reset => reset,
          Q => Q,
          An => An,
          Dn => Dn
        );

   -- Clock process definitions
   CLK_50MHz_process :process
   begin
		CLK_50MHz <= '0';
		wait for CLK_50MHz_period/2;
		CLK_50MHz <= '1';
		wait for CLK_50MHz_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_50MHz_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

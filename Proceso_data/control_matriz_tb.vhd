--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:26:54 12/01/2021
-- Design Name:   
-- Module Name:   Z:/Codigos/ProyectoTD1/Proceso_data/control_matriz_tb.vhd
-- Project Name:  Proceso_data
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Control_matriz
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
 
ENTITY control_matriz_tb IS
END control_matriz_tb;
 
ARCHITECTURE behavior OF control_matriz_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control_matriz
    PORT(
         CLK_50MHz : IN  std_logic;
         Reset : IN  std_logic;
         An : OUT  std_logic_vector(3 downto 0);
         Dn : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_50MHz : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal An : std_logic_vector(3 downto 0);
   signal Dn : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control_matriz PORT MAP (
          CLK_50MHz => CLK_50MHz,
          Reset => Reset,
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

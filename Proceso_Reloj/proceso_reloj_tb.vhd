--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:51:33 11/30/2021
-- Design Name:   
-- Module Name:   Z:/Codigos/ProyectoTD1/Proceso_Reloj/proceso_reloj_tb.vhd
-- Project Name:  Proceso_Reloj
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: proceso_clk
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
 
ENTITY proceso_reloj_tb IS
END proceso_reloj_tb;
 
ARCHITECTURE behavior OF proceso_reloj_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT proceso_clk
    PORT(
         CLK_50MHz : IN  std_logic;
         Reset : IN  std_logic;
         reloj : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_50MHz : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal reloj : std_logic;

   -- Clock period definitions
   constant CLK_50MHz_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: proceso_clk PORT MAP (
          CLK_50MHz => CLK_50MHz,
          Reset => Reset,
          reloj => reloj
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

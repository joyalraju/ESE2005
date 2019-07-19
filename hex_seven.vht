-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/12/2019 23:30:30"
                                                            
-- Vhdl Test Bench template for design  :  hex_seven
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hex_seven_vhd_tst IS
END hex_seven_vhd_tst;
ARCHITECTURE hex_seven_arch OF hex_seven_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL output : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT hex_seven
	PORT (
	output : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	q : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : hex_seven
	PORT MAP (
-- list connections between master ports and signals
	output => output,
	q => q
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      

WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
q <="0000";
wait for 100 ns;
q <="0001";
wait for 100 ns;
q <="0010";
wait for 100 ns;
q<="0011";
wait for 100 ns;
q <="0100";
wait for 100 ns;
q <="0101";
wait for 100 ns;
q <="0110";
wait for 100 ns;
q <="0111";
wait for 100 ns;
q <="1000";
wait for 100 ns;
q <="1001";
wait for 100 ns;
q <="1010";
wait for 100 ns;
q <="1011";
wait for 100 ns;
q <="1100";
wait for 100 ns;
q <="1101";
wait for 100 ns;
q <="1110";
wait for 100 ns;
q <="1111";
wait for 100 ns;  
WAIT;                                                        
END PROCESS always;                                          
END hex_seven_arch;

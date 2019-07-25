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
-- Generated on "07/12/2019 00:53:06"
                                                            
-- Vhdl Test Bench template for design  :  game
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY game_vhd_tst IS
END game_vhd_tst;
ARCHITECTURE game_arch OF game_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL die : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL n : STD_LOGIC;
SIGNAL r : STD_LOGIC;
SIGNAL s : STD_LOGIC;
SIGNAL s0 : STD_LOGIC;
SIGNAL s1 : STD_LOGIC;
SIGNAL s2 : STD_LOGIC;
SIGNAL s3 : STD_LOGIC;
SIGNAL s4 : STD_LOGIC;
SIGNAL s5 : STD_LOGIC;
SIGNAL s6 : STD_LOGIC;
SIGNAL sw : STD_LOGIC;
SIGNAL v : STD_LOGIC;
SIGNAL w : STD_LOGIC;
SIGNAL win : STD_LOGIC;
COMPONENT game
	PORT (
	clock : IN STD_LOGIC;
	die : OUT STD_LOGIC;
	e : IN STD_LOGIC;
	n : IN STD_LOGIC;
	r : IN STD_LOGIC;
	s : IN STD_LOGIC;
	s0 : OUT STD_LOGIC;
	s1 : OUT STD_LOGIC;
	s2 : OUT STD_LOGIC;
	s3 : OUT STD_LOGIC;
	s4 : OUT STD_LOGIC;
	s5 : OUT STD_LOGIC;
	s6 : OUT STD_LOGIC;
	sw : OUT STD_LOGIC;
	v : IN STD_LOGIC;
	w : IN STD_LOGIC;
	win : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : game
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	die => die,
	e => e,
	n => n,
	r => r,
	s => s,
	s0 => s0,
	s1 => s1,
	s2 => s2,
	s3 => s3,
	s4 => s4,
	s5 => s5,
	s6 => s6,
	sw => sw,
	v => v,
	w => w,
	win => win
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
			clock<='1';
			wait for 50 ns;
			e<='1';
			wait for 100 ns;
			s6<='1';
			wait for 100 ns;
			v<='1';
			wait for 100 ns;
			win<='1';
			wait for 100 ns;
WAIT;                                                        
END PROCESS always;                                          
END game_arch;

-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/13/2019 08:02:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          QUEST_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY QUEST_1_vhd_vec_tst IS
END QUEST_1_vhd_vec_tst;
ARCHITECTURE QUEST_1_arch OF QUEST_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT QUEST_1
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c : IN STD_LOGIC;
	d : IN STD_LOGIC;
	s : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : QUEST_1
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	s => s
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
	WAIT FOR 1000 ps;
	FOR i IN 1 TO 9
	LOOP
		a <= '0';
		WAIT FOR 1000 ps;
		a <= '1';
		WAIT FOR 1000 ps;
	END LOOP;
	a <= '0';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '1';
	WAIT FOR 2000 ps;
	FOR i IN 1 TO 4
	LOOP
		b <= '0';
		WAIT FOR 2000 ps;
		b <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	b <= '0';
WAIT;
END PROCESS t_prcs_b;

-- c
t_prcs_c: PROCESS
BEGIN
	c <= '1';
	WAIT FOR 4000 ps;
	c <= '0';
	WAIT FOR 4000 ps;
	c <= '1';
	WAIT FOR 4000 ps;
	c <= '0';
	WAIT FOR 4000 ps;
	c <= '1';
WAIT;
END PROCESS t_prcs_c;

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '1';
	WAIT FOR 8000 ps;
	d <= '0';
	WAIT FOR 8000 ps;
	d <= '1';
WAIT;
END PROCESS t_prcs_d;
END QUEST_1_arch;

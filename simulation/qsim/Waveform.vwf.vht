-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- Generated on "10/05/2019 17:17:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux4_vhd_vec_tst IS
END mux4_vhd_vec_tst;
ARCHITECTURE mux4_arch OF mux4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a1 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL a2 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Sel : STD_LOGIC;
COMPONENT mux4
	PORT (
	a1 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	a2 : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	b : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	Sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mux4
	PORT MAP (
-- list connections between master ports and signals
	a1 => a1,
	a2 => a2,
	b => b,
	Sel => Sel
	);
-- a1[8]
t_prcs_a1_8: PROCESS
BEGIN
	a1(8) <= '0';
WAIT;
END PROCESS t_prcs_a1_8;
-- a1[7]
t_prcs_a1_7: PROCESS
BEGIN
	a1(7) <= '0';
WAIT;
END PROCESS t_prcs_a1_7;
-- a1[6]
t_prcs_a1_6: PROCESS
BEGIN
	a1(6) <= '0';
WAIT;
END PROCESS t_prcs_a1_6;
-- a1[5]
t_prcs_a1_5: PROCESS
BEGIN
	a1(5) <= '0';
WAIT;
END PROCESS t_prcs_a1_5;
-- a1[4]
t_prcs_a1_4: PROCESS
BEGIN
	a1(4) <= '0';
WAIT;
END PROCESS t_prcs_a1_4;
-- a1[3]
t_prcs_a1_3: PROCESS
BEGIN
	a1(3) <= '0';
WAIT;
END PROCESS t_prcs_a1_3;
-- a1[2]
t_prcs_a1_2: PROCESS
BEGIN
	a1(2) <= '0';
WAIT;
END PROCESS t_prcs_a1_2;
-- a1[1]
t_prcs_a1_1: PROCESS
BEGIN
	a1(1) <= '0';
WAIT;
END PROCESS t_prcs_a1_1;
-- a1[0]
t_prcs_a1_0: PROCESS
BEGIN
	a1(0) <= '0';
WAIT;
END PROCESS t_prcs_a1_0;
-- a2[8]
t_prcs_a2_8: PROCESS
BEGIN
	a2(8) <= '1';
WAIT;
END PROCESS t_prcs_a2_8;
-- a2[7]
t_prcs_a2_7: PROCESS
BEGIN
	a2(7) <= '1';
WAIT;
END PROCESS t_prcs_a2_7;
-- a2[6]
t_prcs_a2_6: PROCESS
BEGIN
	a2(6) <= '1';
WAIT;
END PROCESS t_prcs_a2_6;
-- a2[5]
t_prcs_a2_5: PROCESS
BEGIN
	a2(5) <= '0';
WAIT;
END PROCESS t_prcs_a2_5;
-- a2[4]
t_prcs_a2_4: PROCESS
BEGIN
	a2(4) <= '0';
WAIT;
END PROCESS t_prcs_a2_4;
-- a2[3]
t_prcs_a2_3: PROCESS
BEGIN
	a2(3) <= '0';
WAIT;
END PROCESS t_prcs_a2_3;
-- a2[2]
t_prcs_a2_2: PROCESS
BEGIN
	a2(2) <= '0';
WAIT;
END PROCESS t_prcs_a2_2;
-- a2[1]
t_prcs_a2_1: PROCESS
BEGIN
	a2(1) <= '0';
WAIT;
END PROCESS t_prcs_a2_1;
-- a2[0]
t_prcs_a2_0: PROCESS
BEGIN
	a2(0) <= '0';
WAIT;
END PROCESS t_prcs_a2_0;

-- Sel
t_prcs_Sel: PROCESS
BEGIN
	Sel <= '1';
WAIT;
END PROCESS t_prcs_Sel;
END mux4_arch;

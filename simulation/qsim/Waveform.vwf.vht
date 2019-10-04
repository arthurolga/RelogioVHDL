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
-- Generated on "09/27/2019 10:47:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULA_vhd_vec_tst IS
END ULA_vhd_vec_tst;
ARCHITECTURE ULA_arch OF ULA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outO : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT ULA
	PORT (
	inA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	inB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	outO : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULA
	PORT MAP (
-- list connections between master ports and signals
	inA => inA,
	inB => inB,
	outO => outO,
	sel => sel
	);
-- inA[3]
t_prcs_inA_3: PROCESS
BEGIN
	inA(3) <= '0';
WAIT;
END PROCESS t_prcs_inA_3;
-- inA[2]
t_prcs_inA_2: PROCESS
BEGIN
	inA(2) <= '0';
WAIT;
END PROCESS t_prcs_inA_2;
-- inA[1]
t_prcs_inA_1: PROCESS
BEGIN
	inA(1) <= '1';
WAIT;
END PROCESS t_prcs_inA_1;
-- inA[0]
t_prcs_inA_0: PROCESS
BEGIN
	inA(0) <= '0';
WAIT;
END PROCESS t_prcs_inA_0;
-- inB[3]
t_prcs_inB_3: PROCESS
BEGIN
	inB(3) <= '0';
WAIT;
END PROCESS t_prcs_inB_3;
-- inB[2]
t_prcs_inB_2: PROCESS
BEGIN
	inB(2) <= '0';
WAIT;
END PROCESS t_prcs_inB_2;
-- inB[1]
t_prcs_inB_1: PROCESS
BEGIN
	inB(1) <= '0';
WAIT;
END PROCESS t_prcs_inB_1;
-- inB[0]
t_prcs_inB_0: PROCESS
BEGIN
	inB(0) <= '1';
WAIT;
END PROCESS t_prcs_inB_0;
-- sel[2]
t_prcs_sel_2: PROCESS
BEGIN
	sel(2) <= '1';
WAIT;
END PROCESS t_prcs_sel_2;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '1';
WAIT;
END PROCESS t_prcs_sel_0;
END ULA_arch;

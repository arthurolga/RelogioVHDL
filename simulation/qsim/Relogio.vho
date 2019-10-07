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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/07/2019 17:10:25"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	inA : IN std_logic_vector(6 DOWNTO 0);
	inB : IN std_logic_vector(6 DOWNTO 0);
	outO : OUT std_logic_vector(6 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	doJump : OUT std_logic
	);
END ULA;

-- Design Ports Information
-- outO[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- doJump	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[6]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_inB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outO : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_doJump : std_logic;
SIGNAL \outO[0]~output_o\ : std_logic;
SIGNAL \outO[1]~output_o\ : std_logic;
SIGNAL \outO[2]~output_o\ : std_logic;
SIGNAL \outO[3]~output_o\ : std_logic;
SIGNAL \outO[4]~output_o\ : std_logic;
SIGNAL \outO[5]~output_o\ : std_logic;
SIGNAL \outO[6]~output_o\ : std_logic;
SIGNAL \doJump~output_o\ : std_logic;
SIGNAL \inA[0]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \inB[5]~input_o\ : std_logic;
SIGNAL \inA[5]~input_o\ : std_logic;
SIGNAL \inB[4]~input_o\ : std_logic;
SIGNAL \inA[4]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \inA[6]~input_o\ : std_logic;
SIGNAL \doJump~0_combout\ : std_logic;
SIGNAL \inB[6]~input_o\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \inB[0]~input_o\ : std_logic;
SIGNAL \inB[1]~input_o\ : std_logic;
SIGNAL \inA[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \inB[2]~input_o\ : std_logic;
SIGNAL \inA[3]~input_o\ : std_logic;
SIGNAL \inB[3]~input_o\ : std_logic;
SIGNAL \inA[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \doJump~2_combout\ : std_logic;
SIGNAL \doJump~1_combout\ : std_logic;
SIGNAL \doJump~3_combout\ : std_logic;
SIGNAL \doJump~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_inA <= inA;
ww_inB <= inB;
outO <= ww_outO;
ww_sel <= sel;
doJump <= ww_doJump;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N23
\outO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_combout\,
	devoe => ww_devoe,
	o => \outO[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\outO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_combout\,
	devoe => ww_devoe,
	o => \outO[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\outO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_combout\,
	devoe => ww_devoe,
	o => \outO[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\outO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~21_combout\,
	devoe => ww_devoe,
	o => \outO[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\outO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~25_combout\,
	devoe => ww_devoe,
	o => \outO[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\outO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~29_combout\,
	devoe => ww_devoe,
	o => \outO[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\outO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~33_combout\,
	devoe => ww_devoe,
	o => \outO[6]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\doJump~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \doJump~4_combout\,
	devoe => ww_devoe,
	o => \doJump~output_o\);

-- Location: IOIBUF_X54_Y73_N8
\inA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(0),
	o => \inA[0]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X52_Y70_N18
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (!\sel[2]~input_o\ & (!\sel[1]~input_o\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~8_combout\);

-- Location: IOIBUF_X38_Y73_N8
\inB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(5),
	o => \inB[5]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\inA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(5),
	o => \inA[5]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\inB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(4),
	o => \inB[4]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\inA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(4),
	o => \inA[4]~input_o\);

-- Location: LCCOMB_X49_Y70_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\inB[5]~input_o\ & (\inA[5]~input_o\ & (\inB[4]~input_o\ $ (!\inA[4]~input_o\)))) # (!\inB[5]~input_o\ & (!\inA[5]~input_o\ & (\inB[4]~input_o\ $ (!\inA[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[5]~input_o\,
	datab => \inA[5]~input_o\,
	datac => \inB[4]~input_o\,
	datad => \inA[4]~input_o\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X58_Y73_N8
\inA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(6),
	o => \inA[6]~input_o\);

-- Location: LCCOMB_X49_Y70_N14
\doJump~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \doJump~0_combout\ = (!\sel[1]~input_o\ & \sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	combout => \doJump~0_combout\);

-- Location: IOIBUF_X38_Y73_N1
\inB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(6),
	o => \inB[6]~input_o\);

-- Location: LCCOMB_X50_Y70_N0
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2_combout\ & (\doJump~0_combout\ & (\inA[6]~input_o\ $ (!\inB[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \inA[6]~input_o\,
	datac => \doJump~0_combout\,
	datad => \inB[6]~input_o\,
	combout => \Add0~3_combout\);

-- Location: IOIBUF_X42_Y73_N1
\inB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(0),
	o => \inB[0]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\inB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(1),
	o => \inB[1]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\inA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(1),
	o => \inA[1]~input_o\);

-- Location: LCCOMB_X49_Y70_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\inA[0]~input_o\ & (\inB[0]~input_o\ & (\inB[1]~input_o\ $ (!\inA[1]~input_o\)))) # (!\inA[0]~input_o\ & (!\inB[0]~input_o\ & (\inB[1]~input_o\ $ (!\inA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \inB[0]~input_o\,
	datac => \inB[1]~input_o\,
	datad => \inA[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X47_Y73_N1
\inB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(2),
	o => \inB[2]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\inA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(3),
	o => \inA[3]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\inB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(3),
	o => \inB[3]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\inA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(2),
	o => \inA[2]~input_o\);

-- Location: LCCOMB_X49_Y70_N10
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\inB[2]~input_o\ & (\inA[2]~input_o\ & (\inA[3]~input_o\ $ (!\inB[3]~input_o\)))) # (!\inB[2]~input_o\ & (!\inA[2]~input_o\ & (\inA[3]~input_o\ $ (!\inB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[2]~input_o\,
	datab => \inA[3]~input_o\,
	datac => \inB[3]~input_o\,
	datad => \inA[2]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X49_Y70_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\Add0~3_combout\ & (\Add0~0_combout\ & (\sel[0]~input_o\ & \Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \Add0~1_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X50_Y70_N18
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\inA[0]~input_o\ & (\inB[0]~input_o\ $ (VCC))) # (!\inA[0]~input_o\ & (\inB[0]~input_o\ & VCC))
-- \Add0~6\ = CARRY((\inA[0]~input_o\ & \inB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \inB[0]~input_o\,
	datad => VCC,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X52_Y70_N16
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (!\sel[2]~input_o\ & (\Add0~5_combout\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Add0~5_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X52_Y70_N12
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~4_combout\) # ((\Add0~7_combout\) # ((\inA[0]~input_o\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \Add0~8_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~7_combout\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X50_Y70_N20
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\inB[1]~input_o\ & ((\inA[1]~input_o\ & (\Add0~6\ & VCC)) # (!\inA[1]~input_o\ & (!\Add0~6\)))) # (!\inB[1]~input_o\ & ((\inA[1]~input_o\ & (!\Add0~6\)) # (!\inA[1]~input_o\ & ((\Add0~6\) # (GND)))))
-- \Add0~11\ = CARRY((\inB[1]~input_o\ & (!\inA[1]~input_o\ & !\Add0~6\)) # (!\inB[1]~input_o\ & ((!\Add0~6\) # (!\inA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[1]~input_o\,
	datab => \inA[1]~input_o\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X52_Y70_N6
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (!\sel[2]~input_o\ & (\Add0~10_combout\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Add0~10_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X52_Y70_N24
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12_combout\) # ((\Add0~4_combout\) # ((\inA[1]~input_o\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~4_combout\,
	datac => \inA[1]~input_o\,
	datad => \Add0~8_combout\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X50_Y70_N22
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = ((\inA[2]~input_o\ $ (\inB[2]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~15\ = CARRY((\inA[2]~input_o\ & ((\inB[2]~input_o\) # (!\Add0~11\))) # (!\inA[2]~input_o\ & (\inB[2]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[2]~input_o\,
	datab => \inB[2]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X52_Y70_N10
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (!\sel[2]~input_o\ & (\Add0~14_combout\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Add0~14_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X52_Y70_N4
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~4_combout\) # ((\Add0~16_combout\) # ((\inA[2]~input_o\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[2]~input_o\,
	datab => \Add0~8_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~16_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X50_Y70_N24
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\inB[3]~input_o\ & ((\inA[3]~input_o\ & (\Add0~15\ & VCC)) # (!\inA[3]~input_o\ & (!\Add0~15\)))) # (!\inB[3]~input_o\ & ((\inA[3]~input_o\ & (!\Add0~15\)) # (!\inA[3]~input_o\ & ((\Add0~15\) # (GND)))))
-- \Add0~19\ = CARRY((\inB[3]~input_o\ & (!\inA[3]~input_o\ & !\Add0~15\)) # (!\inB[3]~input_o\ & ((!\Add0~15\) # (!\inA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[3]~input_o\,
	datab => \inA[3]~input_o\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X52_Y70_N22
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (!\sel[2]~input_o\ & (\Add0~18_combout\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Add0~18_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X52_Y70_N0
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Add0~20_combout\) # ((\Add0~4_combout\) # ((\Add0~8_combout\ & \inA[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~8_combout\,
	datac => \Add0~4_combout\,
	datad => \inA[3]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X50_Y70_N26
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = ((\inB[4]~input_o\ $ (\inA[4]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~23\ = CARRY((\inB[4]~input_o\ & ((\inA[4]~input_o\) # (!\Add0~19\))) # (!\inB[4]~input_o\ & (\inA[4]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[4]~input_o\,
	datab => \inA[4]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X52_Y70_N26
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (!\sel[2]~input_o\ & (\Add0~22_combout\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Add0~22_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X52_Y70_N28
\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\Add0~24_combout\) # ((\Add0~4_combout\) # ((\inA[4]~input_o\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~4_combout\,
	datac => \inA[4]~input_o\,
	datad => \Add0~8_combout\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X50_Y70_N28
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\inA[5]~input_o\ & ((\inB[5]~input_o\ & (\Add0~23\ & VCC)) # (!\inB[5]~input_o\ & (!\Add0~23\)))) # (!\inA[5]~input_o\ & ((\inB[5]~input_o\ & (!\Add0~23\)) # (!\inB[5]~input_o\ & ((\Add0~23\) # (GND)))))
-- \Add0~27\ = CARRY((\inA[5]~input_o\ & (!\inB[5]~input_o\ & !\Add0~23\)) # (!\inA[5]~input_o\ & ((!\Add0~23\) # (!\inB[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[5]~input_o\,
	datab => \inB[5]~input_o\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X52_Y70_N30
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (!\sel[2]~input_o\ & (\Add0~26_combout\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Add0~26_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X52_Y70_N8
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28_combout\) # ((\Add0~4_combout\) # ((\inA[5]~input_o\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~4_combout\,
	datac => \inA[5]~input_o\,
	datad => \Add0~8_combout\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X50_Y70_N30
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = \inB[6]~input_o\ $ (\Add0~27\ $ (!\inA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[6]~input_o\,
	datad => \inA[6]~input_o\,
	cin => \Add0~27\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X52_Y70_N2
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (!\sel[2]~input_o\ & (\Add0~30_combout\ & (!\sel[1]~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Add0~30_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X52_Y70_N20
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Add0~4_combout\) # ((\Add0~32_combout\) # ((\inA[6]~input_o\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[6]~input_o\,
	datab => \Add0~8_combout\,
	datac => \Add0~4_combout\,
	datad => \Add0~32_combout\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X50_Y70_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\inA[0]~input_o\ & !\inB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \inB[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X50_Y70_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\inB[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\inA[1]~input_o\))) # (!\inB[1]~input_o\ & (!\inA[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[1]~input_o\,
	datab => \inA[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X50_Y70_N6
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\inA[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\inB[2]~input_o\))) # (!\inA[2]~input_o\ & (!\inB[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[2]~input_o\,
	datab => \inB[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X50_Y70_N8
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\inB[3]~input_o\ & ((!\LessThan0~5_cout\) # (!\inA[3]~input_o\))) # (!\inB[3]~input_o\ & (!\inA[3]~input_o\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[3]~input_o\,
	datab => \inA[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X50_Y70_N10
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\inB[4]~input_o\ & (\inA[4]~input_o\ & !\LessThan0~7_cout\)) # (!\inB[4]~input_o\ & ((\inA[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[4]~input_o\,
	datab => \inA[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X50_Y70_N12
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\inA[5]~input_o\ & (\inB[5]~input_o\ & !\LessThan0~9_cout\)) # (!\inA[5]~input_o\ & ((\inB[5]~input_o\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[5]~input_o\,
	datab => \inB[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X50_Y70_N14
\LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = (\inB[6]~input_o\ & (!\LessThan0~11_cout\ & \inA[6]~input_o\)) # (!\inB[6]~input_o\ & ((\inA[6]~input_o\) # (!\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[6]~input_o\,
	datad => \inA[6]~input_o\,
	cin => \LessThan0~11_cout\,
	combout => \LessThan0~12_combout\);

-- Location: LCCOMB_X49_Y70_N26
\doJump~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \doJump~2_combout\ = (!\inB[4]~input_o\ & (!\inB[6]~input_o\ & (\sel[0]~input_o\ & !\inB[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[4]~input_o\,
	datab => \inB[6]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inB[5]~input_o\,
	combout => \doJump~2_combout\);

-- Location: LCCOMB_X50_Y70_N16
\doJump~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \doJump~1_combout\ = (!\inB[3]~input_o\ & (!\inB[0]~input_o\ & (!\inB[2]~input_o\ & !\inB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[3]~input_o\,
	datab => \inB[0]~input_o\,
	datac => \inB[2]~input_o\,
	datad => \inB[1]~input_o\,
	combout => \doJump~1_combout\);

-- Location: LCCOMB_X49_Y70_N4
\doJump~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \doJump~3_combout\ = (\doJump~2_combout\ & (\sel[1]~input_o\ & (!\sel[2]~input_o\ & \doJump~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \doJump~2_combout\,
	datab => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \doJump~1_combout\,
	combout => \doJump~3_combout\);

-- Location: LCCOMB_X49_Y70_N22
\doJump~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \doJump~4_combout\ = (\doJump~3_combout\) # ((!\sel[0]~input_o\ & (\doJump~0_combout\ & \LessThan0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \doJump~0_combout\,
	datac => \LessThan0~12_combout\,
	datad => \doJump~3_combout\,
	combout => \doJump~4_combout\);

ww_outO(0) <= \outO[0]~output_o\;

ww_outO(1) <= \outO[1]~output_o\;

ww_outO(2) <= \outO[2]~output_o\;

ww_outO(3) <= \outO[3]~output_o\;

ww_outO(4) <= \outO[4]~output_o\;

ww_outO(5) <= \outO[5]~output_o\;

ww_outO(6) <= \outO[6]~output_o\;

ww_doJump <= \doJump~output_o\;
END structure;



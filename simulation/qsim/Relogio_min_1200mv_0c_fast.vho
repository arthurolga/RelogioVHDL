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

-- DATE "10/05/2019 17:16:36"

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

ENTITY 	mux4 IS
    PORT (
	a1 : IN std_logic_vector(8 DOWNTO 0);
	a2 : IN std_logic_vector(8 DOWNTO 0);
	Sel : IN std_logic;
	b : OUT std_logic_vector(8 DOWNTO 0)
	);
END mux4;

-- Design Ports Information
-- b[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[1]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[2]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[4]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[7]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2[8]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1[8]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_a2 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Sel : std_logic;
SIGNAL ww_b : std_logic_vector(8 DOWNTO 0);
SIGNAL \b[0]~output_o\ : std_logic;
SIGNAL \b[1]~output_o\ : std_logic;
SIGNAL \b[2]~output_o\ : std_logic;
SIGNAL \b[3]~output_o\ : std_logic;
SIGNAL \b[4]~output_o\ : std_logic;
SIGNAL \b[5]~output_o\ : std_logic;
SIGNAL \b[6]~output_o\ : std_logic;
SIGNAL \b[7]~output_o\ : std_logic;
SIGNAL \b[8]~output_o\ : std_logic;
SIGNAL \a2[0]~input_o\ : std_logic;
SIGNAL \Sel~input_o\ : std_logic;
SIGNAL \a1[0]~input_o\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \a2[1]~input_o\ : std_logic;
SIGNAL \a1[1]~input_o\ : std_logic;
SIGNAL \b~1_combout\ : std_logic;
SIGNAL \a2[2]~input_o\ : std_logic;
SIGNAL \a1[2]~input_o\ : std_logic;
SIGNAL \b~2_combout\ : std_logic;
SIGNAL \a2[3]~input_o\ : std_logic;
SIGNAL \a1[3]~input_o\ : std_logic;
SIGNAL \b~3_combout\ : std_logic;
SIGNAL \a1[4]~input_o\ : std_logic;
SIGNAL \a2[4]~input_o\ : std_logic;
SIGNAL \b~4_combout\ : std_logic;
SIGNAL \a2[5]~input_o\ : std_logic;
SIGNAL \a1[5]~input_o\ : std_logic;
SIGNAL \b~5_combout\ : std_logic;
SIGNAL \a1[6]~input_o\ : std_logic;
SIGNAL \a2[6]~input_o\ : std_logic;
SIGNAL \b~6_combout\ : std_logic;
SIGNAL \a1[7]~input_o\ : std_logic;
SIGNAL \a2[7]~input_o\ : std_logic;
SIGNAL \b~7_combout\ : std_logic;
SIGNAL \a2[8]~input_o\ : std_logic;
SIGNAL \a1[8]~input_o\ : std_logic;
SIGNAL \b~8_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a1 <= a1;
ww_a2 <= a2;
ww_Sel <= Sel;
b <= ww_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N23
\b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~0_combout\,
	devoe => ww_devoe,
	o => \b[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~1_combout\,
	devoe => ww_devoe,
	o => \b[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~2_combout\,
	devoe => ww_devoe,
	o => \b[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~3_combout\,
	devoe => ww_devoe,
	o => \b[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~4_combout\,
	devoe => ww_devoe,
	o => \b[4]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~5_combout\,
	devoe => ww_devoe,
	o => \b[5]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~6_combout\,
	devoe => ww_devoe,
	o => \b[6]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~7_combout\,
	devoe => ww_devoe,
	o => \b[7]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\b[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~8_combout\,
	devoe => ww_devoe,
	o => \b[8]~output_o\);

-- Location: IOIBUF_X0_Y29_N15
\a2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(0),
	o => \a2[0]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\Sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel,
	o => \Sel~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\a1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(0),
	o => \a1[0]~input_o\);

-- Location: LCCOMB_X1_Y33_N16
\b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~0_combout\ = (\Sel~input_o\ & (\a2[0]~input_o\)) # (!\Sel~input_o\ & ((\a1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a2[0]~input_o\,
	datac => \Sel~input_o\,
	datad => \a1[0]~input_o\,
	combout => \b~0_combout\);

-- Location: IOIBUF_X0_Y28_N15
\a2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(1),
	o => \a2[1]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\a1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(1),
	o => \a1[1]~input_o\);

-- Location: LCCOMB_X1_Y32_N16
\b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~1_combout\ = (\Sel~input_o\ & (\a2[1]~input_o\)) # (!\Sel~input_o\ & ((\a1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a2[1]~input_o\,
	datac => \Sel~input_o\,
	datad => \a1[1]~input_o\,
	combout => \b~1_combout\);

-- Location: IOIBUF_X0_Y35_N8
\a2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(2),
	o => \a2[2]~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\a1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(2),
	o => \a1[2]~input_o\);

-- Location: LCCOMB_X1_Y33_N18
\b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~2_combout\ = (\Sel~input_o\ & (\a2[2]~input_o\)) # (!\Sel~input_o\ & ((\a1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2[2]~input_o\,
	datab => \a1[2]~input_o\,
	datac => \Sel~input_o\,
	combout => \b~2_combout\);

-- Location: IOIBUF_X0_Y42_N1
\a2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(3),
	o => \a2[3]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\a1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(3),
	o => \a1[3]~input_o\);

-- Location: LCCOMB_X1_Y45_N16
\b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~3_combout\ = (\Sel~input_o\ & (\a2[3]~input_o\)) # (!\Sel~input_o\ & ((\a1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datac => \a2[3]~input_o\,
	datad => \a1[3]~input_o\,
	combout => \b~3_combout\);

-- Location: IOIBUF_X0_Y44_N1
\a1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(4),
	o => \a1[4]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\a2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(4),
	o => \a2[4]~input_o\);

-- Location: LCCOMB_X1_Y44_N16
\b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~4_combout\ = (\Sel~input_o\ & ((\a2[4]~input_o\))) # (!\Sel~input_o\ & (\a1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datab => \a1[4]~input_o\,
	datad => \a2[4]~input_o\,
	combout => \b~4_combout\);

-- Location: IOIBUF_X0_Y34_N1
\a2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(5),
	o => \a2[5]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\a1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(5),
	o => \a1[5]~input_o\);

-- Location: LCCOMB_X1_Y34_N16
\b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~5_combout\ = (\Sel~input_o\ & (\a2[5]~input_o\)) # (!\Sel~input_o\ & ((\a1[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2[5]~input_o\,
	datac => \a1[5]~input_o\,
	datad => \Sel~input_o\,
	combout => \b~5_combout\);

-- Location: IOIBUF_X0_Y34_N22
\a1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(6),
	o => \a1[6]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\a2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(6),
	o => \a2[6]~input_o\);

-- Location: LCCOMB_X1_Y34_N26
\b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~6_combout\ = (\Sel~input_o\ & ((\a2[6]~input_o\))) # (!\Sel~input_o\ & (\a1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1[6]~input_o\,
	datab => \a2[6]~input_o\,
	datad => \Sel~input_o\,
	combout => \b~6_combout\);

-- Location: IOIBUF_X0_Y43_N15
\a1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(7),
	o => \a1[7]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\a2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(7),
	o => \a2[7]~input_o\);

-- Location: LCCOMB_X1_Y44_N26
\b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~7_combout\ = (\Sel~input_o\ & ((\a2[7]~input_o\))) # (!\Sel~input_o\ & (\a1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel~input_o\,
	datac => \a1[7]~input_o\,
	datad => \a2[7]~input_o\,
	combout => \b~7_combout\);

-- Location: IOIBUF_X0_Y34_N15
\a2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2(8),
	o => \a2[8]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\a1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1(8),
	o => \a1[8]~input_o\);

-- Location: LCCOMB_X1_Y34_N20
\b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b~8_combout\ = (\Sel~input_o\ & (\a2[8]~input_o\)) # (!\Sel~input_o\ & ((\a1[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2[8]~input_o\,
	datab => \a1[8]~input_o\,
	datad => \Sel~input_o\,
	combout => \b~8_combout\);

ww_b(0) <= \b[0]~output_o\;

ww_b(1) <= \b[1]~output_o\;

ww_b(2) <= \b[2]~output_o\;

ww_b(3) <= \b[3]~output_o\;

ww_b(4) <= \b[4]~output_o\;

ww_b(5) <= \b[5]~output_o\;

ww_b(6) <= \b[6]~output_o\;

ww_b(7) <= \b[7]~output_o\;

ww_b(8) <= \b[8]~output_o\;
END structure;



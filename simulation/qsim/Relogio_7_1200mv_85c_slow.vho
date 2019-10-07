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

-- DATE "10/07/2019 16:22:10"

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
-- outO[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[4]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[5]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[6]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- doJump	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[0]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[1]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[2]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[3]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[6]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Mux9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outO[0]~output_o\ : std_logic;
SIGNAL \outO[1]~output_o\ : std_logic;
SIGNAL \outO[2]~output_o\ : std_logic;
SIGNAL \outO[3]~output_o\ : std_logic;
SIGNAL \outO[4]~output_o\ : std_logic;
SIGNAL \outO[5]~output_o\ : std_logic;
SIGNAL \outO[6]~output_o\ : std_logic;
SIGNAL \doJump~output_o\ : std_logic;
SIGNAL \inB[0]~input_o\ : std_logic;
SIGNAL \inA[0]~input_o\ : std_logic;
SIGNAL \inB[1]~input_o\ : std_logic;
SIGNAL \inA[1]~input_o\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \inB[5]~input_o\ : std_logic;
SIGNAL \inA[5]~input_o\ : std_logic;
SIGNAL \inB[4]~input_o\ : std_logic;
SIGNAL \inA[4]~input_o\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \inA[6]~input_o\ : std_logic;
SIGNAL \inB[6]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \inA[3]~input_o\ : std_logic;
SIGNAL \inB[2]~input_o\ : std_logic;
SIGNAL \inB[3]~input_o\ : std_logic;
SIGNAL \inA[2]~input_o\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~0clkctrl_outclk\ : std_logic;
SIGNAL \outO[0]$latch~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \outO[1]$latch~combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \outO[2]$latch~combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \outO[3]$latch~combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \outO[4]$latch~combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \outO[5]$latch~combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \outO[6]$latch~combout\ : std_logic;

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

\Mux9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux9~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N2
\outO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outO[0]$latch~combout\,
	devoe => ww_devoe,
	o => \outO[0]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\outO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outO[1]$latch~combout\,
	devoe => ww_devoe,
	o => \outO[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\outO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outO[2]$latch~combout\,
	devoe => ww_devoe,
	o => \outO[2]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\outO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outO[3]$latch~combout\,
	devoe => ww_devoe,
	o => \outO[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\outO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outO[4]$latch~combout\,
	devoe => ww_devoe,
	o => \outO[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\outO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outO[5]$latch~combout\,
	devoe => ww_devoe,
	o => \outO[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\outO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outO[6]$latch~combout\,
	devoe => ww_devoe,
	o => \outO[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\doJump~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \doJump~output_o\);

-- Location: IOIBUF_X56_Y0_N15
\inB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(0),
	o => \inB[0]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\inA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(0),
	o => \inA[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\inB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(1),
	o => \inB[1]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\inA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(1),
	o => \inA[1]~input_o\);

-- Location: LCCOMB_X56_Y1_N18
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\inB[0]~input_o\ & (\inA[0]~input_o\ & (\inB[1]~input_o\ $ (!\inA[1]~input_o\)))) # (!\inB[0]~input_o\ & (!\inA[0]~input_o\ & (\inB[1]~input_o\ $ (!\inA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[0]~input_o\,
	datab => \inA[0]~input_o\,
	datac => \inB[1]~input_o\,
	datad => \inA[1]~input_o\,
	combout => \Add0~3_combout\);

-- Location: IOIBUF_X52_Y0_N1
\inB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(5),
	o => \inB[5]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\inA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(5),
	o => \inA[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\inB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(4),
	o => \inB[4]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\inA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(4),
	o => \inA[4]~input_o\);

-- Location: LCCOMB_X55_Y1_N8
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\inB[5]~input_o\ & (\inA[5]~input_o\ & (\inB[4]~input_o\ $ (!\inA[4]~input_o\)))) # (!\inB[5]~input_o\ & (!\inA[5]~input_o\ & (\inB[4]~input_o\ $ (!\inA[4]~input_o\))))

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
	combout => \Add0~5_combout\);

-- Location: IOIBUF_X56_Y0_N1
\inA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(6),
	o => \inA[6]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\inB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(6),
	o => \inB[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LCCOMB_X56_Y1_N20
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~5_combout\ & (\sel[2]~input_o\ & (\inA[6]~input_o\ $ (!\inB[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \inA[6]~input_o\,
	datac => \inB[6]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X56_Y1_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\inB[0]~input_o\ & (\inA[0]~input_o\ $ (VCC))) # (!\inB[0]~input_o\ & (\inA[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\inB[0]~input_o\ & \inA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[0]~input_o\,
	datab => \inA[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X56_Y0_N22
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X56_Y1_N24
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & (\inA[0]~input_o\)) # (!\sel[0]~input_o\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X60_Y0_N15
\inA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(3),
	o => \inA[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\inB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(2),
	o => \inB[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\inB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(3),
	o => \inB[3]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\inA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(2),
	o => \inA[2]~input_o\);

-- Location: LCCOMB_X56_Y1_N2
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\inA[3]~input_o\ & (\inB[3]~input_o\ & (\inB[2]~input_o\ $ (!\inA[2]~input_o\)))) # (!\inA[3]~input_o\ & (!\inB[3]~input_o\ & (\inB[2]~input_o\ $ (!\inA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[3]~input_o\,
	datab => \inB[2]~input_o\,
	datac => \inB[3]~input_o\,
	datad => \inA[2]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X56_Y1_N22
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~2_combout\) # ((\Add0~3_combout\ & (\Add0~6_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~4_combout\,
	combout => \Add0~7_combout\);

-- Location: IOIBUF_X65_Y0_N8
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X57_Y1_N8
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\sel[1]~input_o\) # ((\sel[2]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: CLKCTRL_G18
\Mux9~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux9~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y1_N28
\outO[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[0]$latch~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\outO[0]$latch~combout\)) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((\Add0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outO[0]$latch~combout\,
	datac => \Add0~7_combout\,
	datad => \Mux9~0clkctrl_outclk\,
	combout => \outO[0]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N6
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\inB[1]~input_o\ & ((\inA[1]~input_o\ & (\Add0~1\ & VCC)) # (!\inA[1]~input_o\ & (!\Add0~1\)))) # (!\inB[1]~input_o\ & ((\inA[1]~input_o\ & (!\Add0~1\)) # (!\inA[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~9\ = CARRY((\inB[1]~input_o\ & (!\inA[1]~input_o\ & !\Add0~1\)) # (!\inB[1]~input_o\ & ((!\Add0~1\) # (!\inA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[1]~input_o\,
	datab => \inA[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X57_Y1_N2
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & (\inA[1]~input_o\)) # (!\sel[0]~input_o\ & ((\Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[1]~input_o\,
	datab => \sel[2]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \Add0~8_combout\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X57_Y1_N16
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10_combout\) # ((\Add0~4_combout\ & (\Add0~6_combout\ & \Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~3_combout\,
	datad => \Add0~10_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X57_Y1_N28
\outO[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[1]$latch~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\outO[1]$latch~combout\)) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((\Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outO[1]$latch~combout\,
	datac => \Mux9~0clkctrl_outclk\,
	datad => \Add0~11_combout\,
	combout => \outO[1]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N8
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\inB[2]~input_o\ $ (\inA[2]~input_o\ $ (!\Add0~9\)))) # (GND)
-- \Add0~13\ = CARRY((\inB[2]~input_o\ & ((\inA[2]~input_o\) # (!\Add0~9\))) # (!\inB[2]~input_o\ & (\inA[2]~input_o\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[2]~input_o\,
	datab => \inA[2]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X57_Y1_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & (\inA[2]~input_o\)) # (!\sel[0]~input_o\ & ((\Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[2]~input_o\,
	datab => \Add0~12_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X57_Y1_N24
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14_combout\) # ((\Add0~4_combout\ & (\Add0~3_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~14_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X57_Y1_N10
\outO[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[2]$latch~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\outO[2]$latch~combout\)) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((\Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outO[2]$latch~combout\,
	datac => \Add0~15_combout\,
	datad => \Mux9~0clkctrl_outclk\,
	combout => \outO[2]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N10
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\inA[3]~input_o\ & ((\inB[3]~input_o\ & (\Add0~13\ & VCC)) # (!\inB[3]~input_o\ & (!\Add0~13\)))) # (!\inA[3]~input_o\ & ((\inB[3]~input_o\ & (!\Add0~13\)) # (!\inB[3]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~17\ = CARRY((\inA[3]~input_o\ & (!\inB[3]~input_o\ & !\Add0~13\)) # (!\inA[3]~input_o\ & ((!\Add0~13\) # (!\inB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[3]~input_o\,
	datab => \inB[3]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X57_Y1_N18
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & ((\inA[3]~input_o\))) # (!\sel[0]~input_o\ & (\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \inA[3]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X57_Y1_N14
\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\Add0~18_combout\) # ((\Add0~4_combout\ & (\Add0~3_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~18_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X57_Y1_N20
\outO[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[3]$latch~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\outO[3]$latch~combout\)) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((\Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outO[3]$latch~combout\,
	datac => \Add0~19_combout\,
	datad => \Mux9~0clkctrl_outclk\,
	combout => \outO[3]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N12
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\inA[4]~input_o\ $ (\inB[4]~input_o\ $ (!\Add0~17\)))) # (GND)
-- \Add0~21\ = CARRY((\inA[4]~input_o\ & ((\inB[4]~input_o\) # (!\Add0~17\))) # (!\inA[4]~input_o\ & (\inB[4]~input_o\ & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[4]~input_o\,
	datab => \inB[4]~input_o\,
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X57_Y1_N6
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & ((\inA[4]~input_o\))) # (!\sel[0]~input_o\ & (\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \inA[4]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X57_Y1_N4
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Add0~22_combout\) # ((\Add0~4_combout\ & (\Add0~3_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~22_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X57_Y1_N12
\outO[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[4]$latch~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\outO[4]$latch~combout\)) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((\Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outO[4]$latch~combout\,
	datab => \Add0~23_combout\,
	datad => \Mux9~0clkctrl_outclk\,
	combout => \outO[4]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N14
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\inB[5]~input_o\ & ((\inA[5]~input_o\ & (\Add0~21\ & VCC)) # (!\inA[5]~input_o\ & (!\Add0~21\)))) # (!\inB[5]~input_o\ & ((\inA[5]~input_o\ & (!\Add0~21\)) # (!\inA[5]~input_o\ & ((\Add0~21\) # (GND)))))
-- \Add0~25\ = CARRY((\inB[5]~input_o\ & (!\inA[5]~input_o\ & !\Add0~21\)) # (!\inB[5]~input_o\ & ((!\Add0~21\) # (!\inA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[5]~input_o\,
	datab => \inA[5]~input_o\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X57_Y1_N22
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & ((\inA[5]~input_o\))) # (!\sel[0]~input_o\ & (\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \inA[5]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[2]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X57_Y1_N0
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Add0~26_combout\) # ((\Add0~4_combout\ & (\Add0~3_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~26_combout\,
	datac => \Add0~3_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X57_Y1_N30
\outO[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[5]$latch~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & ((\outO[5]$latch~combout\))) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & (\Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~27_combout\,
	datac => \outO[5]$latch~combout\,
	datad => \Mux9~0clkctrl_outclk\,
	combout => \outO[5]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N16
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \inB[6]~input_o\ $ (\Add0~25\ $ (!\inA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inB[6]~input_o\,
	datad => \inA[6]~input_o\,
	cin => \Add0~25\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X56_Y1_N0
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (!\sel[2]~input_o\ & ((\sel[0]~input_o\ & (\inA[6]~input_o\)) # (!\sel[0]~input_o\ & ((\Add0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \inA[6]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \Add0~28_combout\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X56_Y1_N26
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~30_combout\) # ((\Add0~6_combout\ & (\Add0~3_combout\ & \Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~6_combout\,
	datac => \Add0~3_combout\,
	datad => \Add0~4_combout\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X56_Y1_N30
\outO[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[6]$latch~combout\ = (GLOBAL(\Mux9~0clkctrl_outclk\) & (\outO[6]$latch~combout\)) # (!GLOBAL(\Mux9~0clkctrl_outclk\) & ((\Add0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outO[6]$latch~combout\,
	datac => \Add0~31_combout\,
	datad => \Mux9~0clkctrl_outclk\,
	combout => \outO[6]$latch~combout\);

ww_outO(0) <= \outO[0]~output_o\;

ww_outO(1) <= \outO[1]~output_o\;

ww_outO(2) <= \outO[2]~output_o\;

ww_outO(3) <= \outO[3]~output_o\;

ww_outO(4) <= \outO[4]~output_o\;

ww_outO(5) <= \outO[5]~output_o\;

ww_outO(6) <= \outO[6]~output_o\;

ww_doJump <= \doJump~output_o\;
END structure;



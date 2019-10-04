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

-- DATE "09/27/2019 10:47:41"

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
	inA : IN std_logic_vector(3 DOWNTO 0);
	inB : IN std_logic_vector(3 DOWNTO 0);
	outO : OUT std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0)
	);
END ULA;

-- Design Ports Information
-- outO[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outO[3]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[0]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[2]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inA[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inB[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_inA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outO : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outO[0]~output_o\ : std_logic;
SIGNAL \outO[1]~output_o\ : std_logic;
SIGNAL \outO[2]~output_o\ : std_logic;
SIGNAL \outO[3]~output_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \inA[0]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \inB[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \inB[1]~input_o\ : std_logic;
SIGNAL \inA[1]~input_o\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \inB[2]~input_o\ : std_logic;
SIGNAL \inB[3]~input_o\ : std_logic;
SIGNAL \inA[2]~input_o\ : std_logic;
SIGNAL \inA[3]~input_o\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \outO[0]$latch~combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \outO[1]$latch~combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \outO[2]$latch~combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \outO[3]$latch~combout\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux4~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOIBUF_X56_Y0_N15
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\inA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(0),
	o => \inA[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
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
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\inA[0]~input_o\ & !\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inA[0]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X56_Y0_N22
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\inB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(0),
	o => \inB[0]~input_o\);

-- Location: LCCOMB_X56_Y1_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\inA[0]~input_o\ & (\inB[0]~input_o\ $ (VCC))) # (!\inA[0]~input_o\ & (\inB[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\inA[0]~input_o\ & \inB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[0]~input_o\,
	datab => \inB[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X56_Y1_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel[1]~input_o\ & (\sel[0]~input_o\)) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\inA[0]~input_o\)) # (!\sel[0]~input_o\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \inA[0]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X56_Y1_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\inA[0]~input_o\) # (\inB[0]~input_o\)) # (!\sel[1]~input_o\))) # (!\Mux0~0_combout\ & (\sel[1]~input_o\ & (\inA[0]~input_o\ & \inB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \sel[1]~input_o\,
	datac => \inA[0]~input_o\,
	datad => \inB[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X56_Y0_N1
\inB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(1),
	o => \inB[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\inA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(1),
	o => \inA[1]~input_o\);

-- Location: LCCOMB_X56_Y1_N14
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\inB[1]~input_o\ & (\inA[1]~input_o\ & (\inA[0]~input_o\ $ (!\inB[0]~input_o\)))) # (!\inB[1]~input_o\ & (!\inA[1]~input_o\ & (\inA[0]~input_o\ $ (!\inB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[1]~input_o\,
	datab => \inA[1]~input_o\,
	datac => \inA[0]~input_o\,
	datad => \inB[0]~input_o\,
	combout => \Mux0~3_combout\);

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

-- Location: IOIBUF_X60_Y0_N15
\inB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inB(3),
	o => \inB[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\inA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(2),
	o => \inA[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\inA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inA(3),
	o => \inA[3]~input_o\);

-- Location: LCCOMB_X57_Y1_N4
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\inB[2]~input_o\ & (\inA[2]~input_o\ & (\inB[3]~input_o\ $ (!\inA[3]~input_o\)))) # (!\inB[2]~input_o\ & (!\inA[2]~input_o\ & (\inB[3]~input_o\ $ (!\inA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inB[2]~input_o\,
	datab => \inB[3]~input_o\,
	datac => \inA[2]~input_o\,
	datad => \inA[3]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X57_Y1_N18
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~3_combout\ & (\Mux0~4_combout\ & \sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datac => \Mux0~4_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X56_Y1_N28
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\sel[2]~input_o\ & ((\Mux0~2_combout\) # ((\Mux0~5_combout\)))) # (!\sel[2]~input_o\ & (((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux0~2_combout\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X57_Y1_N8
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sel[2]~input_o\ & \sel[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: CLKCTRL_G18
\Mux4~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y1_N30
\outO[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[0]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\outO[0]$latch~combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outO[0]$latch~combout\,
	datac => \Mux0~6_combout\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \outO[0]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N22
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\inA[1]~input_o\ & !\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inA[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X56_Y1_N8
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\inB[1]~input_o\ & ((\inA[1]~input_o\ & (\Add0~1\ & VCC)) # (!\inA[1]~input_o\ & (!\Add0~1\)))) # (!\inB[1]~input_o\ & ((\inA[1]~input_o\ & (!\Add0~1\)) # (!\inA[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\inB[1]~input_o\ & (!\inA[1]~input_o\ & !\Add0~1\)) # (!\inB[1]~input_o\ & ((!\Add0~1\) # (!\inA[1]~input_o\))))

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
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X56_Y1_N18
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\inA[1]~input_o\)) # (!\sel[0]~input_o\ & ((\Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inA[1]~input_o\,
	datac => \Add0~2_combout\,
	datad => \sel[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X56_Y1_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\sel[1]~input_o\ & ((\inA[1]~input_o\ & ((\Mux1~0_combout\) # (\inB[1]~input_o\))) # (!\inA[1]~input_o\ & (\Mux1~0_combout\ & \inB[1]~input_o\)))) # (!\sel[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inA[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \inB[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X56_Y1_N0
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\sel[2]~input_o\ & ((\Mux1~2_combout\) # ((\Mux0~5_combout\)))) # (!\sel[2]~input_o\ & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \sel[2]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X56_Y1_N4
\outO[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[1]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\outO[1]$latch~combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \outO[1]$latch~combout\,
	datac => \Mux1~3_combout\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \outO[1]$latch~combout\);

-- Location: LCCOMB_X57_Y1_N30
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!\inA[2]~input_o\ & !\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inA[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X56_Y1_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\inB[2]~input_o\ $ (\inA[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\inB[2]~input_o\ & ((\inA[2]~input_o\) # (!\Add0~3\))) # (!\inB[2]~input_o\ & (\inA[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inB[2]~input_o\,
	datab => \inA[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X57_Y1_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\inA[2]~input_o\))) # (!\sel[0]~input_o\ & (\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \inA[2]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X57_Y1_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\sel[1]~input_o\ & ((\inA[2]~input_o\ & ((\Mux2~0_combout\) # (\inB[2]~input_o\))) # (!\inA[2]~input_o\ & (\Mux2~0_combout\ & \inB[2]~input_o\)))) # (!\sel[1]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \inA[2]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \inB[2]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X57_Y1_N6
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\sel[2]~input_o\ & ((\Mux2~2_combout\) # ((\Mux0~5_combout\)))) # (!\sel[2]~input_o\ & (((\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux0~5_combout\,
	datac => \Mux2~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X57_Y1_N22
\outO[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[2]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\outO[2]$latch~combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \outO[2]$latch~combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \outO[2]$latch~combout\);

-- Location: LCCOMB_X56_Y1_N12
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \inA[3]~input_o\ $ (\Add0~5\ $ (\inB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inA[3]~input_o\,
	datad => \inB[3]~input_o\,
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X57_Y1_N28
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\sel[1]~input_o\ & (\inB[3]~input_o\)) # (!\sel[1]~input_o\ & ((\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inB[3]~input_o\,
	datac => \sel[1]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X57_Y1_N26
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\sel[2]~input_o\ & ((\Mux0~5_combout\))) # (!\sel[2]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \Mux3~0_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X57_Y1_N24
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = \sel[0]~input_o\ $ (((\Mux3~1_combout\ & \sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datac => \sel[1]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X57_Y1_N16
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & ((\sel[2]~input_o\ & ((\Mux3~1_combout\))) # (!\sel[2]~input_o\ & (\inA[3]~input_o\)))) # (!\Mux3~2_combout\ & ((\Mux3~1_combout\) # ((!\inA[3]~input_o\ & \sel[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inA[3]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~1_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X57_Y1_N12
\outO[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \outO[3]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & ((\outO[3]$latch~combout\))) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & (\Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datac => \Mux4~0clkctrl_outclk\,
	datad => \outO[3]$latch~combout\,
	combout => \outO[3]$latch~combout\);

ww_outO(0) <= \outO[0]~output_o\;

ww_outO(1) <= \outO[1]~output_o\;

ww_outO(2) <= \outO[2]~output_o\;

ww_outO(3) <= \outO[3]~output_o\;
END structure;



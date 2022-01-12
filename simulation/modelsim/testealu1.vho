-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "01/09/2022 21:08:40"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	testealu1 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	cout : BUFFER std_logic;
	flag : BUFFER std_logic;
	OUTPUT : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END testealu1;

-- Design Ports Information
-- cout	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testealu1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_flag : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux7~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cout~output_o\ : std_logic;
SIGNAL \flag~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \flag$latch~combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL Temp : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_sel <= sel;
cout <= ww_cout;
flag <= ww_flag;
OUTPUT <= ww_OUTPUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux7~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux7~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N9
\cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cout~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag$latch~combout\,
	devoe => ww_devoe,
	o => \flag~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\OUTPUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\OUTPUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\OUTPUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\OUTPUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOIBUF_X28_Y24_N15
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X31_Y20_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\sel[0]~input_o\ & (\sel[2]~input_o\ $ (!\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X28_Y24_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X32_Y20_N8
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & !\A[0]~input_o\))) # (!\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & !\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y20_N12
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\A[2]~input_o\ & (\B[2]~input_o\ & \LessThan0~2_combout\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datac => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y20_N6
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\A[3]~input_o\ & (\B[3]~input_o\ & \LessThan0~4_combout\)) # (!\A[3]~input_o\ & ((\B[3]~input_o\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y20_N14
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \sel[2]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X33_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \sel[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X32_Y20_N2
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \sel[2]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X30_Y20_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \sel[2]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X31_Y20_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X31_Y20_N8
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\A[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\A[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\A[0]~input_o\ & (!\Add0~2_cout\)) # (!\A[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\A[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \A[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X31_Y20_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\A[1]~input_o\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\A[1]~input_o\) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\A[1]~input_o\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X31_Y20_N12
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\A[2]~input_o\ & (\Add0~7\ & VCC)) # (!\A[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\A[2]~input_o\ & (!\Add0~7\)) # (!\A[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\A[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X31_Y20_N14
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\A[3]~input_o\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\A[3]~input_o\) # (!\Add0~10\))) # (!\Add0~11_combout\ & (\A[3]~input_o\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \A[3]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y20_N16
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X33_Y20_N6
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\sel[1]~input_o\ & (\sel[2]~input_o\ & \sel[0]~input_o\)) # (!\sel[1]~input_o\ & (!\sel[2]~input_o\ & !\sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: CLKCTRL_G7
\Mux7~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux7~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux7~0clkctrl_outclk\);

-- Location: LCCOMB_X31_Y20_N24
\Temp[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- Temp(4) = (GLOBAL(\Mux7~0clkctrl_outclk\) & ((\Add0~14_combout\))) # (!GLOBAL(\Mux7~0clkctrl_outclk\) & (Temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Temp(4),
	datac => \Add0~14_combout\,
	datad => \Mux7~0clkctrl_outclk\,
	combout => Temp(4));

-- Location: LCCOMB_X31_Y20_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\sel[1]~input_o\ & ((Temp(4)))) # (!\sel[1]~input_o\ & (\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \sel[1]~input_o\,
	datad => Temp(4),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X31_Y20_N2
\flag$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag$latch~combout\ = (\Mux5~0_combout\ & ((\Mux0~0_combout\))) # (!\Mux5~0_combout\ & (\flag$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \flag$latch~combout\,
	datad => \Mux0~0_combout\,
	combout => \flag$latch~combout\);

-- Location: LCCOMB_X31_Y20_N0
\Temp[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- Temp(0) = (GLOBAL(\Mux7~0clkctrl_outclk\) & ((\Add0~3_combout\))) # (!GLOBAL(\Mux7~0clkctrl_outclk\) & (Temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Temp(0),
	datac => \Add0~3_combout\,
	datad => \Mux7~0clkctrl_outclk\,
	combout => Temp(0));

-- Location: LCCOMB_X31_Y20_N20
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\sel[2]~input_o\ & ((!\sel[1]~input_o\) # (!\sel[0]~input_o\))) # (!\sel[2]~input_o\ & ((\sel[0]~input_o\) # (\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[2]~input_o\,
	datab => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X33_Y20_N24
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\sel[1]~input_o\) # (!\sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \sel[2]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X32_Y20_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & ((\A[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\A[0]~input_o\) # (!\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X31_Y20_N4
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\sel[1]~input_o\ & ((\sel[0]~input_o\))) # (!\sel[1]~input_o\ & (!\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X32_Y20_N24
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\B[0]~input_o\ & ((GND) # (!\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ $ (GND)))
-- \Add2~1\ = CARRY((\B[0]~input_o\) # (!\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X33_Y20_N14
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~1_combout\ & ((\Add1~0_combout\) # ((\sel[1]~input_o\)))) # (!\Mux4~1_combout\ & (((!\sel[1]~input_o\ & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Mux4~1_combout\,
	datac => \sel[1]~input_o\,
	datad => \Add2~0_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X33_Y20_N22
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\B[0]~input_o\ & ((\Mux4~7_combout\) # ((\sel[1]~input_o\ & \A[0]~input_o\)))) # (!\B[0]~input_o\ & (\Mux4~7_combout\ & ((\A[0]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Mux4~7_combout\,
	datac => \sel[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X33_Y20_N2
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\sel[2]~input_o\ & ((\sel[1]~input_o\) # (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \sel[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X33_Y20_N26
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~0_combout\ & (((!\B[0]~input_o\) # (!\Mux4~2_combout\)))) # (!\Mux4~0_combout\ & ((\Mux4~2_combout\ & (\Mux4~8_combout\)) # (!\Mux4~2_combout\ & ((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~8_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux4~2_combout\,
	datad => \B[0]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X33_Y20_N16
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = \Mux4~5_combout\ $ (((!\Mux4~2_combout\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~2_combout\,
	datac => \Mux4~5_combout\,
	datad => \A[0]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X30_Y20_N28
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~3_combout\ & ((\Mux4~6_combout\))) # (!\Mux4~3_combout\ & (Temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Temp(0),
	datac => \Mux4~3_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X31_Y20_N30
\Temp[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- Temp(1) = (GLOBAL(\Mux7~0clkctrl_outclk\) & ((\Add0~6_combout\))) # (!GLOBAL(\Mux7~0clkctrl_outclk\) & (Temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Temp(1),
	datac => \Add0~6_combout\,
	datad => \Mux7~0clkctrl_outclk\,
	combout => Temp(1));

-- Location: LCCOMB_X32_Y20_N26
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add2~1\)) # (!\A[1]~input_o\ & (\Add2~1\ & VCC)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & ((\Add2~1\) # (GND))) # (!\A[1]~input_o\ & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\B[1]~input_o\ & (\A[1]~input_o\ & !\Add2~1\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X32_Y20_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add1~1\)) # (!\A[1]~input_o\ & ((\Add1~1\) # (GND))))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add1~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\B[1]~input_o\ & ((!\Add1~1\) # (!\A[1]~input_o\))) # (!\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X33_Y20_N18
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux4~1_combout\ & (((\sel[1]~input_o\) # (\Add1~2_combout\)))) # (!\Mux4~1_combout\ & (\Add2~2_combout\ & (!\sel[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Mux4~1_combout\,
	datac => \sel[1]~input_o\,
	datad => \Add1~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X33_Y20_N12
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\sel[1]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\) # (\Mux3~3_combout\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & \Mux3~3_combout\)))) # (!\sel[1]~input_o\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X33_Y20_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux4~2_combout\ & (((\Mux4~0_combout\)))) # (!\Mux4~2_combout\ & (\A[1]~input_o\ $ (((\B[1]~input_o\) # (\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~2_combout\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X33_Y20_N30
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((!\Mux4~2_combout\) # (!\B[1]~input_o\)))) # (!\Mux3~0_combout\ & (\Mux3~4_combout\ & ((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux3~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X30_Y20_N2
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux4~3_combout\ & ((\Mux3~1_combout\))) # (!\Mux4~3_combout\ & (Temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Temp(1),
	datac => \Mux4~3_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X31_Y20_N22
\Temp[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- Temp(2) = (GLOBAL(\Mux7~0clkctrl_outclk\) & (\Add0~9_combout\)) # (!GLOBAL(\Mux7~0clkctrl_outclk\) & ((Temp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~9_combout\,
	datac => Temp(2),
	datad => \Mux7~0clkctrl_outclk\,
	combout => Temp(2));

-- Location: LCCOMB_X32_Y20_N18
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\A[2]~input_o\ & ((!\Add1~3\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X32_Y20_N28
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((\A[2]~input_o\ & (\B[2]~input_o\ & !\Add2~3\)) # (!\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X32_Y20_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\sel[1]~input_o\ & (((\Mux4~1_combout\)))) # (!\sel[1]~input_o\ & ((\Mux4~1_combout\ & (\Add1~4_combout\)) # (!\Mux4~1_combout\ & ((\Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add1~4_combout\,
	datac => \Mux4~1_combout\,
	datad => \Add2~4_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X33_Y20_N10
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\sel[1]~input_o\ & ((\B[2]~input_o\ & ((\Mux2~0_combout\) # (\A[2]~input_o\))) # (!\B[2]~input_o\ & (\Mux2~0_combout\ & \A[2]~input_o\)))) # (!\sel[1]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \A[2]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X33_Y20_N4
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux4~0_combout\ & (((!\B[2]~input_o\) # (!\Mux4~2_combout\)))) # (!\Mux4~0_combout\ & ((\Mux4~2_combout\ & (\Mux2~1_combout\)) # (!\Mux4~2_combout\ & ((\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux4~0_combout\,
	datac => \Mux4~2_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X33_Y20_N20
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = \Mux2~3_combout\ $ (((!\Mux4~2_combout\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~2_combout\,
	datac => \Mux2~3_combout\,
	datad => \A[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X30_Y20_N12
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux4~3_combout\ & ((\Mux2~4_combout\))) # (!\Mux4~3_combout\ & (Temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Temp(2),
	datac => \Mux4~3_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X31_Y20_N26
\Temp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- Temp(3) = (GLOBAL(\Mux7~0clkctrl_outclk\) & (\Add0~12_combout\)) # (!GLOBAL(\Mux7~0clkctrl_outclk\) & ((Temp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datac => Temp(3),
	datad => \Mux7~0clkctrl_outclk\,
	combout => Temp(3));

-- Location: LCCOMB_X32_Y20_N20
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \A[3]~input_o\ $ (\Add1~5\ $ (!\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X32_Y20_N30
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = \A[3]~input_o\ $ (\Add2~5\ $ (!\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	cin => \Add2~5\,
	combout => \Add2~6_combout\);

-- Location: LCCOMB_X33_Y20_N28
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\sel[1]~input_o\ & (((\Mux4~1_combout\)))) # (!\sel[1]~input_o\ & ((\Mux4~1_combout\ & (\Add1~6_combout\)) # (!\Mux4~1_combout\ & ((\Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Add1~6_combout\,
	datac => \Mux4~1_combout\,
	datad => \Add2~6_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X32_Y20_N22
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\sel[1]~input_o\ & ((\B[3]~input_o\ & ((\A[3]~input_o\) # (\Mux1~3_combout\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & \Mux1~3_combout\)))) # (!\sel[1]~input_o\ & (((\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X32_Y20_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux4~2_combout\ & (\Mux4~0_combout\)) # (!\Mux4~2_combout\ & (\A[3]~input_o\ $ (((\Mux4~0_combout\) # (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Mux4~2_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y20_N4
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux4~2_combout\ & ((\Mux1~0_combout\ & ((!\B[3]~input_o\))) # (!\Mux1~0_combout\ & (\Mux1~4_combout\)))) # (!\Mux4~2_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => \Mux4~2_combout\,
	datac => \B[3]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X30_Y20_N10
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux4~3_combout\ & ((\Mux1~1_combout\))) # (!\Mux4~3_combout\ & (Temp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Temp(3),
	datac => \Mux4~3_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~2_combout\);

ww_cout <= \cout~output_o\;

ww_flag <= \flag~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;
END structure;



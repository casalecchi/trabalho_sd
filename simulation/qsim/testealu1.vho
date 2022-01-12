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

-- DATE "01/11/2022 00:36:03"

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
	O : OUT std_logic_vector(3 DOWNTO 0);
	selection : IN std_logic_vector(2 DOWNTO 0);
	carry_out : OUT std_logic
	);
END testealu1;

-- Design Ports Information
-- O[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry_out	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selection[2]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_O : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_selection : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_carry_out : std_logic;
SIGNAL \Mux5~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \selection[1]~input_o\ : std_logic;
SIGNAL \selection[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \selection[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \carry_out$latch~combout\ : std_logic;
SIGNAL result : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
O <= ww_O;
ww_selection <= selection;
carry_out <= ww_carry_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux5~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux5~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y24_N9
\O[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~3_combout\,
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\O[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\O[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\O[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~6_combout\,
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\carry_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carry_out$latch~combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

-- Location: IOIBUF_X3_Y24_N22
\selection[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(1),
	o => \selection[1]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\selection[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(0),
	o => \selection[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X12_Y20_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\selection[1]~input_o\ & (\selection[0]~input_o\ $ (((!\B[0]~input_o\))))) # (!\selection[1]~input_o\ & ((\selection[0]~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\)) # (!\selection[0]~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X12_Y20_N16
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

-- Location: LCCOMB_X12_Y20_N28
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\selection[1]~input_o\ & (\selection[0]~input_o\ & \Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \Add1~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X12_Y20_N0
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X16_Y24_N1
\selection[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(2),
	o => \selection[2]~input_o\);

-- Location: LCCOMB_X12_Y22_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\selection[2]~input_o\ & (!\selection[1]~input_o\ & !\selection[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selection[2]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \selection[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: CLKCTRL_G3
\Mux5~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux5~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux5~0clkctrl_outclk\);

-- Location: LCCOMB_X12_Y20_N12
\result[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(0) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Add0~0_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((result(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Mux5~0clkctrl_outclk\,
	datad => result(0),
	combout => result(0));

-- Location: LCCOMB_X12_Y20_N14
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\selection[1]~input_o\ & ((\A[0]~input_o\ $ (!\selection[0]~input_o\)))) # (!\selection[1]~input_o\ & (result(0) & ((!\selection[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(0),
	datab => \A[0]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \selection[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X12_Y20_N24
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\selection[2]~input_o\ & (\Mux3~0_combout\)) # (!\selection[2]~input_o\ & (((\Mux3~1_combout\) # (\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~2_combout\,
	datad => \selection[2]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: IOIBUF_X23_Y24_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X12_Y22_N10
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = \A[1]~input_o\ $ (((!\selection[2]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \selection[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X9_Y24_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X12_Y20_N2
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\Add0~1\ & VCC)) # (!\A[1]~input_o\ & (!\Add0~1\)))) # (!\B[1]~input_o\ & ((\A[1]~input_o\ & (!\Add0~1\)) # (!\A[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\B[1]~input_o\ & (!\A[1]~input_o\ & !\Add0~1\)) # (!\B[1]~input_o\ & ((!\Add0~1\) # (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X12_Y20_N10
\result[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(1) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Add0~2_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((result(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => \Mux5~0clkctrl_outclk\,
	datad => result(1),
	combout => result(1));

-- Location: LCCOMB_X12_Y20_N18
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

-- Location: LCCOMB_X12_Y20_N30
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\selection[0]~input_o\ & (((\Add1~2_combout\) # (\selection[2]~input_o\)))) # (!\selection[0]~input_o\ & (result(1) & ((!\selection[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result(1),
	datab => \Add1~2_combout\,
	datac => \selection[0]~input_o\,
	datad => \selection[2]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X12_Y22_N0
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\selection[1]~input_o\ & ((\Mux2~1_combout\))) # (!\selection[1]~input_o\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selection[1]~input_o\,
	datac => \Mux2~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X12_Y22_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = \B[1]~input_o\ $ (((\selection[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selection[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X12_Y22_N24
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~3_combout\ & (((\Mux2~1_combout\ & \Mux2~0_combout\)) # (!\selection[2]~input_o\))) # (!\Mux2~3_combout\ & (\selection[2]~input_o\ & ((\Mux2~1_combout\) # (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux2~0_combout\,
	datad => \selection[2]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X12_Y22_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\A[1]~input_o\ & ((\selection[0]~input_o\) # (\A[0]~input_o\))) # (!\A[1]~input_o\ & (\selection[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \selection[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X12_Y20_N4
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\A[2]~input_o\ $ (\B[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\A[2]~input_o\ & ((\B[2]~input_o\) # (!\Add0~3\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X11_Y20_N28
\result[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(2) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Add0~4_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((result(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datac => \Mux5~0clkctrl_outclk\,
	datad => result(2),
	combout => result(2));

-- Location: LCCOMB_X12_Y20_N20
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

-- Location: LCCOMB_X11_Y20_N8
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\selection[0]~input_o\ & ((\Add1~4_combout\))) # (!\selection[0]~input_o\ & (result(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => result(2),
	datac => \Add1~4_combout\,
	datad => \selection[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X12_Y22_N16
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\selection[1]~input_o\ & (\Mux1~0_combout\ $ (((\A[2]~input_o\))))) # (!\selection[1]~input_o\ & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \selection[1]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \A[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X12_Y22_N8
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\selection[0]~input_o\ & (\selection[1]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\)))) # (!\selection[0]~input_o\ & (((\B[1]~input_o\ & \B[0]~input_o\)) # (!\selection[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X12_Y22_N22
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\selection[1]~input_o\ & (\Mux1~4_combout\ $ ((\B[2]~input_o\)))) # (!\selection[1]~input_o\ & ((\Mux1~4_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (!\Mux1~4_combout\ & (\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \Mux1~4_combout\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X12_Y22_N20
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\selection[2]~input_o\ & ((\Mux1~5_combout\))) # (!\selection[2]~input_o\ & (\Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~2_combout\,
	datac => \Mux1~5_combout\,
	datad => \selection[2]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: IOIBUF_X16_Y24_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X12_Y22_N30
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\) # (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (!\B[0]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X12_Y22_N14
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\selection[0]~input_o\ & (((\Mux0~0_combout\) # (\B[0]~input_o\)) # (!\selection[1]~input_o\))) # (!\selection[0]~input_o\ & (\selection[1]~input_o\ & (\Mux0~0_combout\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \B[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X18_Y24_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X12_Y22_N18
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\B[3]~input_o\ & (((!\selection[1]~input_o\ & \A[3]~input_o\)) # (!\Mux0~1_combout\))) # (!\B[3]~input_o\ & ((\selection[1]~input_o\ & (\Mux0~1_combout\)) # (!\selection[1]~input_o\ & (!\Mux0~1_combout\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \Mux0~1_combout\,
	datad => \A[3]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X12_Y22_N12
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\A[1]~input_o\ & ((\selection[0]~input_o\) # ((\A[2]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\selection[0]~input_o\ & ((\A[2]~input_o\) # (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X12_Y20_N6
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\Add0~5\ & VCC)) # (!\B[3]~input_o\ & (!\Add0~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\Add0~5\)) # (!\B[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\Add0~5\)) # (!\A[3]~input_o\ & ((!\Add0~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X11_Y20_N18
\result[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(3) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Add0~6_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((result(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datac => \Mux5~0clkctrl_outclk\,
	datad => result(3),
	combout => result(3));

-- Location: LCCOMB_X12_Y20_N22
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	cin => \Add1~5\,
	combout => \Add1~6_combout\);

-- Location: LCCOMB_X11_Y20_N2
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\selection[0]~input_o\ & ((\Add1~6_combout\))) # (!\selection[0]~input_o\ & (result(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => result(3),
	datad => \Add1~6_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X12_Y22_N4
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\selection[1]~input_o\ & (\Mux0~3_combout\ $ (((\A[3]~input_o\))))) # (!\selection[1]~input_o\ & (((\Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \selection[1]~input_o\,
	datac => \Mux0~4_combout\,
	datad => \A[3]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X12_Y22_N2
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\selection[2]~input_o\ & (\Mux0~2_combout\)) # (!\selection[2]~input_o\ & ((\Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~2_combout\,
	datac => \Mux0~5_combout\,
	datad => \selection[2]~input_o\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X12_Y20_N8
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = !\Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X13_Y20_N18
\result[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- result(4) = (GLOBAL(\Mux5~0clkctrl_outclk\) & (\Add0~8_combout\)) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & ((result(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datac => \Mux5~0clkctrl_outclk\,
	datad => result(4),
	combout => result(4));

-- Location: LCCOMB_X13_Y20_N28
\carry_out$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry_out$latch~combout\ = (GLOBAL(\Mux5~0clkctrl_outclk\) & ((result(4)))) # (!GLOBAL(\Mux5~0clkctrl_outclk\) & (\carry_out$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \carry_out$latch~combout\,
	datac => \Mux5~0clkctrl_outclk\,
	datad => result(4),
	combout => \carry_out$latch~combout\);

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_carry_out <= \carry_out~output_o\;
END structure;



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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/09/2022 17:57:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testealu1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testealu1_vhd_vec_tst IS
END testealu1_vhd_vec_tst;
ARCHITECTURE testealu1_arch OF testealu1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inp_a : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inp_b : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out_alu : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT testealu1
	PORT (
	inp_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	inp_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	out_alu : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testealu1
	PORT MAP (
-- list connections between master ports and signals
	inp_a => inp_a,
	inp_b => inp_b,
	out_alu => out_alu,
	sel => sel
	);
-- inp_a[3]
t_prcs_inp_a_3: PROCESS
BEGIN
	inp_a(3) <= '1';
WAIT;
END PROCESS t_prcs_inp_a_3;
-- inp_a[2]
t_prcs_inp_a_2: PROCESS
BEGIN
	inp_a(2) <= '0';
WAIT;
END PROCESS t_prcs_inp_a_2;
-- inp_a[1]
t_prcs_inp_a_1: PROCESS
BEGIN
	inp_a(1) <= '0';
WAIT;
END PROCESS t_prcs_inp_a_1;
-- inp_a[0]
t_prcs_inp_a_0: PROCESS
BEGIN
	inp_a(0) <= '0';
WAIT;
END PROCESS t_prcs_inp_a_0;
-- inp_b[3]
t_prcs_inp_b_3: PROCESS
BEGIN
	inp_b(3) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_3;
-- inp_b[2]
t_prcs_inp_b_2: PROCESS
BEGIN
	inp_b(2) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_2;
-- inp_b[1]
t_prcs_inp_b_1: PROCESS
BEGIN
	inp_b(1) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_1;
-- inp_b[0]
t_prcs_inp_b_0: PROCESS
BEGIN
	inp_b(0) <= '0';
WAIT;
END PROCESS t_prcs_inp_b_0;
-- sel[2]
t_prcs_sel_2: PROCESS
BEGIN
	sel(2) <= '0';
WAIT;
END PROCESS t_prcs_sel_2;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '1';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '0';
WAIT;
END PROCESS t_prcs_sel_0;
END testealu1_arch;

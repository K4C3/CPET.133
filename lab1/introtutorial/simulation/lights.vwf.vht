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
-- Generated on "11/09/2024 19:30:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lights
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lights_vhd_vec_tst IS
END lights_vhd_vec_tst;
ARCHITECTURE lights_arch OF lights_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL pin_name2 : STD_LOGIC;
SIGNAL pin_name3 : STD_LOGIC;
SIGNAL x1 : STD_LOGIC;
COMPONENT lights
	PORT (
	pin_name2 : IN STD_LOGIC;
	pin_name3 : OUT STD_LOGIC;
	x1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lights
	PORT MAP (
-- list connections between master ports and signals
	pin_name2 => pin_name2,
	pin_name3 => pin_name3,
	x1 => x1
	);

-- x1
t_prcs_x1: PROCESS
BEGIN
	x1 <= '0';
	WAIT FOR 90000 ps;
	x1 <= '1';
WAIT;
END PROCESS t_prcs_x1;

-- pin_name2
t_prcs_pin_name2: PROCESS
BEGIN
	pin_name2 <= '0';
	WAIT FOR 50000 ps;
	pin_name2 <= '1';
	WAIT FOR 40000 ps;
	pin_name2 <= '0';
	WAIT FOR 60000 ps;
	pin_name2 <= '1';
WAIT;
END PROCESS t_prcs_pin_name2;
END lights_arch;

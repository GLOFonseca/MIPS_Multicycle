-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/15/2017 15:39:00"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControlBlock IS
    PORT (
	clock : IN std_logic;
	opcode : IN std_logic_vector(5 DOWNTO 0);
	PCEscCond : OUT std_logic;
	PCEsc : OUT std_logic;
	IouD : OUT std_logic;
	LerMem : OUT std_logic;
	EscMem : OUT std_logic;
	MemParaReg : OUT std_logic;
	IREsc : OUT std_logic;
	FontePC : OUT std_logic_vector(1 DOWNTO 0);
	ULAOp : OUT std_logic_vector(1 DOWNTO 0);
	ULAFonteB : OUT std_logic_vector(1 DOWNTO 0);
	ULAFonteA : OUT std_logic;
	EscReg : OUT std_logic;
	RegDst : OUT std_logic
	);
END ControlBlock;

-- Design Ports Information
-- PCEscCond	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PCEsc	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IouD	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LerMem	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscMem	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemParaReg	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IREsc	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FontePC[0]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FontePC[1]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAOp[0]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAOp[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAFonteB[0]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAFonteB[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ULAFonteA	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscReg	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDst	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opcode[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ControlBlock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_PCEscCond : std_logic;
SIGNAL ww_PCEsc : std_logic;
SIGNAL ww_IouD : std_logic;
SIGNAL ww_LerMem : std_logic;
SIGNAL ww_EscMem : std_logic;
SIGNAL ww_MemParaReg : std_logic;
SIGNAL ww_IREsc : std_logic;
SIGNAL ww_FontePC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ULAOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ULAFonteB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ULAFonteA : std_logic;
SIGNAL ww_EscReg : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \act_state.S6~regout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \act_state.S2~0_combout\ : std_logic;
SIGNAL \act_state.S2~regout\ : std_logic;
SIGNAL \next_state.S3~0_combout\ : std_logic;
SIGNAL \act_state.S3~regout\ : std_logic;
SIGNAL \LerMem~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \act_state.S0~regout\ : std_logic;
SIGNAL \act_state.S1~0_combout\ : std_logic;
SIGNAL \act_state.S1~regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \act_state.S8~regout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \act_state.S9~regout\ : std_logic;
SIGNAL \PCEsc~0_combout\ : std_logic;
SIGNAL \next_state.S5~0_combout\ : std_logic;
SIGNAL \act_state.S5~regout\ : std_logic;
SIGNAL \IouD~0_combout\ : std_logic;
SIGNAL \act_state.S4~regout\ : std_logic;
SIGNAL \EscMem~0_combout\ : std_logic;
SIGNAL \ULAFonteB~0_combout\ : std_logic;
SIGNAL \ULAFonteB~1_combout\ : std_logic;
SIGNAL \ULAFonteA~0_combout\ : std_logic;
SIGNAL \act_state.S7~feeder_combout\ : std_logic;
SIGNAL \act_state.S7~regout\ : std_logic;
SIGNAL \EscReg~0_combout\ : std_logic;
SIGNAL \opcode~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_LerMem~0_combout\ : std_logic;
SIGNAL \ALT_INV_act_state.S0~regout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_opcode <= opcode;
PCEscCond <= ww_PCEscCond;
PCEsc <= ww_PCEsc;
IouD <= ww_IouD;
LerMem <= ww_LerMem;
EscMem <= ww_EscMem;
MemParaReg <= ww_MemParaReg;
IREsc <= ww_IREsc;
FontePC <= ww_FontePC;
ULAOp <= ww_ULAOp;
ULAFonteB <= ww_ULAFonteB;
ULAFonteA <= ww_ULAFonteA;
EscReg <= ww_EscReg;
RegDst <= ww_RegDst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_LerMem~0_combout\ <= NOT \LerMem~0_combout\;
\ALT_INV_act_state.S0~regout\ <= NOT \act_state.S0~regout\;

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(4),
	combout => \opcode~combout\(4));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(3),
	combout => \opcode~combout\(3));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(5),
	combout => \opcode~combout\(5));

-- Location: LCCOMB_X1_Y32_N18
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\opcode~combout\(4) & (!\opcode~combout\(0) & (!\opcode~combout\(3) & !\opcode~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(4),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(3),
	datad => \opcode~combout\(5),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\opcode~combout\(1) & (\act_state.S1~regout\ & (!\opcode~combout\(2) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \act_state.S1~regout\,
	datac => \opcode~combout\(2),
	datad => \Selector7~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X1_Y32_N29
\act_state.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S6~regout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: LCCOMB_X1_Y32_N16
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\opcode~combout\(4) & (\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(4),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X1_Y32_N0
\act_state.S2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \act_state.S2~0_combout\ = (\Equal3~0_combout\ & ((\opcode~combout\(5) & (\act_state.S1~regout\)) # (!\opcode~combout\(5) & ((\act_state.S2~regout\))))) # (!\Equal3~0_combout\ & (((\act_state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \act_state.S1~regout\,
	datac => \act_state.S2~regout\,
	datad => \opcode~combout\(5),
	combout => \act_state.S2~0_combout\);

-- Location: LCFF_X1_Y32_N1
\act_state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \act_state.S2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S2~regout\);

-- Location: LCCOMB_X1_Y32_N22
\next_state.S3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.S3~0_combout\ = (\opcode~combout\(5) & (!\opcode~combout\(3) & (\Equal3~0_combout\ & \act_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(5),
	datab => \opcode~combout\(3),
	datac => \Equal3~0_combout\,
	datad => \act_state.S2~regout\,
	combout => \next_state.S3~0_combout\);

-- Location: LCFF_X1_Y32_N23
\act_state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \next_state.S3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S3~regout\);

-- Location: LCCOMB_X1_Y32_N26
\LerMem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LerMem~0_combout\ = (!\act_state.S3~regout\ & \act_state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \act_state.S3~regout\,
	datad => \act_state.S0~regout\,
	combout => \LerMem~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\act_state.S2~regout\) # ((\act_state.S6~regout\) # ((\act_state.S1~regout\) # (!\LerMem~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \act_state.S2~regout\,
	datab => \act_state.S6~regout\,
	datac => \act_state.S1~regout\,
	datad => \LerMem~0_combout\,
	combout => \WideOr1~0_combout\);

-- Location: LCFF_X1_Y32_N13
\act_state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S0~regout\);

-- Location: LCCOMB_X1_Y32_N14
\act_state.S1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \act_state.S1~0_combout\ = !\act_state.S0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \act_state.S0~regout\,
	combout => \act_state.S1~0_combout\);

-- Location: LCFF_X1_Y32_N15
\act_state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \act_state.S1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S1~regout\);

-- Location: LCCOMB_X1_Y32_N20
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\opcode~combout\(1) & (\act_state.S1~regout\ & (\opcode~combout\(2) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \act_state.S1~regout\,
	datac => \opcode~combout\(2),
	datad => \Selector7~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X1_Y32_N21
\act_state.S8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S8~regout\);

-- Location: LCCOMB_X1_Y32_N30
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\opcode~combout\(1) & (\act_state.S1~regout\ & (!\opcode~combout\(2) & \Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \act_state.S1~regout\,
	datac => \opcode~combout\(2),
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCFF_X1_Y32_N31
\act_state.S9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S9~regout\);

-- Location: LCCOMB_X1_Y31_N28
\PCEsc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PCEsc~0_combout\ = (\act_state.S9~regout\) # (!\act_state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \act_state.S9~regout\,
	datac => \act_state.S0~regout\,
	combout => \PCEsc~0_combout\);

-- Location: LCCOMB_X1_Y32_N24
\next_state.S5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.S5~0_combout\ = (\opcode~combout\(5) & (\opcode~combout\(3) & (\Equal3~0_combout\ & \act_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(5),
	datab => \opcode~combout\(3),
	datac => \Equal3~0_combout\,
	datad => \act_state.S2~regout\,
	combout => \next_state.S5~0_combout\);

-- Location: LCFF_X1_Y32_N25
\act_state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \next_state.S5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S5~regout\);

-- Location: LCCOMB_X1_Y33_N12
\IouD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \IouD~0_combout\ = (\act_state.S3~regout\) # (\act_state.S5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \act_state.S3~regout\,
	datad => \act_state.S5~regout\,
	combout => \IouD~0_combout\);

-- Location: LCFF_X1_Y32_N27
\act_state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \act_state.S3~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S4~regout\);

-- Location: LCCOMB_X1_Y33_N14
\EscMem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EscMem~0_combout\ = (\act_state.S5~regout\) # (\act_state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \act_state.S5~regout\,
	datad => \act_state.S4~regout\,
	combout => \EscMem~0_combout\);

-- Location: LCCOMB_X1_Y31_N30
\ULAFonteB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAFonteB~0_combout\ = ((!\act_state.S2~regout\ & \act_state.S1~regout\)) # (!\act_state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \act_state.S0~regout\,
	datac => \act_state.S2~regout\,
	datad => \act_state.S1~regout\,
	combout => \ULAFonteB~0_combout\);

-- Location: LCCOMB_X1_Y31_N20
\ULAFonteB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAFonteB~1_combout\ = (\act_state.S0~regout\ & ((\act_state.S2~regout\) # (\act_state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \act_state.S0~regout\,
	datac => \act_state.S2~regout\,
	datad => \act_state.S1~regout\,
	combout => \ULAFonteB~1_combout\);

-- Location: LCCOMB_X1_Y32_N2
\ULAFonteA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAFonteA~0_combout\ = (\act_state.S2~regout\) # ((\act_state.S8~regout\) # (\act_state.S6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \act_state.S2~regout\,
	datac => \act_state.S8~regout\,
	datad => \act_state.S6~regout\,
	combout => \ULAFonteA~0_combout\);

-- Location: LCCOMB_X1_Y32_N8
\act_state.S7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \act_state.S7~feeder_combout\ = \act_state.S6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \act_state.S6~regout\,
	combout => \act_state.S7~feeder_combout\);

-- Location: LCFF_X1_Y32_N9
\act_state.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \act_state.S7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \act_state.S7~regout\);

-- Location: LCCOMB_X1_Y33_N28
\EscReg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \EscReg~0_combout\ = (\act_state.S7~regout\) # (\act_state.S4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \act_state.S7~regout\,
	datad => \act_state.S4~regout\,
	combout => \EscReg~0_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCEscCond~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \act_state.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCEscCond);

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PCEsc~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PCEsc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PCEsc);

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IouD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \IouD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IouD);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LerMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LerMem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LerMem);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EscMem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscMem);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemParaReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \act_state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemParaReg);

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IREsc~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_act_state.S0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IREsc);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FontePC[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \act_state.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FontePC(0));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FontePC[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \act_state.S9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FontePC(1));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAOp[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \act_state.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAOp(0));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAOp[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \act_state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAOp(1));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAFonteB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAFonteB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAFonteB(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAFonteB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAFonteB~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAFonteB(1));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ULAFonteA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULAFonteA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ULAFonteA);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \EscReg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscReg);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegDst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \act_state.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDst);
END structure;



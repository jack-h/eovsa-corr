
-------------------------------------------------------------------
-- System Generator version 14.5 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component xeng_core_cw  port (
    ant: in std_logic_vector(15 downto 0); 
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    mcnt_in: in std_logic_vector(47 downto 0); 
    sync_in: in std_logic; 
    window_valid: in std_logic; 
    acc: out std_logic_vector(31 downto 0); 
    gateway_out2: out std_logic; 
    gateway_out3: out std_logic; 
    gateway_out55: out std_logic; 
    gateway_out56: out std_logic; 
    mcnt_out: out std_logic_vector(47 downto 0); 
    sync_out: out std_logic; 
    valid: out std_logic
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : xeng_core_cw
  port map (
    ant => ant,
    ce => ce,
    clk => clk,
    mcnt_in => mcnt_in,
    sync_in => sync_in,
    window_valid => window_valid,
    acc => acc,
    gateway_out2 => gateway_out2,
    gateway_out3 => gateway_out3,
    gateway_out55 => gateway_out55,
    gateway_out56 => gateway_out56,
    mcnt_out => mcnt_out,
    sync_out => sync_out,
    valid => valid);
-- INST_TAG_END ------ End INSTANTIATION Template ------------

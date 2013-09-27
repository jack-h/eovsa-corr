
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
component coarse_delay_core_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 5.0 ns (200.0 Mhz)
    data_in1: in std_logic_vector(7 downto 0); 
    data_in2: in std_logic_vector(7 downto 0); 
    data_in3: in std_logic_vector(7 downto 0); 
    data_in4: in std_logic_vector(7 downto 0); 
    delay: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    data_out1: out std_logic_vector(7 downto 0); 
    data_out2: out std_logic_vector(7 downto 0); 
    data_out3: out std_logic_vector(7 downto 0); 
    data_out4: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : coarse_delay_core_cw
  port map (
    ce => ce,
    clk => clk,
    data_in1 => data_in1,
    data_in2 => data_in2,
    data_in3 => data_in3,
    data_in4 => data_in4,
    delay => delay,
    en => en,
    sync => sync,
    data_out1 => data_out1,
    data_out2 => data_out2,
    data_out3 => data_out3,
    data_out4 => data_out4,
    sync_out => sync_out);
-- INST_TAG_END ------ End INSTANTIATION Template ------------

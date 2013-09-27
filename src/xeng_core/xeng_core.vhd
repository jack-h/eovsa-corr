--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_6a79e2c90664744f.vhd when simulating
-- the core, cntr_11_0_6a79e2c90664744f. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_6a79e2c90664744f IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END cntr_11_0_6a79e2c90664744f;

ARCHITECTURE cntr_11_0_6a79e2c90664744f_a OF cntr_11_0_6a79e2c90664744f IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_6a79e2c90664744f
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_6a79e2c90664744f USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 8,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_6a79e2c90664744f
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_6a79e2c90664744f_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_5f22a153812a8bc9.vhd when simulating
-- the core, cntr_11_0_5f22a153812a8bc9. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_5f22a153812a8bc9 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END cntr_11_0_5f22a153812a8bc9;

ARCHITECTURE cntr_11_0_5f22a153812a8bc9_a OF cntr_11_0_5f22a153812a8bc9 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_5f22a153812a8bc9
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_5f22a153812a8bc9 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 2,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_5f22a153812a8bc9
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_5f22a153812a8bc9_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_d5ff2753429af9d0.vhd when simulating
-- the core, mult_11_2_d5ff2753429af9d0. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_d5ff2753429af9d0 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END mult_11_2_d5ff2753429af9d0;

ARCHITECTURE mult_11_2_d5ff2753429af9d0_a OF mult_11_2_d5ff2753429af9d0 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_d5ff2753429af9d0
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_d5ff2753429af9d0 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 4,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 0,
      c_optimize_goal => 1,
      c_out_high => 7,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_d5ff2753429af9d0
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_d5ff2753429af9d0_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_1f06b71632254894.vhd when simulating
-- the core, cntr_11_0_1f06b71632254894. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_1f06b71632254894 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END cntr_11_0_1f06b71632254894;

ARCHITECTURE cntr_11_0_1f06b71632254894_a OF cntr_11_0_1f06b71632254894 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_1f06b71632254894
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_1f06b71632254894 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 9,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_1f06b71632254894
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_1f06b71632254894_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_601fed0ddd9eff6a.vhd when simulating
-- the core, cntr_11_0_601fed0ddd9eff6a. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_601fed0ddd9eff6a IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END cntr_11_0_601fed0ddd9eff6a;

ARCHITECTURE cntr_11_0_601fed0ddd9eff6a_a OF cntr_11_0_601fed0ddd9eff6a IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_601fed0ddd9eff6a
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_601fed0ddd9eff6a USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 4,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_601fed0ddd9eff6a
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_601fed0ddd9eff6a_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_62790f857e3f8294.vhd when simulating
-- the core, cntr_11_0_62790f857e3f8294. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_62790f857e3f8294 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END cntr_11_0_62790f857e3f8294;

ARCHITECTURE cntr_11_0_62790f857e3f8294_a OF cntr_11_0_62790f857e3f8294 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_62790f857e3f8294
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    load : IN STD_LOGIC;
    l : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_62790f857e3f8294 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 1,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 1,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 8,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_62790f857e3f8294
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    load => load,
    l => l,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_62790f857e3f8294_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_54ae29da2816c092.vhd when simulating
-- the core, cntr_11_0_54ae29da2816c092. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_54ae29da2816c092 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END cntr_11_0_54ae29da2816c092;

ARCHITECTURE cntr_11_0_54ae29da2816c092_a OF cntr_11_0_54ae29da2816c092 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_54ae29da2816c092
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_54ae29da2816c092 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 7,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_54ae29da2816c092
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_54ae29da2816c092_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_72_bf890e4806a4306d.vhd when simulating
-- the core, bmg_72_bf890e4806a4306d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_72_bf890e4806a4306d IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END bmg_72_bf890e4806a4306d;

ARCHITECTURE bmg_72_bf890e4806a4306d_a OF bmg_72_bf890e4806a4306d IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_bf890e4806a4306d
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_bf890e4806a4306d USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 8,
      c_addrb_width => 8,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_bf890e4806a4306d.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 256,
      c_read_depth_b => 256,
      c_read_width_a => 16,
      c_read_width_b => 16,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 256,
      c_write_depth_b => 256,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 16,
      c_write_width_b => 16,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_bf890e4806a4306d
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_72_bf890e4806a4306d_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_8b0c6cbba9b2df30.vhd when simulating
-- the core, mult_11_2_8b0c6cbba9b2df30. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_8b0c6cbba9b2df30 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END mult_11_2_8b0c6cbba9b2df30;

ARCHITECTURE mult_11_2_8b0c6cbba9b2df30_a OF mult_11_2_8b0c6cbba9b2df30 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_8b0c6cbba9b2df30
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_8b0c6cbba9b2df30 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 4,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 7,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_8b0c6cbba9b2df30
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_8b0c6cbba9b2df30_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_66aa4524955422eb.vhd when simulating
-- the core, cntr_11_0_66aa4524955422eb. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_66aa4524955422eb IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END cntr_11_0_66aa4524955422eb;

ARCHITECTURE cntr_11_0_66aa4524955422eb_a OF cntr_11_0_66aa4524955422eb IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_66aa4524955422eb
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_66aa4524955422eb USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 6,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_66aa4524955422eb
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_66aa4524955422eb_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_72_4fcfcc7deb4cdf86.vhd when simulating
-- the core, bmg_72_4fcfcc7deb4cdf86. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_72_4fcfcc7deb4cdf86 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
  );
END bmg_72_4fcfcc7deb4cdf86;

ARCHITECTURE bmg_72_4fcfcc7deb4cdf86_a OF bmg_72_4fcfcc7deb4cdf86 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_4fcfcc7deb4cdf86
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(127 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_4fcfcc7deb4cdf86 USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 4,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 1,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 1,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_4fcfcc7deb4cdf86.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 2,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 44,
      c_read_depth_b => 11,
      c_read_width_a => 32,
      c_read_width_b => 128,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 44,
      c_write_depth_b => 11,
      c_write_mode_a => "NO_CHANGE",
      c_write_mode_b => "NO_CHANGE",
      c_write_width_a => 32,
      c_write_width_b => 128,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_4fcfcc7deb4cdf86
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta,
    clkb => clkb,
    enb => enb,
    web => web,
    addrb => addrb,
    dinb => dinb,
    doutb => doutb
  );
-- synthesis translate_on

END bmg_72_4fcfcc7deb4cdf86_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2013 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_72_24d0754b1ef55a90.vhd when simulating
-- the core, bmg_72_24d0754b1ef55a90. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_72_24d0754b1ef55a90 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END bmg_72_24d0754b1ef55a90;

ARCHITECTURE bmg_72_24d0754b1ef55a90_a OF bmg_72_24d0754b1ef55a90 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_24d0754b1ef55a90
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_24d0754b1ef55a90 USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 7,
      c_addrb_width => 7,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_24d0754b1ef55a90.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 0,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 128,
      c_read_depth_b => 128,
      c_read_width_a => 16,
      c_read_width_b => 16,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 128,
      c_write_depth_b => 128,
      c_write_mode_a => "READ_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 16,
      c_write_width_b => 16,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_24d0754b1ef55a90
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta
  );
-- synthesis translate_on

END bmg_72_24d0754b1ef55a90_a;

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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xlcounter_limit_xeng_core is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned;
    cnt_63_48: integer:= 0;
    cnt_47_32: integer:= 0;
    cnt_31_16: integer:= 0;
    cnt_15_0: integer:= 0;
    count_limited: integer := 0
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_limit_xeng_core ;
architecture behavior of xlcounter_limit_xeng_core is
  signal high_cnt_to: std_logic_vector(31 downto 0);
  signal low_cnt_to: std_logic_vector(31 downto 0);
  signal cnt_to: std_logic_vector(63 downto 0);
  signal core_sinit, op_thresh0, core_ce: std_logic;
  signal rst_overrides_en: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
  -- synopsys translate_off
  signal real_op : real;
   -- synopsys translate_on
  function equals(op, cnt_to : std_logic_vector; width, arith : integer)
    return std_logic
  is
    variable signed_op, signed_cnt_to : signed (width - 1 downto 0);
    variable unsigned_op, unsigned_cnt_to : unsigned (width - 1 downto 0);
    variable result : std_logic;
  begin
    -- synopsys translate_off
    if ((is_XorU(op)) or (is_XorU(cnt_to)) ) then
      result := '0';
      return result;
    end if;
    -- synopsys translate_on
    if (op = cnt_to) then
      result := '1';
    else
      result := '0';
    end if;
    return result;
  end;
  component cntr_11_0_6a79e2c90664744f
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_6a79e2c90664744f:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_6a79e2c90664744f:
    component is "true";
  attribute box_type of cntr_11_0_6a79e2c90664744f:
    component  is "black_box";
  component cntr_11_0_54ae29da2816c092
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_54ae29da2816c092:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_54ae29da2816c092:
    component is "true";
  attribute box_type of cntr_11_0_54ae29da2816c092:
    component  is "black_box";
  component cntr_11_0_1f06b71632254894
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_1f06b71632254894:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_1f06b71632254894:
    component is "true";
  attribute box_type of cntr_11_0_1f06b71632254894:
    component  is "black_box";
  component cntr_11_0_601fed0ddd9eff6a
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_601fed0ddd9eff6a:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_601fed0ddd9eff6a:
    component is "true";
  attribute box_type of cntr_11_0_601fed0ddd9eff6a:
    component  is "black_box";
  component cntr_11_0_5f22a153812a8bc9
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_5f22a153812a8bc9:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_5f22a153812a8bc9:
    component is "true";
  attribute box_type of cntr_11_0_5f22a153812a8bc9:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec : std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec : std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
begin
  -- synopsys translate_off
  -- synopsys translate_on
  cnt_to(63 downto 48) <= integer_to_std_logic_vector(cnt_63_48, 16, op_arith);
  cnt_to(47 downto 32) <= integer_to_std_logic_vector(cnt_47_32, 16, op_arith);
  cnt_to(31 downto 16) <= integer_to_std_logic_vector(cnt_31_16, 16, op_arith);
  cnt_to(15 downto 0) <= integer_to_std_logic_vector(cnt_15_0, 16, op_arith);
  op <= op_net;
  core_ce <= ce and en(0);
  rst_overrides_en <= rst(0) or en(0);
  limit : if (count_limited = 1) generate
    eq_cnt_to : process (op_net, cnt_to)
    begin
      op_thresh0 <= equals(op_net, cnt_to(op_width - 1 downto 0),
                     op_width, op_arith);
    end process;
    core_sinit <= (op_thresh0 or clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  no_limit : if (count_limited = 0) generate
    core_sinit <= (clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  comp0: if ((core_name0 = "cntr_11_0_6a79e2c90664744f")) generate
    core_instance0: cntr_11_0_6a79e2c90664744f
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_54ae29da2816c092")) generate
    core_instance1: cntr_11_0_54ae29da2816c092
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_1f06b71632254894")) generate
    core_instance3: cntr_11_0_1f06b71632254894
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_601fed0ddd9eff6a")) generate
    core_instance4: cntr_11_0_601fed0ddd9eff6a
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp6: if ((core_name0 = "cntr_11_0_5f22a153812a8bc9")) generate
    core_instance6: cntr_11_0_5f22a153812a8bc9
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end  behavior;

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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlspram_xeng_core is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
    );
  port (
    data_in: in std_logic_vector(c_width - 1 downto 0);
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    we: in std_logic_vector(0 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data_out: out std_logic_vector(c_width - 1 downto 0)
  );
end xlspram_xeng_core ;
architecture behavior of xlspram_xeng_core is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal core_data_out, dly_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_we, core_ce, sinit: std_logic;
  component bmg_72_bf890e4806a4306d
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of bmg_72_bf890e4806a4306d:
    component is true;
  attribute fpga_dont_touch of bmg_72_bf890e4806a4306d:
    component is "true";
  attribute box_type of bmg_72_bf890e4806a4306d:
    component  is "black_box";
  component bmg_72_24d0754b1ef55a90
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of bmg_72_24d0754b1ef55a90:
    component is true;
  attribute fpga_dont_touch of bmg_72_24d0754b1ef55a90:
    component is "true";
  attribute box_type of bmg_72_24d0754b1ef55a90:
    component  is "black_box";
begin
  data_out <= dly_data_out;
  core_we <= we(0);
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_72_bf890e4806a4306d")) generate
    core_instance0: bmg_72_bf890e4806a4306d
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  comp1: if ((core_name0 = "bmg_72_24d0754b1ef55a90")) generate
    core_instance1: bmg_72_24d0754b1ef55a90
      port map (
                                        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out
      );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => dly_data_out
      );
  end generate;
  latency_1: if (latency <= 1) generate
    dly_data_out <= core_data_out;
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_5cd25528af is
  port (
    b : in std_logic_vector((16 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_5cd25528af;


architecture behavior of accum_5cd25528af is
  signal b_17_24: signed((16 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23_next: signed((16 - 1) downto 0);
  signal accum_reg_41_23: signed((16 - 1) downto 0) := "0000000000000000";
  signal cast_51_22: signed((17 - 1) downto 0);
  signal cast_51_42: signed((17 - 1) downto 0);
  signal accum_reg_51_9_addsub: signed((17 - 1) downto 0);
  signal accum_reg_join_47_1: signed((17 - 1) downto 0);
  signal cast_accum_reg_41_23_next: signed((16 - 1) downto 0);
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        accum_reg_41_23 <= accum_reg_41_23_next;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_22 <= s2s_cast(accum_reg_41_23, 6, 17, 6);
  cast_51_42 <= s2s_cast(b_17_24, 6, 17, 6);
  accum_reg_51_9_addsub <= cast_51_22 + cast_51_42;
  proc_if_47_1: process (accum_reg_51_9_addsub, b_17_24, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1 <= s2s_cast(b_17_24, 6, 17, 6);
    else 
      accum_reg_join_47_1 <= accum_reg_51_9_addsub;
    end if;
  end process proc_if_47_1;
  cast_accum_reg_41_23_next <= s2s_cast(accum_reg_join_47_1, 6, 16, 6);
  accum_reg_41_23_next <= cast_accum_reg_41_23_next;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_0341f7be44 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_0341f7be44;


architecture behavior of delay_0341f7be44 is
  signal d_1_22: std_logic;
begin
  d_1_22 <= d(0);
  q <= std_logic_to_vector(d_1_22);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_0aaa3afba6 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_0aaa3afba6;


architecture behavior of mux_0aaa3afba6 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "0000000000000000",
    "0000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_520edef059 is
  port (
    input_port : in std_logic_vector((4 - 1) downto 0);
    output_port : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_520edef059;


architecture behavior of reinterpret_520edef059 is
  signal input_port_1_40: unsigned((4 - 1) downto 0);
  signal output_port_5_5_force: signed((4 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_151459306d is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_151459306d;


architecture behavior of reinterpret_151459306d is
  signal input_port_1_40: unsigned((16 - 1) downto 0);
  signal output_port_5_5_force: signed((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult_xeng_core is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult_xeng_core;
architecture behavior of xlmult_xeng_core is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mult_11_2_d5ff2753429af9d0
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_d5ff2753429af9d0:
    component is true;
  attribute fpga_dont_touch of mult_11_2_d5ff2753429af9d0:
    component is "true";
  attribute box_type of mult_11_2_d5ff2753429af9d0:
    component  is "black_box";
  component mult_11_2_8b0c6cbba9b2df30
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_8b0c6cbba9b2df30:
    component is true;
  attribute fpga_dont_touch of mult_11_2_8b0c6cbba9b2df30:
    component is "true";
  attribute box_type of mult_11_2_8b0c6cbba9b2df30:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mult_11_2_d5ff2753429af9d0")) generate
    core_instance0: mult_11_2_d5ff2753429af9d0
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mult_11_2_8b0c6cbba9b2df30")) generate
    core_instance1: mult_11_2_8b0c6cbba9b2df30
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_5a117bfeae is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    s : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_5a117bfeae;


architecture behavior of addsub_5a117bfeae is
  signal a_17_32: signed((8 - 1) downto 0);
  signal b_17_35: signed((8 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((9 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000");
  signal op_mem_91_20_front_din: signed((9 - 1) downto 0);
  signal op_mem_91_20_back: signed((9 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((9 - 1) downto 0);
  signal cast_71_22: signed((9 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((9 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= s2s_cast(a_17_32, 6, 9, 6);
  cast_71_22 <= s2s_cast(b_17_35, 6, 9, 6);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_front_din <= internal_s_71_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_407908e668 is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    s : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_407908e668;


architecture behavior of addsub_407908e668 is
  signal a_17_32: signed((8 - 1) downto 0);
  signal b_17_35: signed((8 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((9 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000");
  signal op_mem_91_20_front_din: signed((9 - 1) downto 0);
  signal op_mem_91_20_back: signed((9 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((9 - 1) downto 0);
  signal cast_69_22: signed((9 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((9 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 6, 9, 6);
  cast_69_22 <= s2s_cast(b_17_35, 6, 9, 6);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a369e00c6b is
  port (
    in0 : in std_logic_vector((16 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a369e00c6b;


architecture behavior of concat_a369e00c6b is
  signal in0_1_23: unsigned((16 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_7025463ea8 is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_7025463ea8;


architecture behavior of reinterpret_7025463ea8 is
  signal input_port_1_40: signed((16 - 1) downto 0);
  signal output_port_5_5_force: unsigned((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7244cd602b is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7244cd602b;


architecture behavior of constant_7244cd602b is
begin
  op <= "0000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_e18fb31a3d is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e18fb31a3d;


architecture behavior of delay_e18fb31a3d is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_924e250c23 is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_924e250c23;


architecture behavior of relational_924e250c23 is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_ea282058e1 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_ea282058e1;


architecture behavior of mux_ea282058e1 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic;
  signal pipe_16_22: array_type_pipe_16_22 := (
    '0',
    '0');
  signal pipe_16_22_front_din: std_logic;
  signal pipe_16_22_back: std_logic;
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(pipe_16_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_b11ec1c0d4 is
  port (
    in0 : in std_logic_vector((32 - 1) downto 0);
    in1 : in std_logic_vector((32 - 1) downto 0);
    in2 : in std_logic_vector((32 - 1) downto 0);
    in3 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_b11ec1c0d4;


architecture behavior of concat_b11ec1c0d4 is
  signal in0_1_23: unsigned((32 - 1) downto 0);
  signal in1_1_27: unsigned((32 - 1) downto 0);
  signal in2_1_31: unsigned((32 - 1) downto 0);
  signal in3_1_35: unsigned((32 - 1) downto 0);
  signal y_2_1_concat: unsigned((128 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b437b02512 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b437b02512;


architecture behavior of constant_b437b02512 is
begin
  op <= "00000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_91ef1678ca is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_91ef1678ca;


architecture behavior of constant_91ef1678ca is
begin
  op <= "00000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_91a728e105 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_91a728e105;


architecture behavior of constant_91a728e105 is
begin
  op <= "10000111";
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free_xeng_core is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free_xeng_core ;
architecture behavior of xlcounter_free_xeng_core is
  component cntr_11_0_62790f857e3f8294
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_62790f857e3f8294:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_62790f857e3f8294:
    component is "true";
  attribute box_type of cntr_11_0_62790f857e3f8294:
    component  is "black_box";
  component cntr_11_0_1f06b71632254894
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_1f06b71632254894:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_1f06b71632254894:
    component is "true";
  attribute box_type of cntr_11_0_1f06b71632254894:
    component  is "black_box";
  component cntr_11_0_66aa4524955422eb
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_66aa4524955422eb:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_66aa4524955422eb:
    component is "true";
  attribute box_type of cntr_11_0_66aa4524955422eb:
    component  is "black_box";
  component cntr_11_0_601fed0ddd9eff6a
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_601fed0ddd9eff6a:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_601fed0ddd9eff6a:
    component is "true";
  attribute box_type of cntr_11_0_601fed0ddd9eff6a:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_62790f857e3f8294")) generate
    core_instance0: cntr_11_0_62790f857e3f8294
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_1f06b71632254894")) generate
    core_instance1: cntr_11_0_1f06b71632254894
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_66aa4524955422eb")) generate
    core_instance2: cntr_11_0_66aa4524955422eb
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_601fed0ddd9eff6a")) generate
    core_instance3: cntr_11_0_601fed0ddd9eff6a
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_1bef4ba0e4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_1bef4ba0e4;


architecture behavior of mux_1bef4ba0e4 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_54048c8b02 is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_54048c8b02;


architecture behavior of relational_54048c8b02 is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_16235eb2bf is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_16235eb2bf;


architecture behavior of relational_16235eb2bf is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e68a6622a6 is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e68a6622a6;


architecture behavior of constant_e68a6622a6 is
begin
  op <= "010000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_9f02caa990 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_9f02caa990;


architecture behavior of delay_9f02caa990 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_4246ea65a9 is
  port (
    d : in std_logic_vector((16 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_4246ea65a9;


architecture behavior of delay_4246ea65a9 is
  signal d_1_22: std_logic_vector((16 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((16 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((16 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((16 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_bfb8dadb36 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_bfb8dadb36;


architecture behavior of mux_bfb8dadb36 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "0000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((16 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_82fb466a8b is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_82fb466a8b;


architecture behavior of relational_82fb466a8b is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_16_3_rel <= a_1_31 < b_1_34;
  op <= boolean_to_vector(result_16_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4a391b9a0e is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4a391b9a0e;


architecture behavior of constant_4a391b9a0e is
begin
  op <= "100000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_29632bca4b is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_29632bca4b;


architecture behavior of constant_29632bca4b is
begin
  op <= "111111111";
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_1ece0ee16d is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_1ece0ee16d;


architecture behavior of relational_1ece0ee16d is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_22_3_rel <= a_1_31 >= b_1_34;
  op <= boolean_to_vector(result_22_3_rel);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_dfe2dded7f is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_dfe2dded7f;


architecture behavior of logical_dfe2dded7f is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal bit_2_26: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  bit_2_26 <= d0_1_24 or d1_1_27;
  fully_2_1_bitnot <= not bit_2_26;
  y <= std_logic_to_vector(fully_2_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6bd4aafe24 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6bd4aafe24;


architecture behavior of constant_6bd4aafe24 is
begin
  op <= "10000110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_bc23896e85 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_bc23896e85;


architecture behavior of constant_bc23896e85 is
begin
  op <= "101000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a629aefb53 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a629aefb53;


architecture behavior of constant_a629aefb53 is
begin
  op <= "1001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d9630206ff is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d9630206ff;


architecture behavior of relational_d9630206ff is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_20_3_rel <= a_1_31 <= b_1_34;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d36e866ee7 is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d36e866ee7;


architecture behavior of relational_d36e866ee7 is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_20_3_rel <= a_1_31 <= b_1_34;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_523908e9ca is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_523908e9ca;


architecture behavior of constant_523908e9ca is
begin
  op <= "011111110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_6cb8f0ce02 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_6cb8f0ce02;


architecture behavior of logical_6cb8f0ce02 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_011282df9a is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_011282df9a;


architecture behavior of relational_011282df9a is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_20_3_rel <= a_1_31 <= b_1_34;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_11e3ca3fda is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    s : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_11e3ca3fda;


architecture behavior of addsub_11e3ca3fda is
  signal a_17_32: unsigned((2 - 1) downto 0);
  signal b_17_35: unsigned((2 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((3 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000");
  signal op_mem_91_20_front_din: signed((3 - 1) downto 0);
  signal op_mem_91_20_back: signed((3 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((4 - 1) downto 0);
  signal cast_71_22: signed((4 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((4 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((3 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 4, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 4, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_71_5_addsub, 0, 3, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e8ddc079e9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e8ddc079e9;


architecture behavior of constant_e8ddc079e9 is
begin
  op <= "10";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cda50df78a is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cda50df78a;


architecture behavior of constant_cda50df78a is
begin
  op <= "00";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_ee0f706095 is
  port (
    d : in std_logic_vector((128 - 1) downto 0);
    q : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_ee0f706095;


architecture behavior of delay_ee0f706095 is
  signal d_1_22: std_logic_vector((128 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_f9c0f11a18 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((4 - 1) downto 0);
    d1 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_f9c0f11a18;


architecture behavior of mux_f9c0f11a18 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((4 - 1) downto 0);
  signal d1_1_27: std_logic_vector((4 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((4 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5f1eb17108 is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5f1eb17108;


architecture behavior of relational_5f1eb17108 is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_31bac01fa1 is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_31bac01fa1;


architecture behavior of relational_31bac01fa1 is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: signed((3 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_22_12: signed((4 - 1) downto 0);
  signal cast_22_17: signed((4 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_22_12 <= u2s_cast(a_1_31, 0, 4, 0);
  cast_22_17 <= s2s_cast(b_1_34, 0, 4, 0);
  result_22_3_rel <= cast_22_12 >= cast_22_17;
  op_mem_32_22_front_din <= result_22_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_fbc16d060d is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_fbc16d060d;


architecture behavior of relational_fbc16d060d is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_367321bc0c is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_367321bc0c;


architecture behavior of relational_367321bc0c is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity negate_9dcff15edc is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_9dcff15edc;


architecture behavior of negate_9dcff15edc is
  signal ip_18_25: signed((16 - 1) downto 0);
  type array_type_op_mem_48_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_48_20: array_type_op_mem_48_20 := (
    0 => "0000000000000000");
  signal op_mem_48_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_48_20_back: signed((16 - 1) downto 0);
  signal op_mem_48_20_push_front_pop_back_en: std_logic;
  signal cast_35_24: signed((17 - 1) downto 0);
  signal internal_ip_35_9_neg: signed((17 - 1) downto 0);
  signal internal_ip_join_30_1: signed((17 - 1) downto 0);
  signal cast_internal_ip_40_3_convert: signed((16 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_48_20_back <= op_mem_48_20(0);
  proc_op_mem_48_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_48_20_push_front_pop_back_en = '1')) then
        op_mem_48_20(0) <= op_mem_48_20_front_din;
      end if;
    end if;
  end process proc_op_mem_48_20;
  cast_35_24 <= s2s_cast(ip_18_25, 0, 17, 0);
  internal_ip_35_9_neg <=  -cast_35_24;
  proc_if_30_1: process (internal_ip_35_9_neg)
  is
  begin
    if false then
      internal_ip_join_30_1 <= std_logic_vector_to_signed("00000000000000000");
    else 
      internal_ip_join_30_1 <= internal_ip_35_9_neg;
    end if;
  end process proc_if_30_1;
  cast_internal_ip_40_3_convert <= s2s_cast(internal_ip_join_30_1, 0, 16, 0);
  op_mem_48_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(cast_internal_ip_40_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_3d1356b6d9 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((128 - 1) downto 0);
    d1 : in std_logic_vector((128 - 1) downto 0);
    y : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_3d1356b6d9;


architecture behavior of mux_3d1356b6d9 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((128 - 1) downto 0);
  signal d1_1_27: std_logic_vector((128 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((128 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_c3b39c59b5 is
  port (
    in0 : in std_logic_vector((16 - 1) downto 0);
    in1 : in std_logic_vector((16 - 1) downto 0);
    in2 : in std_logic_vector((16 - 1) downto 0);
    in3 : in std_logic_vector((16 - 1) downto 0);
    in4 : in std_logic_vector((16 - 1) downto 0);
    in5 : in std_logic_vector((16 - 1) downto 0);
    in6 : in std_logic_vector((16 - 1) downto 0);
    in7 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_c3b39c59b5;


architecture behavior of concat_c3b39c59b5 is
  signal in0_1_23: unsigned((16 - 1) downto 0);
  signal in1_1_27: unsigned((16 - 1) downto 0);
  signal in2_1_31: unsigned((16 - 1) downto 0);
  signal in3_1_35: unsigned((16 - 1) downto 0);
  signal in4_1_39: unsigned((16 - 1) downto 0);
  signal in5_1_43: unsigned((16 - 1) downto 0);
  signal in6_1_47: unsigned((16 - 1) downto 0);
  signal in7_1_51: unsigned((16 - 1) downto 0);
  signal y_2_1_concat: unsigned((128 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_37567836aa is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_37567836aa;


architecture behavior of constant_37567836aa is
begin
  op <= "00000000000000000000000000000000";
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xldpram_xeng_core is
  generic (
    core_name0: string := "";
    c_width_a: integer := 13;
    c_address_width_a: integer := 4;
    c_width_b: integer := 13;
    c_address_width_b: integer := 4;
    c_has_sinita: integer := 0;
    c_has_sinitb: integer := 0;
    latency: integer := 1
  );
  port (
    dina: in std_logic_vector(c_width_a - 1 downto 0);
    addra: in std_logic_vector(c_address_width_a - 1 downto 0);
    wea: in std_logic_vector(0 downto 0);
    a_ce: in std_logic;
    a_clk: in std_logic;
    rsta: in std_logic_vector(0 downto 0) := (others => '0');
    ena: in std_logic_vector(0 downto 0) := (others => '1');
    douta: out std_logic_vector(c_width_a - 1 downto 0);
    dinb: in std_logic_vector(c_width_b - 1 downto 0);
    addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
    web: in std_logic_vector(0 downto 0);
    b_ce: in std_logic;
    b_clk: in std_logic;
    rstb: in std_logic_vector(0 downto 0) := (others => '0');
    enb: in std_logic_vector(0 downto 0) := (others => '1');
    doutb: out std_logic_vector(c_width_b - 1 downto 0)
  );
end xldpram_xeng_core;
architecture behavior of xldpram_xeng_core is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;

  signal core_addra: std_logic_vector(c_address_width_a - 1 downto 0);
  signal core_addrb: std_logic_vector(c_address_width_b - 1 downto 0);
  signal core_dina, core_douta, dly_douta:
    std_logic_vector(c_width_a - 1 downto 0);
  signal core_dinb, core_doutb, dly_doutb:
    std_logic_vector(c_width_b - 1 downto 0);
  signal core_wea, core_web: std_logic;
  signal core_a_ce, core_b_ce: std_logic;
  signal sinita, sinitb: std_logic;

  component bmg_72_4fcfcc7deb4cdf86
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;

  attribute syn_black_box of bmg_72_4fcfcc7deb4cdf86:
    component is true;
  attribute fpga_dont_touch of bmg_72_4fcfcc7deb4cdf86:
    component is "true";
  attribute box_type of bmg_72_4fcfcc7deb4cdf86:
    component  is "black_box";
begin
  core_addra <= addra;
  core_dina <= dina;
  douta <= dly_douta;
  core_wea <= wea(0);
  core_a_ce <= a_ce and ena(0);
  sinita <= rsta(0) and a_ce;

  core_addrb <= addrb;
  core_dinb <= dinb;
  doutb <= dly_doutb;
  core_web <= web(0);
  core_b_ce <= b_ce and enb(0);
  sinitb <= rstb(0) and b_ce;
  comp0: if ((core_name0 = "bmg_72_4fcfcc7deb4cdf86")) generate
    core_instance0: bmg_72_4fcfcc7deb4cdf86
      port map (
          addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
      );
  end generate;
  latency_test: if (latency > 2) generate
    regA: synth_reg
      generic map (
        width => c_width_a,
        latency => latency - 2
      )
      port map (
        i => core_douta,
        ce => core_a_ce,
        clr => '0',
        clk => a_clk,
        o => dly_douta
      );
    regB: synth_reg
      generic map (
        width => c_width_b,
        latency => latency - 2
      )
      port map (
        i => core_doutb,
        ce => core_b_ce,
        clr => '0',
        clk => b_clk,
        o => dly_doutb
      );
  end generate;
  latency1: if (latency <= 2) generate
    dly_douta <= core_douta;
    dly_doutb <= core_doutb;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_799f62af22 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_799f62af22;


architecture behavior of logical_799f62af22 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_8ebf457a98 is
  port (
    op : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_8ebf457a98;


architecture behavior of constant_8ebf457a98 is
begin
  op <= "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_d8eaaced1c is
  port (
    d : in std_logic_vector((48 - 1) downto 0);
    q : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_d8eaaced1c;


architecture behavior of delay_d8eaaced1c is
  signal d_1_22: std_logic_vector((48 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((48 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/delay"

entity delay_entity_4e3b3b3964 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(15 downto 0)
  );
end delay_entity_4e3b3b3964;

architecture structural of delay_entity_4e3b3b3964 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant_op_net: std_logic;
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay3_q_net_x0: std_logic_vector(15 downto 0);
  signal ram_data_out_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  delay3_q_net_x0 <= din;
  dout <= ram_data_out_net_x0;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 251,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_6a79e2c90664744f",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  ram: entity work.xlspram_xeng_core
    generic map (
      c_address_width => 8,
      c_width => 16,
      core_name0 => "bmg_72_bf890e4806a4306d",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      data_in => delay3_q_net_x0,
      en => "1",
      rst => "0",
      we(0) => constant_op_net,
      data_out => ram_data_out_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac1/acc"

entity acc_entity_4cde1819cd is
  port (
    acc_in: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(8 downto 0); 
    rst: in std_logic; 
    acc_out: out std_logic_vector(15 downto 0)
  );
end acc_entity_4cde1819cd;

architecture structural of acc_entity_4cde1819cd is
  signal accumulator_q_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal convert1_dout_net: std_logic_vector(15 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal mux2_y_net_x0: std_logic_vector(15 downto 0);
  signal real_sum_s_net_x0: std_logic_vector(8 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(15 downto 0);
  signal relational_op_net_x0: std_logic;

begin
  reinterpret_output_port_net_x0 <= acc_in;
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  real_sum_s_net_x0 <= din;
  relational_op_net_x0 <= rst;
  acc_out <= mux2_y_net_x0;

  accumulator: entity work.accum_5cd25528af
    port map (
      b => convert1_dout_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      rst(0) => delay1_q_net,
      q => accumulator_q_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 9,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => real_sum_s_net_x0,
      en => "1",
      dout => convert1_dout_net
    );

  delay: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => delay1_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => relational_op_net_x0,
      q(0) => delay1_q_net
    );

  mux2: entity work.mux_0aaa3afba6
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      d0 => reinterpret_output_port_net_x0,
      d1 => accumulator_q_net,
      sel(0) => delay_q_net,
      y => mux2_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac1/c_to_ri"

entity c_to_ri_entity_6b1d5b21e2 is
  port (
    in1: in std_logic_vector(7 downto 0); 
    out1: out std_logic_vector(3 downto 0); 
    out2: out std_logic_vector(3 downto 0)
  );
end c_to_ri_entity_6b1d5b21e2;

architecture structural of c_to_ri_entity_6b1d5b21e2 is
  signal reinterpret1_output_port_net_x0: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(3 downto 0);
  signal slice1_y_net: std_logic_vector(3 downto 0);
  signal slice_y_net_x0: std_logic_vector(3 downto 0);
  signal slice_y_net_x1: std_logic_vector(7 downto 0);

begin
  slice_y_net_x1 <= in1;
  out1 <= reinterpret_output_port_net_x0;
  out2 <= reinterpret1_output_port_net_x0;

  reinterpret: entity work.reinterpret_520edef059
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net_x0,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret1: entity work.reinterpret_520edef059
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => reinterpret1_output_port_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 7,
      x_width => 8,
      y_width => 4
    )
    port map (
      x => slice_y_net_x1,
      y => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 3,
      x_width => 8,
      y_width => 4
    )
    port map (
      x => slice_y_net_x1,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac1/c_to_ri2"

entity c_to_ri2_entity_ccdd60bf3a is
  port (
    in1: in std_logic_vector(31 downto 0); 
    out1: out std_logic_vector(15 downto 0); 
    out2: out std_logic_vector(15 downto 0)
  );
end c_to_ri2_entity_ccdd60bf3a;

architecture structural of c_to_ri2_entity_ccdd60bf3a is
  signal reinterpret1_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(15 downto 0);
  signal slice1_y_net: std_logic_vector(15 downto 0);
  signal slice2_y_net_x0: std_logic_vector(31 downto 0);
  signal slice_y_net: std_logic_vector(15 downto 0);

begin
  slice2_y_net_x0 <= in1;
  out1 <= reinterpret_output_port_net_x1;
  out2 <= reinterpret1_output_port_net_x1;

  reinterpret: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net_x1
    );

  reinterpret1: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => reinterpret1_output_port_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => slice2_y_net_x0,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => slice2_y_net_x0,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac1/cmult*"

entity cmult_entity_1c988b6405 is
  port (
    a: in std_logic_vector(3 downto 0); 
    b: in std_logic_vector(3 downto 0); 
    c: in std_logic_vector(3 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(3 downto 0); 
    imag: out std_logic_vector(8 downto 0); 
    real_x0: out std_logic_vector(8 downto 0)
  );
end cmult_entity_1c988b6405;

architecture structural of cmult_entity_1c988b6405 is
  signal ac_p_net: std_logic_vector(7 downto 0);
  signal ad_p_net: std_logic_vector(7 downto 0);
  signal bc_p_net: std_logic_vector(7 downto 0);
  signal bd_p_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal imag_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(3 downto 0);

begin
  reinterpret_output_port_net_x2 <= a;
  reinterpret1_output_port_net_x2 <= b;
  reinterpret_output_port_net_x3 <= c;
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  reinterpret1_output_port_net_x3 <= d;
  imag <= imag_sum_s_net_x1;
  real_x0 <= real_sum_s_net_x1;

  ac: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_d5ff2753429af9d0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret_output_port_net_x3,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      core_ce => ce_1_sg_x3,
      core_clk => clk_1_sg_x3,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ac_p_net
    );

  ad: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_d5ff2753429af9d0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret1_output_port_net_x3,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      core_ce => ce_1_sg_x3,
      core_clk => clk_1_sg_x3,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ad_p_net
    );

  bc: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_d5ff2753429af9d0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net_x2,
      b => reinterpret_output_port_net_x3,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      core_ce => ce_1_sg_x3,
      core_clk => clk_1_sg_x3,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bc_p_net
    );

  bd: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_d5ff2753429af9d0",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net_x2,
      b => reinterpret1_output_port_net_x3,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      core_ce => ce_1_sg_x3,
      core_clk => clk_1_sg_x3,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bd_p_net
    );

  imag_sum: entity work.addsub_5a117bfeae
    port map (
      a => bc_p_net,
      b => ad_p_net,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      s => imag_sum_s_net_x1
    );

  real_sum: entity work.addsub_407908e668
    port map (
      a => ac_p_net,
      b => bd_p_net,
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      s => real_sum_s_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac1/ri_to_c"

entity ri_to_c_entity_3b4fd602ca is
  port (
    in1: in std_logic_vector(15 downto 0); 
    in2: in std_logic_vector(15 downto 0); 
    out1: out std_logic_vector(31 downto 0)
  );
end ri_to_c_entity_3b4fd602ca;

architecture structural of ri_to_c_entity_3b4fd602ca is
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal mux2_y_net_x2: std_logic_vector(15 downto 0);
  signal mux2_y_net_x3: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(15 downto 0);

begin
  mux2_y_net_x2 <= in1;
  mux2_y_net_x3 <= in2;
  out1 <= concat_y_net_x0;

  concat: entity work.concat_a369e00c6b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret_output_port_net,
      in1 => reinterpret1_output_port_net,
      y => concat_y_net_x0
    );

  reinterpret: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux2_y_net_x2,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux2_y_net_x3,
      output_port => reinterpret1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac1"

entity cmac1_entity_1a26249f89 is
  port (
    a_bi: in std_logic_vector(7 downto 0); 
    acc_in: in std_logic_vector(31 downto 0); 
    c_di: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    acc_out: out std_logic_vector(31 downto 0)
  );
end cmac1_entity_1a26249f89;

architecture structural of cmac1_entity_1a26249f89 is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay_q_net: std_logic;
  signal imag_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal mux2_y_net_x2: std_logic_vector(15 downto 0);
  signal mux2_y_net_x3: std_logic_vector(15 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(3 downto 0);
  signal relational_op_net_x1: std_logic;
  signal slice1_y_net_x2: std_logic_vector(7 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice_y_net_x2: std_logic_vector(7 downto 0);
  signal sync_in_net_x0: std_logic;

begin
  slice_y_net_x2 <= a_bi;
  slice2_y_net_x1 <= acc_in;
  slice1_y_net_x2 <= c_di;
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  sync_in_net_x0 <= sync;
  acc_out <= concat_y_net_x1;

  acc1_acb257f147: entity work.acc_entity_4cde1819cd
    port map (
      acc_in => reinterpret1_output_port_net_x1,
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      din => imag_sum_s_net_x1,
      rst => relational_op_net_x1,
      acc_out => mux2_y_net_x3
    );

  acc_4cde1819cd: entity work.acc_entity_4cde1819cd
    port map (
      acc_in => reinterpret_output_port_net_x1,
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      din => real_sum_s_net_x1,
      rst => relational_op_net_x1,
      acc_out => mux2_y_net_x2
    );

  c_to_ri1_f1fc8e848c: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice1_y_net_x2,
      out1 => reinterpret_output_port_net_x3,
      out2 => reinterpret1_output_port_net_x3
    );

  c_to_ri2_ccdd60bf3a: entity work.c_to_ri2_entity_ccdd60bf3a
    port map (
      in1 => slice2_y_net_x1,
      out1 => reinterpret_output_port_net_x1,
      out2 => reinterpret1_output_port_net_x1
    );

  c_to_ri_6b1d5b21e2: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice_y_net_x2,
      out1 => reinterpret_output_port_net_x2,
      out2 => reinterpret1_output_port_net_x2
    );

  cmult_1c988b6405: entity work.cmult_entity_1c988b6405
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret1_output_port_net_x2,
      c => reinterpret_output_port_net_x3,
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      d => reinterpret1_output_port_net_x3,
      imag => imag_sum_s_net_x1,
      real_x0 => real_sum_s_net_x1
    );

  constant1: entity work.constant_7244cd602b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 127,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_54ae29da2816c092",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      rst(0) => delay_q_net,
      op => counter_op_net
    );

  delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d(0) => sync_in_net_x0,
      q(0) => delay_q_net
    );

  relational: entity work.relational_924e250c23
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      op(0) => relational_op_net_x1
    );

  ri_to_c_3b4fd602ca: entity work.ri_to_c_entity_3b4fd602ca
    port map (
      in1 => mux2_y_net_x2,
      in2 => mux2_y_net_x3,
      out1 => concat_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac4/acc1"

entity acc1_entity_19ef58b952 is
  port (
    acc_in: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(8 downto 0); 
    rst: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(15 downto 0); 
    valid_out: out std_logic
  );
end acc1_entity_19ef58b952;

architecture structural of acc1_entity_19ef58b952 is
  signal accumulator_q_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant_op_net: std_logic;
  signal convert1_dout_net: std_logic_vector(15 downto 0);
  signal convert2_dout_net: std_logic;
  signal delay1_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal imag_sum_s_net_x0: std_logic_vector(8 downto 0);
  signal mux2_y_net_x0: std_logic_vector(15 downto 0);
  signal mux3_y_net_x0: std_logic;
  signal reinterpret1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal relational_op_net_x1: std_logic;

begin
  reinterpret1_output_port_net_x0 <= acc_in;
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  imag_sum_s_net_x0 <= din;
  relational_op_net_x1 <= rst;
  constant1_op_net_x0 <= valid_in;
  acc_out <= mux2_y_net_x0;
  valid_out <= mux3_y_net_x0;

  accumulator: entity work.accum_5cd25528af
    port map (
      b => convert1_dout_net,
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      rst(0) => delay1_q_net,
      q => accumulator_q_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 9,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      din => imag_sum_s_net_x0,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      din(0) => constant1_op_net_x0,
      en => "1",
      dout(0) => convert2_dout_net
    );

  delay: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => delay1_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => relational_op_net_x1,
      q(0) => delay1_q_net
    );

  mux2: entity work.mux_0aaa3afba6
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d0 => reinterpret1_output_port_net_x0,
      d1 => accumulator_q_net,
      sel(0) => delay_q_net,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_ea282058e1
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d0(0) => convert2_dout_net,
      d1(0) => constant_op_net,
      sel(0) => delay_q_net,
      y(0) => mux3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac/cmac4"

entity cmac4_entity_32a9181772 is
  port (
    a_bi: in std_logic_vector(7 downto 0); 
    acc_in: in std_logic_vector(31 downto 0); 
    c_di: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(31 downto 0); 
    valid_out: out std_logic
  );
end cmac4_entity_32a9181772;

architecture structural of cmac4_entity_32a9181772 is
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(6 downto 0);
  signal constant1_op_net_x1: std_logic;
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay_q_net: std_logic;
  signal imag_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal mux2_y_net_x2: std_logic_vector(15 downto 0);
  signal mux2_y_net_x3: std_logic_vector(15 downto 0);
  signal mux3_y_net_x1: std_logic;
  signal real_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(3 downto 0);
  signal relational_op_net_x1: std_logic;
  signal slice10_y_net_x1: std_logic_vector(7 downto 0);
  signal slice11_y_net_x1: std_logic_vector(31 downto 0);
  signal slice9_y_net_x1: std_logic_vector(7 downto 0);
  signal sync_in_net_x3: std_logic;

begin
  slice9_y_net_x1 <= a_bi;
  slice11_y_net_x1 <= acc_in;
  slice10_y_net_x1 <= c_di;
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
  sync_in_net_x3 <= sync;
  constant1_op_net_x1 <= valid_in;
  acc_out <= concat_y_net_x1;
  valid_out <= mux3_y_net_x1;

  acc1_19ef58b952: entity work.acc1_entity_19ef58b952
    port map (
      acc_in => reinterpret1_output_port_net_x1,
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      din => imag_sum_s_net_x1,
      rst => relational_op_net_x1,
      valid_in => constant1_op_net_x1,
      acc_out => mux2_y_net_x3,
      valid_out => mux3_y_net_x1
    );

  acc_e2ebe113bb: entity work.acc_entity_4cde1819cd
    port map (
      acc_in => reinterpret_output_port_net_x1,
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      din => real_sum_s_net_x1,
      rst => relational_op_net_x1,
      acc_out => mux2_y_net_x2
    );

  c_to_ri1_75d47fa69a: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice10_y_net_x1,
      out1 => reinterpret_output_port_net_x3,
      out2 => reinterpret1_output_port_net_x3
    );

  c_to_ri2_25dd27d151: entity work.c_to_ri2_entity_ccdd60bf3a
    port map (
      in1 => slice11_y_net_x1,
      out1 => reinterpret_output_port_net_x1,
      out2 => reinterpret1_output_port_net_x1
    );

  c_to_ri_f721689551: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice9_y_net_x1,
      out1 => reinterpret_output_port_net_x2,
      out2 => reinterpret1_output_port_net_x2
    );

  cmult_26c7722189: entity work.cmult_entity_1c988b6405
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret1_output_port_net_x2,
      c => reinterpret_output_port_net_x3,
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      d => reinterpret1_output_port_net_x3,
      imag => imag_sum_s_net_x1,
      real_x0 => real_sum_s_net_x1
    );

  constant1: entity work.constant_7244cd602b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 127,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_54ae29da2816c092",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      en => "1",
      rst(0) => delay_q_net,
      op => counter_op_net
    );

  delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      d(0) => sync_in_net_x3,
      q(0) => delay_q_net
    );

  relational: entity work.relational_924e250c23
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      clr => '0',
      op(0) => relational_op_net_x1
    );

  ri_to_c_3490ffa215: entity work.ri_to_c_entity_3b4fd602ca
    port map (
      in1 => mux2_y_net_x2,
      in2 => mux2_y_net_x3,
      out1 => concat_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/dual_pol_cmac"

entity dual_pol_cmac_entity_5795c3b2e9 is
  port (
    a1: in std_logic_vector(15 downto 0); 
    acc_in: in std_logic_vector(127 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(127 downto 0); 
    valid_out: out std_logic
  );
end dual_pol_cmac_entity_5795c3b2e9;

architecture structural of dual_pol_cmac_entity_5795c3b2e9 is
  signal ant_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal concat_y_net_x0: std_logic_vector(127 downto 0);
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal concat_y_net_x2: std_logic_vector(31 downto 0);
  signal concat_y_net_x3: std_logic_vector(31 downto 0);
  signal concat_y_net_x4: std_logic_vector(31 downto 0);
  signal constant1_op_net_x2: std_logic;
  signal constant_op_net_x0: std_logic_vector(127 downto 0);
  signal mux3_y_net_x2: std_logic;
  signal slice10_y_net_x1: std_logic_vector(7 downto 0);
  signal slice11_y_net_x1: std_logic_vector(31 downto 0);
  signal slice1_y_net_x2: std_logic_vector(7 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice3_y_net_x1: std_logic_vector(7 downto 0);
  signal slice4_y_net_x1: std_logic_vector(7 downto 0);
  signal slice5_y_net_x1: std_logic_vector(31 downto 0);
  signal slice6_y_net_x1: std_logic_vector(7 downto 0);
  signal slice7_y_net_x1: std_logic_vector(7 downto 0);
  signal slice8_y_net_x1: std_logic_vector(31 downto 0);
  signal slice9_y_net_x1: std_logic_vector(7 downto 0);
  signal slice_y_net_x2: std_logic_vector(7 downto 0);
  signal sync_in_net_x4: std_logic;

begin
  ant_net_x0 <= a1;
  constant_op_net_x0 <= acc_in;
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  sync_in_net_x4 <= sync;
  constant1_op_net_x2 <= valid_in;
  acc_out <= concat_y_net_x0;
  valid_out <= mux3_y_net_x2;

  cmac1_1a26249f89: entity work.cmac1_entity_1a26249f89
    port map (
      a_bi => slice_y_net_x2,
      acc_in => slice2_y_net_x1,
      c_di => slice1_y_net_x2,
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      sync => sync_in_net_x4,
      acc_out => concat_y_net_x1
    );

  cmac2_3d473e9c63: entity work.cmac1_entity_1a26249f89
    port map (
      a_bi => slice3_y_net_x1,
      acc_in => slice5_y_net_x1,
      c_di => slice4_y_net_x1,
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      sync => sync_in_net_x4,
      acc_out => concat_y_net_x2
    );

  cmac3_d70180593b: entity work.cmac1_entity_1a26249f89
    port map (
      a_bi => slice6_y_net_x1,
      acc_in => slice8_y_net_x1,
      c_di => slice7_y_net_x1,
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      sync => sync_in_net_x4,
      acc_out => concat_y_net_x3
    );

  cmac4_32a9181772: entity work.cmac4_entity_32a9181772
    port map (
      a_bi => slice9_y_net_x1,
      acc_in => slice11_y_net_x1,
      c_di => slice10_y_net_x1,
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      sync => sync_in_net_x4,
      valid_in => constant1_op_net_x2,
      acc_out => concat_y_net_x4,
      valid_out => mux3_y_net_x2
    );

  concat: entity work.concat_b11ec1c0d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x1,
      in1 => concat_y_net_x2,
      in2 => concat_y_net_x3,
      in3 => concat_y_net_x4,
      y => concat_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice_y_net_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice1_y_net_x2
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice10_y_net_x1
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => constant_op_net_x0,
      y => slice11_y_net_x1
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 127,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => constant_op_net_x0,
      y => slice2_y_net_x1
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice3_y_net_x1
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice4_y_net_x1
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 95,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => constant_op_net_x0,
      y => slice5_y_net_x1
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice6_y_net_x1
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice7_y_net_x1
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => constant_op_net_x0,
      y => slice8_y_net_x1
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => ant_net_x0,
      y => slice9_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap/sync_delay"

entity sync_delay_entity_d2df53d6ac is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_d2df53d6ac;

architecture structural of sync_delay_entity_d2df53d6ac is
  signal ce_1_sg_x18: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal constant1_op_net: std_logic_vector(7 downto 0);
  signal constant2_op_net: std_logic_vector(7 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal sync_in_net_x5: std_logic;

begin
  ce_1_sg_x18 <= ce_1;
  clk_1_sg_x18 <= clk_1;
  sync_in_net_x5 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_91a728e105
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_b437b02512
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free_xeng_core
    generic map (
      core_name0 => "cntr_11_0_62790f857e3f8294",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => sync_in_net_x5,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => sync_in_net_x5,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => sync_in_net_x5,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_54048c8b02
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_16235eb2bf
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/auto_tap"

entity auto_tap_entity_318fc556a4 is
  port (
    a_del: in std_logic_vector(15 downto 0); 
    a_loop: in std_logic_vector(15 downto 0); 
    acc_in: in std_logic_vector(127 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync_in: in std_logic; 
    valid_in: in std_logic; 
    a_end_out: out std_logic_vector(15 downto 0); 
    acc_out: out std_logic_vector(127 downto 0); 
    sync_out: out std_logic; 
    valid_out: out std_logic
  );
end auto_tap_entity_318fc556a4;

architecture structural of auto_tap_entity_318fc556a4 is
  signal ant_net_x1: std_logic_vector(15 downto 0);
  signal ce_1_sg_x19: std_logic;
  signal clk_1_sg_x19: std_logic;
  signal concat_y_net_x1: std_logic_vector(127 downto 0);
  signal constant1_op_net_x3: std_logic;
  signal constant_op_net_x1: std_logic_vector(127 downto 0);
  signal delay3_q_net_x1: std_logic_vector(15 downto 0);
  signal mux3_y_net_x3: std_logic;
  signal mux_y_net_x1: std_logic;
  signal ram_data_out_net_x1: std_logic_vector(15 downto 0);
  signal sync_in_net_x6: std_logic;

begin
  ant_net_x1 <= a_del;
  delay3_q_net_x1 <= a_loop;
  constant_op_net_x1 <= acc_in;
  ce_1_sg_x19 <= ce_1;
  clk_1_sg_x19 <= clk_1;
  sync_in_net_x6 <= sync_in;
  constant1_op_net_x3 <= valid_in;
  a_end_out <= ram_data_out_net_x1;
  acc_out <= concat_y_net_x1;
  sync_out <= mux_y_net_x1;
  valid_out <= mux3_y_net_x3;

  delay_4e3b3b3964: entity work.delay_entity_4e3b3b3964
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      din => delay3_q_net_x1,
      dout => ram_data_out_net_x1
    );

  dual_pol_cmac_5795c3b2e9: entity work.dual_pol_cmac_entity_5795c3b2e9
    port map (
      a1 => ant_net_x1,
      acc_in => constant_op_net_x1,
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      sync => sync_in_net_x6,
      valid_in => constant1_op_net_x3,
      acc_out => concat_y_net_x1,
      valid_out => mux3_y_net_x3
    );

  sync_delay_d2df53d6ac: entity work.sync_delay_entity_d2df53d6ac
    port map (
      ce_1 => ce_1_sg_x19,
      clk_1 => clk_1_sg_x19,
      in_x0 => sync_in_net_x6,
      out_x0 => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap1/delay"

entity delay_entity_f72d30b8e2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(15 downto 0)
  );
end delay_entity_f72d30b8e2;

architecture structural of delay_entity_f72d30b8e2 is
  signal ant_net_x2: std_logic_vector(15 downto 0);
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal constant_op_net: std_logic;
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal ram_data_out_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  ant_net_x2 <= din;
  dout <= ram_data_out_net_x0;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 125,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_54ae29da2816c092",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  ram: entity work.xlspram_xeng_core
    generic map (
      c_address_width => 7,
      c_width => 16,
      core_name0 => "bmg_72_24d0754b1ef55a90",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      data_in => ant_net_x2,
      en => "1",
      rst => "0",
      we(0) => constant_op_net,
      data_out => ram_data_out_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap1/dual_pol_cmac/cmac4/acc1"

entity acc1_entity_7f83fb42d5 is
  port (
    acc_in: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(8 downto 0); 
    rst: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(15 downto 0); 
    valid_out: out std_logic
  );
end acc1_entity_7f83fb42d5;

architecture structural of acc1_entity_7f83fb42d5 is
  signal accumulator_q_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x34: std_logic;
  signal clk_1_sg_x34: std_logic;
  signal constant_op_net: std_logic;
  signal convert1_dout_net: std_logic_vector(15 downto 0);
  signal convert2_dout_net: std_logic;
  signal delay1_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal imag_sum_s_net_x0: std_logic_vector(8 downto 0);
  signal mux2_y_net_x0: std_logic_vector(15 downto 0);
  signal mux3_y_net_x0: std_logic;
  signal mux3_y_net_x4: std_logic;
  signal reinterpret1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal relational_op_net_x1: std_logic;

begin
  reinterpret1_output_port_net_x0 <= acc_in;
  ce_1_sg_x34 <= ce_1;
  clk_1_sg_x34 <= clk_1;
  imag_sum_s_net_x0 <= din;
  relational_op_net_x1 <= rst;
  mux3_y_net_x4 <= valid_in;
  acc_out <= mux2_y_net_x0;
  valid_out <= mux3_y_net_x0;

  accumulator: entity work.accum_5cd25528af
    port map (
      b => convert1_dout_net,
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      rst(0) => delay1_q_net,
      q => accumulator_q_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 9,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din => imag_sum_s_net_x0,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din(0) => mux3_y_net_x4,
      en => "1",
      dout(0) => convert2_dout_net
    );

  delay: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => delay1_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.delay_0341f7be44
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => relational_op_net_x1,
      q(0) => delay1_q_net
    );

  mux2: entity work.mux_0aaa3afba6
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      d0 => reinterpret1_output_port_net_x0,
      d1 => accumulator_q_net,
      sel(0) => delay_q_net,
      y => mux2_y_net_x0
    );

  mux3: entity work.mux_ea282058e1
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      d0(0) => convert2_dout_net,
      d1(0) => constant_op_net,
      sel(0) => delay_q_net,
      y(0) => mux3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap1/dual_pol_cmac/cmac4"

entity cmac4_entity_187cd21170 is
  port (
    a_bi: in std_logic_vector(7 downto 0); 
    acc_in: in std_logic_vector(31 downto 0); 
    c_di: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(31 downto 0); 
    valid_out: out std_logic
  );
end cmac4_entity_187cd21170;

architecture structural of cmac4_entity_187cd21170 is
  signal ce_1_sg_x36: std_logic;
  signal clk_1_sg_x36: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay1_q_net_x3: std_logic;
  signal delay_q_net: std_logic;
  signal imag_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal mux2_y_net_x2: std_logic_vector(15 downto 0);
  signal mux2_y_net_x3: std_logic_vector(15 downto 0);
  signal mux3_y_net_x1: std_logic;
  signal mux3_y_net_x5: std_logic;
  signal real_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(3 downto 0);
  signal relational_op_net_x1: std_logic;
  signal slice10_y_net_x1: std_logic_vector(7 downto 0);
  signal slice11_y_net_x1: std_logic_vector(31 downto 0);
  signal slice9_y_net_x1: std_logic_vector(7 downto 0);

begin
  slice9_y_net_x1 <= a_bi;
  slice11_y_net_x1 <= acc_in;
  slice10_y_net_x1 <= c_di;
  ce_1_sg_x36 <= ce_1;
  clk_1_sg_x36 <= clk_1;
  delay1_q_net_x3 <= sync;
  mux3_y_net_x5 <= valid_in;
  acc_out <= concat_y_net_x1;
  valid_out <= mux3_y_net_x1;

  acc1_7f83fb42d5: entity work.acc1_entity_7f83fb42d5
    port map (
      acc_in => reinterpret1_output_port_net_x1,
      ce_1 => ce_1_sg_x36,
      clk_1 => clk_1_sg_x36,
      din => imag_sum_s_net_x1,
      rst => relational_op_net_x1,
      valid_in => mux3_y_net_x5,
      acc_out => mux2_y_net_x3,
      valid_out => mux3_y_net_x1
    );

  acc_ace5822ed9: entity work.acc_entity_4cde1819cd
    port map (
      acc_in => reinterpret_output_port_net_x1,
      ce_1 => ce_1_sg_x36,
      clk_1 => clk_1_sg_x36,
      din => real_sum_s_net_x1,
      rst => relational_op_net_x1,
      acc_out => mux2_y_net_x2
    );

  c_to_ri1_675ac44064: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice10_y_net_x1,
      out1 => reinterpret_output_port_net_x3,
      out2 => reinterpret1_output_port_net_x3
    );

  c_to_ri2_f7d48fbaee: entity work.c_to_ri2_entity_ccdd60bf3a
    port map (
      in1 => slice11_y_net_x1,
      out1 => reinterpret_output_port_net_x1,
      out2 => reinterpret1_output_port_net_x1
    );

  c_to_ri_05f32145f7: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice9_y_net_x1,
      out1 => reinterpret_output_port_net_x2,
      out2 => reinterpret1_output_port_net_x2
    );

  cmult_8bb9c25570: entity work.cmult_entity_1c988b6405
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret1_output_port_net_x2,
      c => reinterpret_output_port_net_x3,
      ce_1 => ce_1_sg_x36,
      clk_1 => clk_1_sg_x36,
      d => reinterpret1_output_port_net_x3,
      imag => imag_sum_s_net_x1,
      real_x0 => real_sum_s_net_x1
    );

  constant1: entity work.constant_7244cd602b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 127,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_54ae29da2816c092",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      en => "1",
      rst(0) => delay_q_net,
      op => counter_op_net
    );

  delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      d(0) => delay1_q_net_x3,
      q(0) => delay_q_net
    );

  relational: entity work.relational_924e250c23
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      op(0) => relational_op_net_x1
    );

  ri_to_c_86e1c1d1d2: entity work.ri_to_c_entity_3b4fd602ca
    port map (
      in1 => mux2_y_net_x2,
      in2 => mux2_y_net_x3,
      out1 => concat_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap1/dual_pol_cmac"

entity dual_pol_cmac_entity_ad0a7534e2 is
  port (
    a1: in std_logic_vector(15 downto 0); 
    a2: in std_logic_vector(15 downto 0); 
    acc_in: in std_logic_vector(127 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(127 downto 0); 
    valid_out: out std_logic
  );
end dual_pol_cmac_entity_ad0a7534e2;

architecture structural of dual_pol_cmac_entity_ad0a7534e2 is
  signal ce_1_sg_x37: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal concat_y_net_x0: std_logic_vector(127 downto 0);
  signal concat_y_net_x2: std_logic_vector(31 downto 0);
  signal concat_y_net_x3: std_logic_vector(31 downto 0);
  signal concat_y_net_x4: std_logic_vector(31 downto 0);
  signal concat_y_net_x5: std_logic_vector(31 downto 0);
  signal concat_y_net_x6: std_logic_vector(127 downto 0);
  signal delay1_q_net_x4: std_logic;
  signal delay3_q_net_x0: std_logic_vector(15 downto 0);
  signal mux3_y_net_x2: std_logic;
  signal mux3_y_net_x6: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal slice10_y_net_x1: std_logic_vector(7 downto 0);
  signal slice11_y_net_x1: std_logic_vector(31 downto 0);
  signal slice1_y_net_x2: std_logic_vector(7 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice3_y_net_x1: std_logic_vector(7 downto 0);
  signal slice4_y_net_x1: std_logic_vector(7 downto 0);
  signal slice5_y_net_x1: std_logic_vector(31 downto 0);
  signal slice6_y_net_x1: std_logic_vector(7 downto 0);
  signal slice7_y_net_x1: std_logic_vector(7 downto 0);
  signal slice8_y_net_x1: std_logic_vector(31 downto 0);
  signal slice9_y_net_x1: std_logic_vector(7 downto 0);
  signal slice_y_net_x2: std_logic_vector(7 downto 0);

begin
  delay3_q_net_x0 <= a1;
  mux_y_net_x0 <= a2;
  concat_y_net_x6 <= acc_in;
  ce_1_sg_x37 <= ce_1;
  clk_1_sg_x37 <= clk_1;
  delay1_q_net_x4 <= sync;
  mux3_y_net_x6 <= valid_in;
  acc_out <= concat_y_net_x0;
  valid_out <= mux3_y_net_x2;

  cmac1_6606b71cf6: entity work.cmac1_entity_1a26249f89
    port map (
      a_bi => slice_y_net_x2,
      acc_in => slice2_y_net_x1,
      c_di => slice1_y_net_x2,
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      sync => delay1_q_net_x4,
      acc_out => concat_y_net_x2
    );

  cmac2_d94584dd2c: entity work.cmac1_entity_1a26249f89
    port map (
      a_bi => slice3_y_net_x1,
      acc_in => slice5_y_net_x1,
      c_di => slice4_y_net_x1,
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      sync => delay1_q_net_x4,
      acc_out => concat_y_net_x3
    );

  cmac3_d08b9ecfb8: entity work.cmac1_entity_1a26249f89
    port map (
      a_bi => slice6_y_net_x1,
      acc_in => slice8_y_net_x1,
      c_di => slice7_y_net_x1,
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      sync => delay1_q_net_x4,
      acc_out => concat_y_net_x4
    );

  cmac4_187cd21170: entity work.cmac4_entity_187cd21170
    port map (
      a_bi => slice9_y_net_x1,
      acc_in => slice11_y_net_x1,
      c_di => slice10_y_net_x1,
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      sync => delay1_q_net_x4,
      valid_in => mux3_y_net_x6,
      acc_out => concat_y_net_x5,
      valid_out => mux3_y_net_x2
    );

  concat: entity work.concat_b11ec1c0d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x2,
      in1 => concat_y_net_x3,
      in2 => concat_y_net_x4,
      in3 => concat_y_net_x5,
      y => concat_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x0,
      y => slice_y_net_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice1_y_net_x2
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice10_y_net_x1
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x6,
      y => slice11_y_net_x1
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 127,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x6,
      y => slice2_y_net_x1
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x0,
      y => slice3_y_net_x1
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice4_y_net_x1
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 95,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x6,
      y => slice5_y_net_x1
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x0,
      y => slice6_y_net_x1
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice7_y_net_x1
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x6,
      y => slice8_y_net_x1
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x0,
      y => slice9_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap1"

entity baseline_tap1_entity_baa0991c5c is
  port (
    a_del: in std_logic_vector(15 downto 0); 
    a_end: in std_logic_vector(15 downto 0); 
    acc_in: in std_logic_vector(127 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    valid_in: in std_logic; 
    a_del_out: out std_logic_vector(15 downto 0); 
    a_end_out: out std_logic_vector(15 downto 0); 
    a_ndel_out: out std_logic_vector(15 downto 0); 
    acc_out: out std_logic_vector(127 downto 0); 
    rst_out: out std_logic; 
    valid_out: out std_logic
  );
end baseline_tap1_entity_baa0991c5c;

architecture structural of baseline_tap1_entity_baa0991c5c is
  signal ant_net_x3: std_logic_vector(15 downto 0);
  signal ce_1_sg_x38: std_logic;
  signal clk_1_sg_x38: std_logic;
  signal concat_y_net_x7: std_logic_vector(127 downto 0);
  signal concat_y_net_x8: std_logic_vector(127 downto 0);
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal convert_dout_net: std_logic;
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay1_q_net_x5: std_logic;
  signal delay3_q_net_x1: std_logic_vector(15 downto 0);
  signal delay7_q_net_x0: std_logic_vector(15 downto 0);
  signal delay8_q_net_x0: std_logic_vector(15 downto 0);
  signal mux3_y_net_x3: std_logic;
  signal mux3_y_net_x7: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal ram_data_out_net_x0: std_logic_vector(15 downto 0);
  signal ram_data_out_net_x2: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal sync_in_net_x7: std_logic;

begin
  ant_net_x3 <= a_del;
  ram_data_out_net_x2 <= a_end;
  concat_y_net_x7 <= acc_in;
  ce_1_sg_x38 <= ce_1;
  clk_1_sg_x38 <= clk_1;
  sync_in_net_x7 <= rst;
  mux3_y_net_x7 <= valid_in;
  a_del_out <= delay3_q_net_x1;
  a_end_out <= delay8_q_net_x0;
  a_ndel_out <= delay7_q_net_x0;
  acc_out <= concat_y_net_x8;
  rst_out <= delay1_q_net_x5;
  valid_out <= mux3_y_net_x3;

  constant_x0: entity work.constant_e68a6622a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      din(0) => relational_op_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 511,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_1f06b71632254894",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      en => "1",
      rst(0) => sync_in_net_x7,
      op => counter_op_net
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d(0) => sync_in_net_x7,
      q(0) => delay1_q_net_x5
    );

  delay3: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d => ram_data_out_net_x0,
      q => delay3_q_net_x1
    );

  delay7: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d => ant_net_x3,
      q => delay7_q_net_x0
    );

  delay8: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d => ram_data_out_net_x2,
      q => delay8_q_net_x0
    );

  delay_f72d30b8e2: entity work.delay_entity_f72d30b8e2
    port map (
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      din => ant_net_x3,
      dout => ram_data_out_net_x0
    );

  dual_pol_cmac_ad0a7534e2: entity work.dual_pol_cmac_entity_ad0a7534e2
    port map (
      a1 => delay3_q_net_x1,
      a2 => mux_y_net_x0,
      acc_in => concat_y_net_x7,
      ce_1 => ce_1_sg_x38,
      clk_1 => clk_1_sg_x38,
      sync => delay1_q_net_x5,
      valid_in => mux3_y_net_x7,
      acc_out => concat_y_net_x8,
      valid_out => mux3_y_net_x3
    );

  mux: entity work.mux_bfb8dadb36
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      d0 => ant_net_x3,
      d1 => ram_data_out_net_x2,
      sel(0) => convert_dout_net,
      y => mux_y_net_x0
    );

  relational: entity work.relational_82fb466a8b
    port map (
      a => counter_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap2/delay"

entity delay_entity_4fda5b1e75 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(15 downto 0); 
    out1: out std_logic_vector(15 downto 0)
  );
end delay_entity_4fda5b1e75;

architecture structural of delay_entity_4fda5b1e75 is
  signal ce_1_sg_x39: std_logic;
  signal clk_1_sg_x39: std_logic;
  signal constant2_op_net: std_logic;
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay3_q_net_x2: std_logic_vector(15 downto 0);
  signal single_port_ram_data_out_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x39 <= ce_1;
  clk_1_sg_x39 <= clk_1;
  delay3_q_net_x2 <= in1;
  out1 <= single_port_ram_data_out_net_x0;

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 125,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_54ae29da2816c092",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  single_port_ram: entity work.xlspram_xeng_core
    generic map (
      c_address_width => 7,
      c_width => 16,
      core_name0 => "bmg_72_24d0754b1ef55a90",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      data_in => delay3_q_net_x2,
      en => "1",
      rst => "0",
      we(0) => constant2_op_net,
      data_out => single_port_ram_data_out_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap2/dual_pol_cmac/cmac1/cmult*"

entity cmult_entity_50ec7f13e0 is
  port (
    a: in std_logic_vector(3 downto 0); 
    b: in std_logic_vector(3 downto 0); 
    c: in std_logic_vector(3 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(3 downto 0); 
    imag: out std_logic_vector(8 downto 0); 
    real_x0: out std_logic_vector(8 downto 0)
  );
end cmult_entity_50ec7f13e0;

architecture structural of cmult_entity_50ec7f13e0 is
  signal ac_p_net: std_logic_vector(7 downto 0);
  signal ad_p_net: std_logic_vector(7 downto 0);
  signal bc_p_net: std_logic_vector(7 downto 0);
  signal bd_p_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x42: std_logic;
  signal clk_1_sg_x42: std_logic;
  signal imag_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(3 downto 0);

begin
  reinterpret_output_port_net_x2 <= a;
  reinterpret1_output_port_net_x2 <= b;
  reinterpret_output_port_net_x3 <= c;
  ce_1_sg_x42 <= ce_1;
  clk_1_sg_x42 <= clk_1;
  reinterpret1_output_port_net_x3 <= d;
  imag <= imag_sum_s_net_x1;
  real_x0 <= real_sum_s_net_x1;

  ac: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_8b0c6cbba9b2df30",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret_output_port_net_x3,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      core_ce => ce_1_sg_x42,
      core_clk => clk_1_sg_x42,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ac_p_net
    );

  ad: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_8b0c6cbba9b2df30",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret1_output_port_net_x3,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      core_ce => ce_1_sg_x42,
      core_clk => clk_1_sg_x42,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => ad_p_net
    );

  bc: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_8b0c6cbba9b2df30",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net_x2,
      b => reinterpret_output_port_net_x3,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      core_ce => ce_1_sg_x42,
      core_clk => clk_1_sg_x42,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bc_p_net
    );

  bd: entity work.xlmult_xeng_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 3,
      a_width => 4,
      b_arith => xlSigned,
      b_bin_pt => 3,
      b_width => 4,
      c_a_type => 0,
      c_a_width => 4,
      c_b_type => 0,
      c_b_width => 4,
      c_baat => 4,
      c_output_width => 8,
      c_type => 0,
      core_name0 => "mult_11_2_8b0c6cbba9b2df30",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 6,
      p_width => 8,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net_x2,
      b => reinterpret1_output_port_net_x3,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      core_ce => ce_1_sg_x42,
      core_clk => clk_1_sg_x42,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => bd_p_net
    );

  imag_sum: entity work.addsub_5a117bfeae
    port map (
      a => bc_p_net,
      b => ad_p_net,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      s => imag_sum_s_net_x1
    );

  real_sum: entity work.addsub_407908e668
    port map (
      a => ac_p_net,
      b => bd_p_net,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      s => real_sum_s_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap2/dual_pol_cmac/cmac1"

entity cmac1_entity_cc5576754f is
  port (
    a_bi: in std_logic_vector(7 downto 0); 
    acc_in: in std_logic_vector(31 downto 0); 
    c_di: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    acc_out: out std_logic_vector(31 downto 0)
  );
end cmac1_entity_cc5576754f;

architecture structural of cmac1_entity_cc5576754f is
  signal ce_1_sg_x43: std_logic;
  signal clk_1_sg_x43: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay_q_net: std_logic;
  signal imag_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal mux2_y_net_x2: std_logic_vector(15 downto 0);
  signal mux2_y_net_x3: std_logic_vector(15 downto 0);
  signal real_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(3 downto 0);
  signal relational_op_net_x1: std_logic;
  signal slice1_y_net_x2: std_logic_vector(7 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice_y_net_x2: std_logic_vector(7 downto 0);

begin
  slice_y_net_x2 <= a_bi;
  slice2_y_net_x1 <= acc_in;
  slice1_y_net_x2 <= c_di;
  ce_1_sg_x43 <= ce_1;
  clk_1_sg_x43 <= clk_1;
  delay1_q_net_x0 <= sync;
  acc_out <= concat_y_net_x1;

  acc1_197c682c2e: entity work.acc_entity_4cde1819cd
    port map (
      acc_in => reinterpret1_output_port_net_x1,
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      din => imag_sum_s_net_x1,
      rst => relational_op_net_x1,
      acc_out => mux2_y_net_x3
    );

  acc_e4292cff2c: entity work.acc_entity_4cde1819cd
    port map (
      acc_in => reinterpret_output_port_net_x1,
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      din => real_sum_s_net_x1,
      rst => relational_op_net_x1,
      acc_out => mux2_y_net_x2
    );

  c_to_ri1_4fa2a57f70: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice1_y_net_x2,
      out1 => reinterpret_output_port_net_x3,
      out2 => reinterpret1_output_port_net_x3
    );

  c_to_ri2_b0c64208eb: entity work.c_to_ri2_entity_ccdd60bf3a
    port map (
      in1 => slice2_y_net_x1,
      out1 => reinterpret_output_port_net_x1,
      out2 => reinterpret1_output_port_net_x1
    );

  c_to_ri_7bc2cd4787: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice_y_net_x2,
      out1 => reinterpret_output_port_net_x2,
      out2 => reinterpret1_output_port_net_x2
    );

  cmult_50ec7f13e0: entity work.cmult_entity_50ec7f13e0
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret1_output_port_net_x2,
      c => reinterpret_output_port_net_x3,
      ce_1 => ce_1_sg_x43,
      clk_1 => clk_1_sg_x43,
      d => reinterpret1_output_port_net_x3,
      imag => imag_sum_s_net_x1,
      real_x0 => real_sum_s_net_x1
    );

  constant1: entity work.constant_7244cd602b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 127,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_54ae29da2816c092",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      en => "1",
      rst(0) => delay_q_net,
      op => counter_op_net
    );

  delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      d(0) => delay1_q_net_x0,
      q(0) => delay_q_net
    );

  relational: entity work.relational_924e250c23
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      op(0) => relational_op_net_x1
    );

  ri_to_c_d618486933: entity work.ri_to_c_entity_3b4fd602ca
    port map (
      in1 => mux2_y_net_x2,
      in2 => mux2_y_net_x3,
      out1 => concat_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap2/dual_pol_cmac/cmac4"

entity cmac4_entity_14acbdae34 is
  port (
    a_bi: in std_logic_vector(7 downto 0); 
    acc_in: in std_logic_vector(31 downto 0); 
    c_di: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(31 downto 0); 
    valid_out: out std_logic
  );
end cmac4_entity_14acbdae34;

architecture structural of cmac4_entity_14acbdae34 is
  signal ce_1_sg_x55: std_logic;
  signal clk_1_sg_x55: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant1_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(6 downto 0);
  signal delay1_q_net_x3: std_logic;
  signal delay_q_net: std_logic;
  signal imag_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal mux2_y_net_x2: std_logic_vector(15 downto 0);
  signal mux2_y_net_x3: std_logic_vector(15 downto 0);
  signal mux3_y_net_x1: std_logic;
  signal mux3_y_net_x5: std_logic;
  signal real_sum_s_net_x1: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret1_output_port_net_x3: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(15 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(3 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(3 downto 0);
  signal relational_op_net_x1: std_logic;
  signal slice10_y_net_x1: std_logic_vector(7 downto 0);
  signal slice11_y_net_x1: std_logic_vector(31 downto 0);
  signal slice9_y_net_x1: std_logic_vector(7 downto 0);

begin
  slice9_y_net_x1 <= a_bi;
  slice11_y_net_x1 <= acc_in;
  slice10_y_net_x1 <= c_di;
  ce_1_sg_x55 <= ce_1;
  clk_1_sg_x55 <= clk_1;
  delay1_q_net_x3 <= sync;
  mux3_y_net_x5 <= valid_in;
  acc_out <= concat_y_net_x1;
  valid_out <= mux3_y_net_x1;

  acc1_92dd61f811: entity work.acc1_entity_7f83fb42d5
    port map (
      acc_in => reinterpret1_output_port_net_x1,
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      din => imag_sum_s_net_x1,
      rst => relational_op_net_x1,
      valid_in => mux3_y_net_x5,
      acc_out => mux2_y_net_x3,
      valid_out => mux3_y_net_x1
    );

  acc_d95c083995: entity work.acc_entity_4cde1819cd
    port map (
      acc_in => reinterpret_output_port_net_x1,
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      din => real_sum_s_net_x1,
      rst => relational_op_net_x1,
      acc_out => mux2_y_net_x2
    );

  c_to_ri1_492260b34b: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice10_y_net_x1,
      out1 => reinterpret_output_port_net_x3,
      out2 => reinterpret1_output_port_net_x3
    );

  c_to_ri2_a019447e60: entity work.c_to_ri2_entity_ccdd60bf3a
    port map (
      in1 => slice11_y_net_x1,
      out1 => reinterpret_output_port_net_x1,
      out2 => reinterpret1_output_port_net_x1
    );

  c_to_ri_82ebe530cd: entity work.c_to_ri_entity_6b1d5b21e2
    port map (
      in1 => slice9_y_net_x1,
      out1 => reinterpret_output_port_net_x2,
      out2 => reinterpret1_output_port_net_x2
    );

  cmult_8ed349b202: entity work.cmult_entity_50ec7f13e0
    port map (
      a => reinterpret_output_port_net_x2,
      b => reinterpret1_output_port_net_x2,
      c => reinterpret_output_port_net_x3,
      ce_1 => ce_1_sg_x55,
      clk_1 => clk_1_sg_x55,
      d => reinterpret1_output_port_net_x3,
      imag => imag_sum_s_net_x1,
      real_x0 => real_sum_s_net_x1
    );

  constant1: entity work.constant_7244cd602b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 127,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_54ae29da2816c092",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 7
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      en => "1",
      rst(0) => delay_q_net,
      op => counter_op_net
    );

  delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      d(0) => delay1_q_net_x3,
      q(0) => delay_q_net
    );

  relational: entity work.relational_924e250c23
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      op(0) => relational_op_net_x1
    );

  ri_to_c_baa52d1b5b: entity work.ri_to_c_entity_3b4fd602ca
    port map (
      in1 => mux2_y_net_x2,
      in2 => mux2_y_net_x3,
      out1 => concat_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap2/dual_pol_cmac"

entity dual_pol_cmac_entity_11554f16bb is
  port (
    a1: in std_logic_vector(15 downto 0); 
    a2: in std_logic_vector(15 downto 0); 
    acc_in: in std_logic_vector(127 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    valid_in: in std_logic; 
    acc_out: out std_logic_vector(127 downto 0); 
    valid_out: out std_logic
  );
end dual_pol_cmac_entity_11554f16bb;

architecture structural of dual_pol_cmac_entity_11554f16bb is
  signal ce_1_sg_x56: std_logic;
  signal clk_1_sg_x56: std_logic;
  signal concat_y_net_x0: std_logic_vector(127 downto 0);
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal concat_y_net_x10: std_logic_vector(31 downto 0);
  signal concat_y_net_x11: std_logic_vector(31 downto 0);
  signal concat_y_net_x12: std_logic_vector(127 downto 0);
  signal concat_y_net_x9: std_logic_vector(31 downto 0);
  signal delay1_q_net_x4: std_logic;
  signal delay3_q_net_x2: std_logic_vector(15 downto 0);
  signal mux3_y_net_x2: std_logic;
  signal mux3_y_net_x6: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal slice10_y_net_x1: std_logic_vector(7 downto 0);
  signal slice11_y_net_x1: std_logic_vector(31 downto 0);
  signal slice1_y_net_x2: std_logic_vector(7 downto 0);
  signal slice2_y_net_x1: std_logic_vector(31 downto 0);
  signal slice3_y_net_x1: std_logic_vector(7 downto 0);
  signal slice4_y_net_x1: std_logic_vector(7 downto 0);
  signal slice5_y_net_x1: std_logic_vector(31 downto 0);
  signal slice6_y_net_x1: std_logic_vector(7 downto 0);
  signal slice7_y_net_x1: std_logic_vector(7 downto 0);
  signal slice8_y_net_x1: std_logic_vector(31 downto 0);
  signal slice9_y_net_x1: std_logic_vector(7 downto 0);
  signal slice_y_net_x2: std_logic_vector(7 downto 0);

begin
  delay3_q_net_x2 <= a1;
  mux_y_net_x0 <= a2;
  concat_y_net_x12 <= acc_in;
  ce_1_sg_x56 <= ce_1;
  clk_1_sg_x56 <= clk_1;
  delay1_q_net_x4 <= sync;
  mux3_y_net_x6 <= valid_in;
  acc_out <= concat_y_net_x0;
  valid_out <= mux3_y_net_x2;

  cmac1_cc5576754f: entity work.cmac1_entity_cc5576754f
    port map (
      a_bi => slice_y_net_x2,
      acc_in => slice2_y_net_x1,
      c_di => slice1_y_net_x2,
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      sync => delay1_q_net_x4,
      acc_out => concat_y_net_x1
    );

  cmac2_015dab737d: entity work.cmac1_entity_cc5576754f
    port map (
      a_bi => slice3_y_net_x1,
      acc_in => slice5_y_net_x1,
      c_di => slice4_y_net_x1,
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      sync => delay1_q_net_x4,
      acc_out => concat_y_net_x9
    );

  cmac3_f3af880aeb: entity work.cmac1_entity_cc5576754f
    port map (
      a_bi => slice6_y_net_x1,
      acc_in => slice8_y_net_x1,
      c_di => slice7_y_net_x1,
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      sync => delay1_q_net_x4,
      acc_out => concat_y_net_x10
    );

  cmac4_14acbdae34: entity work.cmac4_entity_14acbdae34
    port map (
      a_bi => slice9_y_net_x1,
      acc_in => slice11_y_net_x1,
      c_di => slice10_y_net_x1,
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      sync => delay1_q_net_x4,
      valid_in => mux3_y_net_x6,
      acc_out => concat_y_net_x11,
      valid_out => mux3_y_net_x2
    );

  concat: entity work.concat_b11ec1c0d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x1,
      in1 => concat_y_net_x9,
      in2 => concat_y_net_x10,
      in3 => concat_y_net_x11,
      y => concat_y_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x2,
      y => slice_y_net_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice1_y_net_x2
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice10_y_net_x1
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x12,
      y => slice11_y_net_x1
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 127,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x12,
      y => slice2_y_net_x1
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x2,
      y => slice3_y_net_x1
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice4_y_net_x1
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 95,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x12,
      y => slice5_y_net_x1
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x2,
      y => slice6_y_net_x1
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => mux_y_net_x0,
      y => slice7_y_net_x1
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => concat_y_net_x12,
      y => slice8_y_net_x1
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => delay3_q_net_x2,
      y => slice9_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/baseline_tap2"

entity baseline_tap2_entity_6561d79cef is
  port (
    a_del: in std_logic_vector(15 downto 0); 
    a_end: in std_logic_vector(15 downto 0); 
    a_ndel: in std_logic_vector(15 downto 0); 
    acc_in: in std_logic_vector(127 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    rst: in std_logic; 
    valid_in: in std_logic; 
    a_del_out: out std_logic_vector(15 downto 0); 
    acc_out: out std_logic_vector(127 downto 0); 
    valid_out: out std_logic
  );
end baseline_tap2_entity_6561d79cef;

architecture structural of baseline_tap2_entity_6561d79cef is
  signal ce_1_sg_x57: std_logic;
  signal clk_1_sg_x57: std_logic;
  signal concat_y_net_x1: std_logic_vector(127 downto 0);
  signal concat_y_net_x13: std_logic_vector(127 downto 0);
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal convert_dout_net: std_logic;
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay1_q_net_x4: std_logic;
  signal delay1_q_net_x6: std_logic;
  signal delay3_q_net_x4: std_logic_vector(15 downto 0);
  signal delay3_q_net_x5: std_logic_vector(15 downto 0);
  signal delay7_q_net_x1: std_logic_vector(15 downto 0);
  signal delay8_q_net_x1: std_logic_vector(15 downto 0);
  signal mux3_y_net_x3: std_logic;
  signal mux3_y_net_x7: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal single_port_ram_data_out_net_x0: std_logic_vector(15 downto 0);

begin
  delay3_q_net_x4 <= a_del;
  delay8_q_net_x1 <= a_end;
  delay7_q_net_x1 <= a_ndel;
  concat_y_net_x13 <= acc_in;
  ce_1_sg_x57 <= ce_1;
  clk_1_sg_x57 <= clk_1;
  delay1_q_net_x6 <= rst;
  mux3_y_net_x7 <= valid_in;
  a_del_out <= delay3_q_net_x5;
  acc_out <= concat_y_net_x1;
  valid_out <= mux3_y_net_x3;

  constant_x0: entity work.constant_4a391b9a0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      din(0) => relational_op_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  counter: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 511,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_1f06b71632254894",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      en => "1",
      rst(0) => delay1_q_net_x6,
      op => counter_op_net
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      d(0) => delay1_q_net_x6,
      q(0) => delay1_q_net_x4
    );

  delay3: entity work.delay_4246ea65a9
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      d => single_port_ram_data_out_net_x0,
      q => delay3_q_net_x5
    );

  delay_4fda5b1e75: entity work.delay_entity_4fda5b1e75
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      in1 => delay3_q_net_x4,
      out1 => single_port_ram_data_out_net_x0
    );

  dual_pol_cmac_11554f16bb: entity work.dual_pol_cmac_entity_11554f16bb
    port map (
      a1 => delay3_q_net_x5,
      a2 => mux_y_net_x0,
      acc_in => concat_y_net_x13,
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      sync => delay1_q_net_x4,
      valid_in => mux3_y_net_x7,
      acc_out => concat_y_net_x1,
      valid_out => mux3_y_net_x3
    );

  mux: entity work.mux_bfb8dadb36
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      d0 => delay7_q_net_x1,
      d1 => delay8_q_net_x1,
      sel(0) => convert_dout_net,
      y => mux_y_net_x0
    );

  relational: entity work.relational_82fb466a8b
    port map (
      a => counter_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/sample_and_hold1"

entity sample_and_hold1_entity_b8808b16da is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(47 downto 0); 
    sync: in std_logic; 
    out_x0: out std_logic_vector(47 downto 0)
  );
end sample_and_hold1_entity_b8808b16da;

architecture structural of sample_and_hold1_entity_b8808b16da is
  signal ce_1_sg_x58: std_logic;
  signal clk_1_sg_x58: std_logic;
  signal constant3_op_net: std_logic_vector(8 downto 0);
  signal counter4_op_net: std_logic_vector(8 downto 0);
  signal delay10_q_net: std_logic;
  signal logical_y_net: std_logic;
  signal mcnt_in_net_x0: std_logic_vector(47 downto 0);
  signal register_q_net_x0: std_logic_vector(47 downto 0);
  signal relational_op_net: std_logic;
  signal sync_in_net_x8: std_logic;

begin
  ce_1_sg_x58 <= ce_1;
  clk_1_sg_x58 <= clk_1;
  mcnt_in_net_x0 <= in_x0;
  sync_in_net_x8 <= sync;
  out_x0 <= register_q_net_x0;

  constant3: entity work.constant_29632bca4b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  counter4: entity work.xlcounter_free_xeng_core
    generic map (
      core_name0 => "cntr_11_0_1f06b71632254894",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      en => "1",
      rst(0) => logical_y_net,
      op => counter4_op_net
    );

  delay10: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      d(0) => logical_y_net,
      q(0) => delay10_q_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => sync_in_net_x8,
      y(0) => logical_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 48,
      init_value => b"000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      d => mcnt_in_net_x0,
      en(0) => delay10_q_net,
      rst => "0",
      q => register_q_net_x0
    );

  relational: entity work.relational_1ece0ee16d
    port map (
      a => counter4_op_net,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/window_delay/negedge"

entity negedge_entity_ed322263e1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end negedge_entity_ed322263e1;

architecture structural of negedge_entity_ed322263e1 is
  signal ce_1_sg_x61: std_logic;
  signal clk_1_sg_x61: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal window_valid_net_x0: std_logic;

begin
  ce_1_sg_x61 <= ce_1;
  clk_1_sg_x61 <= clk_1;
  window_valid_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      d(0) => window_valid_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      clr => '0',
      ip(0) => window_valid_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/window_delay/posedge3"

entity posedge3_entity_a4e1fea13d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end posedge3_entity_a4e1fea13d;

architecture structural of posedge3_entity_a4e1fea13d is
  signal ce_1_sg_x62: std_logic;
  signal clk_1_sg_x62: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal window_valid_net_x1: std_logic;

begin
  ce_1_sg_x62 <= ce_1;
  clk_1_sg_x62 <= clk_1;
  window_valid_net_x1 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      d(0) => window_valid_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      ip(0) => window_valid_net_x1,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/window_delay/sync_delay"

entity sync_delay_entity_3cdc0d2235 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_3cdc0d2235;

architecture structural of sync_delay_entity_3cdc0d2235 is
  signal ce_1_sg_x63: std_logic;
  signal clk_1_sg_x63: std_logic;
  signal constant1_op_net: std_logic_vector(7 downto 0);
  signal constant2_op_net: std_logic_vector(7 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal edge_op_y_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x63 <= ce_1;
  clk_1_sg_x63 <= clk_1;
  edge_op_y_net_x1 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_6bd4aafe24
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_b437b02512
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free_xeng_core
    generic map (
      core_name0 => "cntr_11_0_62790f857e3f8294",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => edge_op_y_net_x1,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => edge_op_y_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => edge_op_y_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_54048c8b02
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_16235eb2bf
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/window_delay"

entity window_delay_entity_2ef0c6e20c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic; 
    sync_delay: out std_logic; 
    sync_delay1: out std_logic
  );
end window_delay_entity_2ef0c6e20c;

architecture structural of window_delay_entity_2ef0c6e20c is
  signal ce_1_sg_x65: std_logic;
  signal clk_1_sg_x65: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal edge_op_y_net_x2: std_logic;
  signal mux_y_net_x2: std_logic;
  signal mux_y_net_x3: std_logic;
  signal register_q_net_x0: std_logic;
  signal window_valid_net_x2: std_logic;

begin
  ce_1_sg_x65 <= ce_1;
  clk_1_sg_x65 <= clk_1;
  window_valid_net_x2 <= in_x0;
  out_x0 <= register_q_net_x0;
  sync_delay <= mux_y_net_x2;
  sync_delay1 <= mux_y_net_x3;

  negedge_ed322263e1: entity work.negedge_entity_ed322263e1
    port map (
      ce_1 => ce_1_sg_x65,
      clk_1 => clk_1_sg_x65,
      in_x0 => window_valid_net_x2,
      out_x0 => edge_op_y_net_x1
    );

  posedge3_a4e1fea13d: entity work.posedge3_entity_a4e1fea13d
    port map (
      ce_1 => ce_1_sg_x65,
      clk_1 => clk_1_sg_x65,
      in_x0 => window_valid_net_x2,
      out_x0 => edge_op_y_net_x2
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      d(0) => mux_y_net_x2,
      en(0) => mux_y_net_x2,
      rst(0) => mux_y_net_x3,
      q(0) => register_q_net_x0
    );

  sync_delay1_f00cc0c66f: entity work.sync_delay_entity_3cdc0d2235
    port map (
      ce_1 => ce_1_sg_x65,
      clk_1 => clk_1_sg_x65,
      in_x0 => edge_op_y_net_x1,
      out_x0 => mux_y_net_x3
    );

  sync_delay_3cdc0d2235: entity work.sync_delay_entity_3cdc0d2235
    port map (
      ce_1 => ce_1_sg_x65,
      clk_1 => clk_1_sg_x65,
      in_x0 => edge_op_y_net_x2,
      out_x0 => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/xeng_descramble_4ant/read_ctrl"

entity read_ctrl_entity_080ae06468 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    start: in std_logic; 
    enable: out std_logic; 
    read_addr: out std_logic_vector(5 downto 0)
  );
end read_ctrl_entity_080ae06468;

architecture structural of read_ctrl_entity_080ae06468 is
  signal ce_1_sg_x66: std_logic;
  signal clk_1_sg_x66: std_logic;
  signal constant1_op_net: std_logic_vector(5 downto 0);
  signal constant2_op_net: std_logic_vector(3 downto 0);
  signal edge_op_y_net_x0: std_logic;
  signal element_op_net_x0: std_logic_vector(5 downto 0);
  signal inverter3_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical7_y_net: std_logic;
  signal register_q_net: std_logic;
  signal relational1_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal ship_element_delay_op_net: std_logic_vector(3 downto 0);

begin
  ce_1_sg_x66 <= ce_1;
  clk_1_sg_x66 <= clk_1;
  edge_op_y_net_x0 <= start;
  enable <= logical1_y_net_x0;
  read_addr <= element_op_net_x0;

  constant1: entity work.constant_bc23896e85
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  element: entity work.xlcounter_free_xeng_core
    generic map (
      core_name0 => "cntr_11_0_66aa4524955422eb",
      op_arith => xlUnsigned,
      op_width => 6
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      en(0) => logical1_y_net_x0,
      rst(0) => edge_op_y_net_x0,
      op => element_op_net_x0
    );

  inverter3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      ip(0) => register_q_net,
      op(0) => inverter3_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational1_op_net,
      d1(0) => inverter3_op_net,
      y(0) => logical1_y_net_x0
    );

  logical7: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => edge_op_y_net_x0,
      d1(0) => relational1_op_net,
      y(0) => logical7_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      d(0) => relational3_op_net,
      en(0) => relational3_op_net,
      rst(0) => edge_op_y_net_x0,
      q(0) => register_q_net
    );

  relational1: entity work.relational_d9630206ff
    port map (
      a => constant2_op_net,
      b => ship_element_delay_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational3: entity work.relational_d36e866ee7
    port map (
      a => constant1_op_net,
      b => element_op_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  ship_element_delay: entity work.xlcounter_free_xeng_core
    generic map (
      core_name0 => "cntr_11_0_601fed0ddd9eff6a",
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      en => "1",
      rst(0) => logical7_y_net,
      op => ship_element_delay_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/xeng_descramble_4ant/write_ctrl/negedge_delay"

entity negedge_delay_entity_df62897139 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end negedge_delay_entity_df62897139;

architecture structural of negedge_delay_entity_df62897139 is
  signal ce_1_sg_x68: std_logic;
  signal clk_1_sg_x68: std_logic;
  signal constant5_op_net: std_logic_vector(8 downto 0);
  signal counter3_op_net: std_logic_vector(8 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal register_q_net_x2: std_logic;
  signal relational5_op_net: std_logic;

begin
  ce_1_sg_x68 <= ce_1;
  clk_1_sg_x68 <= clk_1;
  register_q_net_x2 <= in_x0;
  out_x0 <= logical_y_net_x0;

  constant5: entity work.constant_523908e9ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  counter3: entity work.xlcounter_free_xeng_core
    generic map (
      core_name0 => "cntr_11_0_1f06b71632254894",
      op_arith => xlUnsigned,
      op_width => 9
    )
    port map (
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
      clr => '0',
      en(0) => relational5_op_net,
      rst(0) => edge_op_y_net_x0,
      op => counter3_op_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
      clr => '0',
      d(0) => register_q_net_x2,
      q(0) => delay_q_net
    );

  logical: entity work.logical_6cb8f0ce02
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x2,
      d1(0) => delay_q_net,
      d2(0) => relational5_op_net,
      y(0) => logical_y_net_x0
    );

  negedge_2e26964587: entity work.posedge3_entity_a4e1fea13d
    port map (
      ce_1 => ce_1_sg_x68,
      clk_1 => clk_1_sg_x68,
      in_x0 => register_q_net_x2,
      out_x0 => edge_op_y_net_x0
    );

  relational5: entity work.relational_011282df9a
    port map (
      a => counter3_op_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/xeng_descramble_4ant/write_ctrl/repack1"

entity repack1_entity_9aa102c7d5 is
  port (
    im: in std_logic_vector(15 downto 0); 
    re: in std_logic_vector(15 downto 0); 
    c: out std_logic_vector(31 downto 0)
  );
end repack1_entity_9aa102c7d5;

architecture structural of repack1_entity_9aa102c7d5 is
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal force_im_output_port_net: std_logic_vector(15 downto 0);
  signal force_re_output_port_net: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x1: std_logic_vector(15 downto 0);
  signal negate1_op_net_x0: std_logic_vector(15 downto 0);

begin
  negate1_op_net_x0 <= im;
  force_re_output_port_net_x1 <= re;
  c <= concat_y_net_x0;

  concat: entity work.concat_a369e00c6b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x0
    );

  force_im: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => negate1_op_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => force_re_output_port_net_x1,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/xeng_descramble_4ant/write_ctrl/unpack1"

entity unpack1_entity_a96cae87a9 is
  port (
    c: in std_logic_vector(31 downto 0); 
    im: out std_logic_vector(15 downto 0); 
    re: out std_logic_vector(15 downto 0)
  );
end unpack1_entity_a96cae87a9;

architecture structural of unpack1_entity_a96cae87a9 is
  signal force_im_output_port_net_x0: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(15 downto 0);
  signal slice1_y_net_x0: std_logic_vector(31 downto 0);
  signal slice_im_y_net: std_logic_vector(15 downto 0);
  signal slice_re_y_net: std_logic_vector(15 downto 0);

begin
  slice1_y_net_x0 <= c;
  im <= force_im_output_port_net_x0;
  re <= force_re_output_port_net_x2;

  force_im: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_im_y_net,
      output_port => force_im_output_port_net_x0
    );

  force_re: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_re_y_net,
      output_port => force_re_output_port_net_x2
    );

  slice_im: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => slice1_y_net_x0,
      y => slice_im_y_net
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => slice1_y_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/xeng_descramble_4ant/write_ctrl"

entity write_ctrl_entity_f9c1c65ceb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(127 downto 0); 
    sync: in std_logic; 
    window_valid: in std_logic; 
    xeng_valid: in std_logic; 
    data_out: out std_logic_vector(127 downto 0); 
    enable: out std_logic; 
    start_readout: out std_logic; 
    write_addr: out std_logic_vector(3 downto 0)
  );
end write_ctrl_entity_f9c1c65ceb;

architecture structural of write_ctrl_entity_f9c1c65ceb is
  signal addsub_s_net: std_logic_vector(2 downto 0);
  signal ce_1_sg_x71: std_logic;
  signal clk_1_sg_x71: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal concat_y_net_x2: std_logic_vector(31 downto 0);
  signal concat_y_net_x3: std_logic_vector(31 downto 0);
  signal concat_y_net_x4: std_logic_vector(31 downto 0);
  signal concat_y_net_x5: std_logic_vector(127 downto 0);
  signal constant1_op_net: std_logic_vector(3 downto 0);
  signal constant3_op_net: std_logic_vector(3 downto 0);
  signal constant5_op_net: std_logic_vector(1 downto 0);
  signal constant7_op_net: std_logic_vector(1 downto 0);
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal convert_dout_net: std_logic_vector(2 downto 0);
  signal counter3_op_net: std_logic_vector(3 downto 0);
  signal delay1_q_net: std_logic;
  signal delay3_q_net: std_logic_vector(127 downto 0);
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal delay6_q_net: std_logic_vector(127 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal edge_op_y_net_x2: std_logic;
  signal element_number_op_net: std_logic_vector(3 downto 0);
  signal force_im_output_port_net_x0: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x1: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x2: std_logic_vector(15 downto 0);
  signal force_im_output_port_net_x3: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x2: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x3: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x4: std_logic_vector(15 downto 0);
  signal force_re_output_port_net_x5: std_logic_vector(15 downto 0);
  signal inverter2_op_net: std_logic;
  signal inverter3_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal line_number_op_net: std_logic_vector(1 downto 0);
  signal logical1_y_net: std_logic;
  signal logical2_y_net: std_logic;
  signal logical3_y_net: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net: std_logic;
  signal logical7_y_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux3_y_net_x4: std_logic;
  signal mux_y_net_x0: std_logic_vector(3 downto 0);
  signal mux_y_net_x3: std_logic;
  signal negate1_op_net_x0: std_logic_vector(15 downto 0);
  signal negate2_op_net_x0: std_logic_vector(15 downto 0);
  signal negate3_op_net_x0: std_logic_vector(15 downto 0);
  signal negate4_op_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net_x4: std_logic;
  signal relational1_op_net: std_logic;
  signal relational3_op_net_x0: std_logic;
  signal relational4_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal remux_y_net: std_logic_vector(127 downto 0);
  signal sel_conj_y_net_x0: std_logic_vector(127 downto 0);
  signal slice1_y_net_x0: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(31 downto 0);
  signal slice3_y_net_x0: std_logic_vector(31 downto 0);
  signal slice4_y_net_x0: std_logic_vector(31 downto 0);
  signal tap_number_op_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x71 <= ce_1;
  clk_1_sg_x71 <= clk_1;
  concat_y_net_x5 <= data_in;
  mux_y_net_x3 <= sync;
  register_q_net_x4 <= window_valid;
  mux3_y_net_x4 <= xeng_valid;
  data_out <= sel_conj_y_net_x0;
  enable <= logical7_y_net_x0;
  start_readout <= edge_op_y_net_x2;
  write_addr <= mux_y_net_x0;

  addsub: entity work.addsub_11e3ca3fda
    port map (
      a => constant7_op_net,
      b => line_number_op_net,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      s => addsub_s_net
    );

  constant1: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant3: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant5: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  constant7: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net
    );

  constant_x0: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 3,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      din => tap_number_op_net,
      en => "1",
      dout => convert_dout_net
    );

  counter3: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 8,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_601fed0ddd9eff6a",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => delay5_q_net,
      op => counter3_op_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d(0) => mux_y_net_x3,
      q(0) => delay_q_net
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d(0) => logical2_y_net,
      q(0) => delay1_q_net
    );

  delay3: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => concat_y_net_x5,
      q => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d(0) => delay1_q_net,
      q(0) => delay4_q_net
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d(0) => logical1_y_net,
      q(0) => delay5_q_net
    );

  delay6: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      d => delay3_q_net,
      q => delay6_q_net
    );

  element_number: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 11,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_601fed0ddd9eff6a",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 4
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      en(0) => delay1_q_net,
      rst(0) => logical1_y_net,
      op => element_number_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      ip(0) => relational1_op_net,
      op(0) => inverter_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      ip(0) => inverter_op_net,
      op(0) => inverter2_op_net
    );

  inverter3: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      ip(0) => logical3_y_net,
      op(0) => inverter3_op_net
    );

  line_number: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 3,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_5f22a153812a8bc9",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => logical1_y_net,
      op => line_number_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => delay1_q_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net,
      d1(0) => edge_op_y_net_x0,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => mux3_y_net_x4,
      y(0) => logical2_y_net
    );

  logical3: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational4_op_net,
      d1(0) => inverter_op_net,
      y(0) => logical3_y_net
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay4_q_net,
      d1(0) => inverter2_op_net,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => delay1_q_net,
      y(0) => logical6_y_net
    );

  logical7: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter3_op_net,
      d1(0) => delay4_q_net,
      y(0) => logical7_y_net_x0
    );

  mux: entity work.mux_f9c0f11a18
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => counter3_op_net,
      d1 => constant1_op_net,
      sel(0) => inverter_op_net,
      y => mux_y_net_x0
    );

  negate1: entity work.negate_9dcff15edc
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      ip => force_im_output_port_net_x0,
      op => negate1_op_net_x0
    );

  negate2: entity work.negate_9dcff15edc
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      ip => force_im_output_port_net_x1,
      op => negate2_op_net_x0
    );

  negate3: entity work.negate_9dcff15edc
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      ip => force_im_output_port_net_x2,
      op => negate3_op_net_x0
    );

  negate4: entity work.negate_9dcff15edc
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      ip => force_im_output_port_net_x3,
      op => negate4_op_net_x0
    );

  negedge_delay_df62897139: entity work.negedge_delay_entity_df62897139
    port map (
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      in_x0 => register_q_net_x4,
      out_x0 => logical_y_net_x0
    );

  posedge1_ea5b660011: entity work.posedge3_entity_a4e1fea13d
    port map (
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      in_x0 => relational3_op_net_x0,
      out_x0 => edge_op_y_net_x2
    );

  posedge_4471b9049c: entity work.posedge3_entity_a4e1fea13d
    port map (
      ce_1 => ce_1_sg_x71,
      clk_1 => clk_1_sg_x71,
      in_x0 => register_q_net_x4,
      out_x0 => edge_op_y_net_x0
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => constant_op_net,
      b => tap_number_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_31bac01fa1
    port map (
      a => convert_dout_net,
      b => addsub_s_net,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      op(0) => relational1_op_net
    );

  relational3: entity work.relational_fbc16d060d
    port map (
      a => element_number_op_net,
      b => constant3_op_net,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      op(0) => relational3_op_net_x0
    );

  relational4: entity work.relational_367321bc0c
    port map (
      a => constant5_op_net,
      b => tap_number_op_net,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      op(0) => relational4_op_net
    );

  remux: entity work.concat_b11ec1c0d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => concat_y_net_x0,
      in1 => concat_y_net_x2,
      in2 => concat_y_net_x4,
      in3 => concat_y_net_x3,
      y => remux_y_net
    );

  repack1_9aa102c7d5: entity work.repack1_entity_9aa102c7d5
    port map (
      im => negate1_op_net_x0,
      re => force_re_output_port_net_x2,
      c => concat_y_net_x0
    );

  repack2_ab267c06de: entity work.repack1_entity_9aa102c7d5
    port map (
      im => negate2_op_net_x0,
      re => force_re_output_port_net_x3,
      c => concat_y_net_x2
    );

  repack3_23588fa80e: entity work.repack1_entity_9aa102c7d5
    port map (
      im => negate3_op_net_x0,
      re => force_re_output_port_net_x4,
      c => concat_y_net_x3
    );

  repack4_c4eb8f17ca: entity work.repack1_entity_9aa102c7d5
    port map (
      im => negate4_op_net_x0,
      re => force_re_output_port_net_x5,
      c => concat_y_net_x4
    );

  sel_conj: entity work.mux_3d1356b6d9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay6_q_net,
      d1 => remux_y_net,
      sel(0) => inverter_op_net,
      y => sel_conj_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 127,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => delay6_q_net,
      y => slice1_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 95,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => delay6_q_net,
      y => slice2_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => delay6_q_net,
      y => slice3_y_net_x0
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => delay6_q_net,
      y => slice4_y_net_x0
    );

  tap_number: entity work.xlcounter_limit_xeng_core
    generic map (
      cnt_15_0 => 2,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_5f22a153812a8bc9",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      en(0) => logical6_y_net,
      rst(0) => logical1_y_net,
      op => tap_number_op_net
    );

  unpack1_a96cae87a9: entity work.unpack1_entity_a96cae87a9
    port map (
      c => slice1_y_net_x0,
      im => force_im_output_port_net_x0,
      re => force_re_output_port_net_x2
    );

  unpack2_6aa45f34a5: entity work.unpack1_entity_a96cae87a9
    port map (
      c => slice2_y_net_x0,
      im => force_im_output_port_net_x1,
      re => force_re_output_port_net_x3
    );

  unpack3_ee0c573d90: entity work.unpack1_entity_a96cae87a9
    port map (
      c => slice3_y_net_x0,
      im => force_im_output_port_net_x2,
      re => force_re_output_port_net_x4
    );

  unpack4_8dc039c8e7: entity work.unpack1_entity_a96cae87a9
    port map (
      c => slice4_y_net_x0,
      im => force_im_output_port_net_x3,
      re => force_re_output_port_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/xeng_descramble_4ant/x_cast"

entity x_cast_entity_829787ca26 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(127 downto 0); 
    out_x0: out std_logic_vector(127 downto 0)
  );
end x_cast_entity_829787ca26;

architecture structural of x_cast_entity_829787ca26 is
  signal ce_1_sg_x72: std_logic;
  signal clk_1_sg_x72: std_logic;
  signal concat_y_net_x0: std_logic_vector(127 downto 0);
  signal convert1_dout_net: std_logic_vector(15 downto 0);
  signal convert2_dout_net: std_logic_vector(15 downto 0);
  signal convert3_dout_net: std_logic_vector(15 downto 0);
  signal convert4_dout_net: std_logic_vector(15 downto 0);
  signal convert5_dout_net: std_logic_vector(15 downto 0);
  signal convert6_dout_net: std_logic_vector(15 downto 0);
  signal convert7_dout_net: std_logic_vector(15 downto 0);
  signal convert_dout_net: std_logic_vector(15 downto 0);
  signal force_re10_output_port_net: std_logic_vector(15 downto 0);
  signal force_re11_output_port_net: std_logic_vector(15 downto 0);
  signal force_re12_output_port_net: std_logic_vector(15 downto 0);
  signal force_re13_output_port_net: std_logic_vector(15 downto 0);
  signal force_re14_output_port_net: std_logic_vector(15 downto 0);
  signal force_re15_output_port_net: std_logic_vector(15 downto 0);
  signal force_re1_output_port_net: std_logic_vector(15 downto 0);
  signal force_re2_output_port_net: std_logic_vector(15 downto 0);
  signal force_re3_output_port_net: std_logic_vector(15 downto 0);
  signal force_re4_output_port_net: std_logic_vector(15 downto 0);
  signal force_re5_output_port_net: std_logic_vector(15 downto 0);
  signal force_re6_output_port_net: std_logic_vector(15 downto 0);
  signal force_re7_output_port_net: std_logic_vector(15 downto 0);
  signal force_re8_output_port_net: std_logic_vector(15 downto 0);
  signal force_re9_output_port_net: std_logic_vector(15 downto 0);
  signal force_re_output_port_net: std_logic_vector(15 downto 0);
  signal sel_conj_y_net_x1: std_logic_vector(127 downto 0);
  signal slice1_y_net: std_logic_vector(15 downto 0);
  signal slice2_y_net: std_logic_vector(15 downto 0);
  signal slice3_y_net: std_logic_vector(15 downto 0);
  signal slice4_y_net: std_logic_vector(15 downto 0);
  signal slice5_y_net: std_logic_vector(15 downto 0);
  signal slice6_y_net: std_logic_vector(15 downto 0);
  signal slice7_y_net: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x72 <= ce_1;
  clk_1_sg_x72 <= clk_1;
  sel_conj_y_net_x1 <= in_x0;
  out_x0 <= concat_y_net_x0;

  concat: entity work.concat_c3b39c59b5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re2_output_port_net,
      in1 => force_re3_output_port_net,
      in2 => force_re5_output_port_net,
      in3 => force_re7_output_port_net,
      in4 => force_re9_output_port_net,
      in5 => force_re11_output_port_net,
      in6 => force_re13_output_port_net,
      in7 => force_re15_output_port_net,
      y => concat_y_net_x0
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re_output_port_net,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re1_output_port_net,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re4_output_port_net,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re6_output_port_net,
      en => "1",
      dout => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re8_output_port_net,
      en => "1",
      dout => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re10_output_port_net,
      en => "1",
      dout => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re12_output_port_net,
      en => "1",
      dout => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 6,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 6,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => force_re14_output_port_net,
      en => "1",
      dout => convert7_dout_net
    );

  force_re: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => force_re_output_port_net
    );

  force_re1: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => force_re1_output_port_net
    );

  force_re10: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice5_y_net,
      output_port => force_re10_output_port_net
    );

  force_re11: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert5_dout_net,
      output_port => force_re11_output_port_net
    );

  force_re12: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice6_y_net,
      output_port => force_re12_output_port_net
    );

  force_re13: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert6_dout_net,
      output_port => force_re13_output_port_net
    );

  force_re14: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice7_y_net,
      output_port => force_re14_output_port_net
    );

  force_re15: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert7_dout_net,
      output_port => force_re15_output_port_net
    );

  force_re2: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert_dout_net,
      output_port => force_re2_output_port_net
    );

  force_re3: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert1_dout_net,
      output_port => force_re3_output_port_net
    );

  force_re4: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice2_y_net,
      output_port => force_re4_output_port_net
    );

  force_re5: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net,
      output_port => force_re5_output_port_net
    );

  force_re6: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice3_y_net,
      output_port => force_re6_output_port_net
    );

  force_re7: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert3_dout_net,
      output_port => force_re7_output_port_net
    );

  force_re8: entity work.reinterpret_151459306d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice4_y_net,
      output_port => force_re8_output_port_net
    );

  force_re9: entity work.reinterpret_7025463ea8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert4_dout_net,
      output_port => force_re9_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 48,
      new_msb => 63,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 47,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 80,
      new_msb => 95,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice4_y_net
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 79,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice5_y_net
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 112,
      new_msb => 127,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice6_y_net
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 111,
      x_width => 128,
      y_width => 16
    )
    port map (
      x => sel_conj_y_net_x1,
      y => slice7_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng/xeng_descramble_4ant"

entity xeng_descramble_4ant_entity_bbf3354a2d is
  port (
    acc: in std_logic_vector(127 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    sync: in std_logic; 
    valid: in std_logic; 
    win_valid: in std_logic; 
    acc_out: out std_logic_vector(31 downto 0); 
    sync_out: out std_logic; 
    valid_out: out std_logic
  );
end xeng_descramble_4ant_entity_bbf3354a2d;

architecture structural of xeng_descramble_4ant_entity_bbf3354a2d is
  signal ce_1_sg_x73: std_logic;
  signal clk_1_sg_x73: std_logic;
  signal concat_y_net_x0: std_logic_vector(127 downto 0);
  signal concat_y_net_x6: std_logic_vector(127 downto 0);
  signal constant2_op_net: std_logic;
  signal constant3_op_net: std_logic_vector(31 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal dual_port_ram_douta_net_x0: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x2: std_logic;
  signal element_op_net_x0: std_logic_vector(5 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical7_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal mux3_y_net_x5: std_logic;
  signal mux_y_net_x0: std_logic_vector(3 downto 0);
  signal mux_y_net_x4: std_logic;
  signal register_q_net: std_logic;
  signal register_q_net_x5: std_logic;
  signal sel_conj_y_net_x1: std_logic_vector(127 downto 0);

begin
  concat_y_net_x6 <= acc;
  ce_1_sg_x73 <= ce_1;
  clk_1_sg_x73 <= clk_1;
  mux_y_net_x4 <= sync;
  mux3_y_net_x5 <= valid;
  register_q_net_x5 <= win_valid;
  acc_out <= dual_port_ram_douta_net_x0;
  sync_out <= logical_y_net_x2;
  valid_out <= delay1_q_net_x0;

  constant2: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant3: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      d(0) => logical1_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x0
    );

  dual_port_ram: entity work.xldpram_xeng_core
    generic map (
      c_address_width_a => 6,
      c_address_width_b => 4,
      c_width_a => 32,
      c_width_b => 128,
      core_name0 => "bmg_72_4fcfcc7deb4cdf86",
      latency => 1
    )
    port map (
      a_ce => ce_1_sg_x73,
      a_clk => clk_1_sg_x73,
      addra => element_op_net_x0,
      addrb => mux_y_net_x0,
      b_ce => ce_1_sg_x73,
      b_clk => clk_1_sg_x73,
      dina => constant3_op_net,
      dinb => concat_y_net_x0,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant2_op_net,
      web(0) => logical7_y_net_x0,
      douta => dual_port_ram_douta_net_x0
    );

  logical: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      d0(0) => edge_op_y_net_x2,
      d1(0) => register_q_net,
      y(0) => logical_y_net_x2
    );

  read_ctrl_080ae06468: entity work.read_ctrl_entity_080ae06468
    port map (
      ce_1 => ce_1_sg_x73,
      clk_1 => clk_1_sg_x73,
      start => edge_op_y_net_x2,
      enable => logical1_y_net_x0,
      read_addr => element_op_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      d(0) => mux_y_net_x4,
      en(0) => mux_y_net_x4,
      rst(0) => edge_op_y_net_x2,
      q(0) => register_q_net
    );

  write_ctrl_f9c1c65ceb: entity work.write_ctrl_entity_f9c1c65ceb
    port map (
      ce_1 => ce_1_sg_x73,
      clk_1 => clk_1_sg_x73,
      data_in => concat_y_net_x6,
      sync => mux_y_net_x4,
      window_valid => register_q_net_x5,
      xeng_valid => mux3_y_net_x5,
      data_out => sel_conj_y_net_x1,
      enable => logical7_y_net_x0,
      start_readout => edge_op_y_net_x2,
      write_addr => mux_y_net_x0
    );

  x_cast_829787ca26: entity work.x_cast_entity_829787ca26
    port map (
      ce_1 => ce_1_sg_x73,
      clk_1 => clk_1_sg_x73,
      in_x0 => sel_conj_y_net_x1,
      out_x0 => concat_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core/xeng"

entity xeng_entity_15b0320748 is
  port (
    ant: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    mcnt_in: in std_logic_vector(47 downto 0); 
    sync_in: in std_logic; 
    window_valid: in std_logic; 
    acc: out std_logic_vector(31 downto 0); 
    mcnt_out: out std_logic_vector(47 downto 0); 
    sync_out: out std_logic; 
    valid: out std_logic; 
    window_delay: out std_logic; 
    window_delay_x0: out std_logic; 
    window_delay_x1: out std_logic
  );
end xeng_entity_15b0320748;

architecture structural of xeng_entity_15b0320748 is
  signal ant_net_x4: std_logic_vector(15 downto 0);
  signal ce_1_sg_x74: std_logic;
  signal clk_1_sg_x74: std_logic;
  signal concat_y_net_x13: std_logic_vector(127 downto 0);
  signal concat_y_net_x6: std_logic_vector(127 downto 0);
  signal concat_y_net_x7: std_logic_vector(127 downto 0);
  signal constant1_op_net_x3: std_logic;
  signal constant_op_net_x1: std_logic_vector(127 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal delay1_q_net_x6: std_logic;
  signal delay3_q_net_x4: std_logic_vector(15 downto 0);
  signal delay3_q_net_x5: std_logic_vector(15 downto 0);
  signal delay7_q_net_x1: std_logic_vector(15 downto 0);
  signal delay8_q_net_x1: std_logic_vector(15 downto 0);
  signal delay_q_net_x0: std_logic_vector(47 downto 0);
  signal dual_port_ram_douta_net_x1: std_logic_vector(31 downto 0);
  signal logical_y_net_x3: std_logic;
  signal mcnt_in_net_x1: std_logic_vector(47 downto 0);
  signal mux3_y_net_x5: std_logic;
  signal mux3_y_net_x7: std_logic;
  signal mux3_y_net_x8: std_logic;
  signal mux_y_net_x4: std_logic;
  signal mux_y_net_x5: std_logic;
  signal mux_y_net_x6: std_logic;
  signal ram_data_out_net_x2: std_logic_vector(15 downto 0);
  signal register_q_net_x0: std_logic_vector(47 downto 0);
  signal register_q_net_x1: std_logic_vector(47 downto 0);
  signal register_q_net_x3: std_logic_vector(47 downto 0);
  signal register_q_net_x6: std_logic;
  signal sync_in_net_x9: std_logic;
  signal window_valid_net_x3: std_logic;

begin
  ant_net_x4 <= ant;
  ce_1_sg_x74 <= ce_1;
  clk_1_sg_x74 <= clk_1;
  mcnt_in_net_x1 <= mcnt_in;
  sync_in_net_x9 <= sync_in;
  window_valid_net_x3 <= window_valid;
  acc <= dual_port_ram_douta_net_x1;
  mcnt_out <= delay_q_net_x0;
  sync_out <= logical_y_net_x3;
  valid <= delay1_q_net_x1;
  window_delay <= register_q_net_x6;
  window_delay_x0 <= mux_y_net_x5;
  window_delay_x1 <= mux_y_net_x6;

  auto_tap_318fc556a4: entity work.auto_tap_entity_318fc556a4
    port map (
      a_del => ant_net_x4,
      a_loop => delay3_q_net_x5,
      acc_in => constant_op_net_x1,
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      sync_in => sync_in_net_x9,
      valid_in => constant1_op_net_x3,
      a_end_out => ram_data_out_net_x2,
      acc_out => concat_y_net_x7,
      sync_out => mux_y_net_x4,
      valid_out => mux3_y_net_x7
    );

  baseline_tap1_baa0991c5c: entity work.baseline_tap1_entity_baa0991c5c
    port map (
      a_del => ant_net_x4,
      a_end => ram_data_out_net_x2,
      acc_in => concat_y_net_x7,
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      rst => sync_in_net_x9,
      valid_in => mux3_y_net_x7,
      a_del_out => delay3_q_net_x4,
      a_end_out => delay8_q_net_x1,
      a_ndel_out => delay7_q_net_x1,
      acc_out => concat_y_net_x13,
      rst_out => delay1_q_net_x6,
      valid_out => mux3_y_net_x8
    );

  baseline_tap2_6561d79cef: entity work.baseline_tap2_entity_6561d79cef
    port map (
      a_del => delay3_q_net_x4,
      a_end => delay8_q_net_x1,
      a_ndel => delay7_q_net_x1,
      acc_in => concat_y_net_x13,
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      rst => delay1_q_net_x6,
      valid_in => mux3_y_net_x8,
      a_del_out => delay3_q_net_x5,
      acc_out => concat_y_net_x6,
      valid_out => mux3_y_net_x5
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x3
    );

  constant_x0: entity work.constant_8ebf457a98
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net_x1
    );

  delay: entity work.delay_d8eaaced1c
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      d => register_q_net_x0,
      q => delay_q_net_x0
    );

  sample_and_hold1_b8808b16da: entity work.sample_and_hold1_entity_b8808b16da
    port map (
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      in_x0 => mcnt_in_net_x1,
      sync => sync_in_net_x9,
      out_x0 => register_q_net_x1
    );

  sample_and_hold2_f984cb8c67: entity work.sample_and_hold1_entity_b8808b16da
    port map (
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      in_x0 => register_q_net_x1,
      sync => mux_y_net_x4,
      out_x0 => register_q_net_x3
    );

  sample_and_hold3_095e9f96d8: entity work.sample_and_hold1_entity_b8808b16da
    port map (
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      in_x0 => register_q_net_x3,
      sync => logical_y_net_x3,
      out_x0 => register_q_net_x0
    );

  window_delay_2ef0c6e20c: entity work.window_delay_entity_2ef0c6e20c
    port map (
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      in_x0 => window_valid_net_x3,
      out_x0 => register_q_net_x6,
      sync_delay => mux_y_net_x5,
      sync_delay1 => mux_y_net_x6
    );

  xeng_descramble_4ant_bbf3354a2d: entity work.xeng_descramble_4ant_entity_bbf3354a2d
    port map (
      acc => concat_y_net_x6,
      ce_1 => ce_1_sg_x74,
      clk_1 => clk_1_sg_x74,
      sync => mux_y_net_x4,
      valid => mux3_y_net_x5,
      win_valid => register_q_net_x6,
      acc_out => dual_port_ram_douta_net_x1,
      sync_out => logical_y_net_x3,
      valid_out => delay1_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "xeng_core"

entity xeng_core is
  port (
    ant: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end xeng_core;

architecture structural of xeng_core is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "xeng_core,sysgen_core,{clock_period=5.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=1704,xilinx_accumulator_block=24,xilinx_adder_subtracter_block=25,xilinx_arithmetic_relational_operator_block=30,xilinx_bit_slice_extractor_block=128,xilinx_bus_concatenator_block=21,xilinx_bus_multiplexer_block=55,xilinx_constant_block_block=89,xilinx_counter_block=30,xilinx_delay_block=91,xilinx_dual_port_random_access_memory_block=1,xilinx_gateway_in_block=4,xilinx_gateway_out_block=37,xilinx_inverter_block=9,xilinx_logical_block_block=22,xilinx_multiplier_block=48,xilinx_negate_block_block=4,xilinx_register_block=6,xilinx_resource_estimator_block=4,xilinx_single_port_random_access_memory_block=3,xilinx_system_generator_block=1,xilinx_type_converter_block=59,xilinx_type_reinterpreter_block=128,}";

  signal acc_net: std_logic_vector(31 downto 0);
  signal ant_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x75: std_logic;
  signal clk_1_sg_x75: std_logic;
  signal gateway_out2_net: std_logic;
  signal gateway_out3_net: std_logic;
  signal gateway_out56_net: std_logic;
  signal mcnt_in_net: std_logic_vector(47 downto 0);
  signal mcnt_out_net: std_logic_vector(47 downto 0);
  signal sync_in_net: std_logic;
  signal sync_out_net: std_logic;
  signal valid_net: std_logic;
  signal window_valid_net_x4: std_logic;

begin
  ant_net <= ant;
  ce_1_sg_x75 <= ce_1;
  clk_1_sg_x75 <= clk_1;
  mcnt_in_net <= mcnt_in;
  sync_in_net <= sync_in;
  window_valid_net_x4 <= window_valid;
  acc <= acc_net;
  gateway_out2 <= gateway_out2_net;
  gateway_out3 <= gateway_out3_net;
  gateway_out55 <= window_valid_net_x4;
  gateway_out56 <= gateway_out56_net;
  mcnt_out <= mcnt_out_net;
  sync_out <= sync_out_net;
  valid <= valid_net;

  xeng_15b0320748: entity work.xeng_entity_15b0320748
    port map (
      ant => ant_net,
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      mcnt_in => mcnt_in_net,
      sync_in => sync_in_net,
      window_valid => window_valid_net_x4,
      acc => acc_net,
      mcnt_out => mcnt_out_net,
      sync_out => sync_out_net,
      valid => valid_net,
      window_delay => gateway_out3_net,
      window_delay_x0 => gateway_out56_net,
      window_delay_x1 => gateway_out2_net
    );

end structural;

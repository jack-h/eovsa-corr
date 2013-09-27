library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/adder_1_1"

entity adder_1_1_entity_0c43e56af3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(15 downto 0); 
    din2: in std_logic_vector(15 downto 0); 
    din3: in std_logic_vector(15 downto 0); 
    din4: in std_logic_vector(15 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(15 downto 0); 
    sync_out: out std_logic
  );
end adder_1_1_entity_0c43e56af3;

architecture structural of adder_1_1_entity_0c43e56af3 is
  signal addr1_s_net: std_logic_vector(15 downto 0);
  signal addr2_s_net: std_logic_vector(15 downto 0);
  signal addr3_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal delay_q_net_x0: std_logic;
  signal mult_p_net_x3: std_logic_vector(15 downto 0);
  signal mult_p_net_x4: std_logic_vector(15 downto 0);
  signal mult_p_net_x5: std_logic_vector(15 downto 0);
  signal mult_p_net_x6: std_logic_vector(15 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  mult_p_net_x3 <= din1;
  mult_p_net_x5 <= din2;
  mult_p_net_x6 <= din3;
  mult_p_net_x4 <= din4;
  delay_q_net_x0 <= sync;
  dout <= addr3_s_net_x0;
  sync_out <= sync_delay_q_net_x0;

  addr1: entity work.addsub_ebc1a52e8a
    port map (
      a => mult_p_net_x3,
      b => mult_p_net_x5,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      s => addr1_s_net
    );

  addr2: entity work.addsub_ebc1a52e8a
    port map (
      a => mult_p_net_x6,
      b => mult_p_net_x4,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_pfb_fir_real_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_f65c3b4ad8785c13",
      extra_registers => 1,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 2,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

  sync_delay: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d(0) => delay_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/adder_1_2"

entity adder_1_2_entity_22508bb0bb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(15 downto 0); 
    din2: in std_logic_vector(15 downto 0); 
    din3: in std_logic_vector(15 downto 0); 
    din4: in std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(15 downto 0)
  );
end adder_1_2_entity_22508bb0bb;

architecture structural of adder_1_2_entity_22508bb0bb is
  signal addr1_s_net: std_logic_vector(15 downto 0);
  signal addr2_s_net: std_logic_vector(15 downto 0);
  signal addr3_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal mult_p_net_x3: std_logic_vector(15 downto 0);
  signal mult_p_net_x4: std_logic_vector(15 downto 0);
  signal mult_p_net_x5: std_logic_vector(15 downto 0);
  signal mult_p_net_x6: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  mult_p_net_x3 <= din1;
  mult_p_net_x5 <= din2;
  mult_p_net_x6 <= din3;
  mult_p_net_x4 <= din4;
  dout <= addr3_s_net_x0;

  addr1: entity work.addsub_ebc1a52e8a
    port map (
      a => mult_p_net_x3,
      b => mult_p_net_x5,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addr1_s_net
    );

  addr2: entity work.addsub_ebc1a52e8a
    port map (
      a => mult_p_net_x6,
      b => mult_p_net_x4,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_pfb_fir_real_core
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 14,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 17,
      core_name0 => "addsb_11_0_f65c3b4ad8785c13",
      extra_registers => 1,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 2,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 14,
      s_width => 16
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in1_coeffs"

entity pol1_in1_coeffs_entity_21987cdbbd is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    coeff: out std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end pol1_in1_coeffs_entity_21987cdbbd;

architecture structural of pol1_in1_coeffs_entity_21987cdbbd is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay1_q_net_x0: std_logic_vector(7 downto 0);
  signal delay_q_net_x0: std_logic;
  signal fan_delay1_q_net: std_logic_vector(10 downto 0);
  signal fan_delay2_q_net: std_logic_vector(10 downto 0);
  signal fan_delay3_q_net: std_logic_vector(10 downto 0);
  signal fan_delay4_q_net: std_logic_vector(10 downto 0);
  signal pol1_in1_net_x0: std_logic_vector(7 downto 0);
  signal register_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal rom1_data_net: std_logic_vector(7 downto 0);
  signal rom2_data_net: std_logic_vector(7 downto 0);
  signal rom3_data_net: std_logic_vector(7 downto 0);
  signal rom4_data_net: std_logic_vector(7 downto 0);
  signal sync_net_x0: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  pol1_in1_net_x0 <= din;
  sync_net_x0 <= sync;
  coeff <= register_q_net_x0;
  dout <= delay1_q_net_x0;
  sync_out <= delay_q_net_x0;

  concat: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concat_y_net
    );

  counter: entity work.xlcounter_free_pfb_fir_real_core
    generic map (
      core_name0 => "cntr_11_0_bf568bdf3cd9f9c7",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      rst(0) => sync_net_x0,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => sync_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => pol1_in1_net_x0,
      en => '1',
      rst => '1',
      q => delay1_q_net_x0
    );

  fan_delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay1_q_net
    );

  fan_delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay2_q_net
    );

  fan_delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay3_q_net
    );

  fan_delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay4_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => concat_y_net,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom2_data_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom3_data_net,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom4_data_net,
      output_port => reinterpret4_output_port_net
    );

  rom1: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_0982e05b26d41eef",
      latency => 2
    )
    port map (
      addr => fan_delay1_q_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      en => "1",
      rst => "0",
      data => rom1_data_net
    );

  rom2: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_967630e6b2a5c300",
      latency => 2
    )
    port map (
      addr => fan_delay2_q_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      en => "1",
      rst => "0",
      data => rom2_data_net
    );

  rom3: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_2eec44623d367658",
      latency => 2
    )
    port map (
      addr => fan_delay3_q_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      en => "1",
      rst => "0",
      data => rom3_data_net
    );

  rom4: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_3e05483b044fa88c",
      latency => 2
    )
    port map (
      addr => fan_delay4_q_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      en => "1",
      rst => "0",
      data => rom4_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in1_first_tap/delay_bram"

entity delay_bram_entity_97267907c1 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end delay_bram_entity_97267907c1;

architecture structural of delay_bram_entity_97267907c1 is
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal constant_op_net: std_logic;
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay1_q_net_x1: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  delay1_q_net_x1 <= din;
  dout <= ram_data_out_net_x0;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  counter: entity work.xlcounter_limit_pfb_fir_real_core
    generic map (
      cnt_15_0 => 2044,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_bf568bdf3cd9f9c7",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter_op_net
    );

  ram: entity work.xlspram_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_9628accf375c9240",
      latency => 2
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      data_in => delay1_q_net_x1,
      en => "1",
      rst => "0",
      we(0) => constant_op_net,
      data_out => ram_data_out_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in1_first_tap/sync_delay"

entity sync_delay_entity_20a0faa6ba is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_20a0faa6ba;

architecture structural of sync_delay_entity_20a0faa6ba is
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal constant1_op_net: std_logic_vector(11 downto 0);
  signal constant2_op_net: std_logic_vector(11 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(11 downto 0);
  signal counter_op_net: std_logic_vector(11 downto 0);
  signal delay_q_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  delay_q_net_x1 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_fd28b32bf8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e054d850c5
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

  constant_x0: entity work.constant_7c91b1b314
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free_pfb_fir_real_core
    generic map (
      core_name0 => "cntr_11_0_9f2a2f53426c6ba5",
      op_arith => xlUnsigned,
      op_width => 12
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x1,
      rst => "0",
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_d36fe12c1c
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_acb3c05dd0
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

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in1_first_tap"

entity pol1_in1_first_tap_entity_48bba19602 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeffs: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    coeff_out: out std_logic_vector(23 downto 0); 
    dout: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(15 downto 0)
  );
end pol1_in1_first_tap_entity_48bba19602;

architecture structural of pol1_in1_first_tap_entity_48bba19602 is
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal delay1_q_net_x2: std_logic_vector(7 downto 0);
  signal delay_q_net_x2: std_logic;
  signal mult_p_net_x4: std_logic_vector(15 downto 0);
  signal mux_y_net_x1: std_logic;
  signal ram_data_out_net_x1: std_logic_vector(7 downto 0);
  signal register_q_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x0: std_logic_vector(23 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  register_q_net_x1 <= coeffs;
  delay1_q_net_x2 <= din;
  delay_q_net_x2 <= sync;
  coeff_out <= slice1_y_net_x0;
  dout <= ram_data_out_net_x1;
  sync_out <= mux_y_net_x1;
  taps_out <= mult_p_net_x4;

  delay_bram_97267907c1: entity work.delay_bram_entity_97267907c1
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      din => delay1_q_net_x2,
      dout => ram_data_out_net_x1
    );

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret2_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      p => mult_p_net_x4
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret2: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => delay1_q_net_x2,
      output_port => reinterpret2_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => register_q_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 31,
      x_width => 32,
      y_width => 24
    )
    port map (
      x => register_q_net_x1,
      y => slice1_y_net_x0
    );

  sync_delay_20a0faa6ba: entity work.sync_delay_entity_20a0faa6ba
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      in_x0 => delay_q_net_x2,
      out_x0 => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in1_last_tap"

entity pol1_in1_last_tap_entity_12a21b52a5 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(7 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    sync_out: out std_logic; 
    tap_out: out std_logic_vector(15 downto 0)
  );
end pol1_in1_last_tap_entity_12a21b52a5;

architecture structural of pol1_in1_last_tap_entity_12a21b52a5 is
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal delay_q_net_x1: std_logic;
  signal mult_p_net_x5: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic;
  signal ram_data_out_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  slice1_y_net_x0 <= coeff;
  ram_data_out_net_x0 <= din;
  mux_y_net_x0 <= sync;
  sync_out <= delay_q_net_x1;
  tap_out <= mult_p_net_x5;

  delay: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d(0) => mux_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x1
    );

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      p => mult_p_net_x5
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => ram_data_out_net_x0,
      output_port => reinterpret1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in1_tap2"

entity pol1_in1_tap2_entity_514e98c1c4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(23 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    coeff_out: out std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(15 downto 0)
  );
end pol1_in1_tap2_entity_514e98c1c4;

architecture structural of pol1_in1_tap2_entity_514e98c1c4 is
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal mult_p_net_x6: std_logic_vector(15 downto 0);
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x4: std_logic;
  signal ram_data_out_net_x3: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net_x2: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  slice1_y_net_x1 <= coeff;
  ram_data_out_net_x3 <= din;
  mux_y_net_x3 <= sync;
  coeff_out <= slice1_y_net_x2;
  dout <= ram_data_out_net_x4;
  sync_out <= mux_y_net_x4;
  taps_out <= mult_p_net_x6;

  delay_bram_aa47eca94d: entity work.delay_bram_entity_97267907c1
    port map (
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      din => ram_data_out_net_x3,
      dout => ram_data_out_net_x4
    );

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      p => mult_p_net_x6
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => ram_data_out_net_x3,
      output_port => reinterpret1_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 24,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 23,
      x_width => 24,
      y_width => 16
    )
    port map (
      x => slice1_y_net_x1,
      y => slice1_y_net_x2
    );

  sync_delay_0fc48c9e48: entity work.sync_delay_entity_20a0faa6ba
    port map (
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      in_x0 => mux_y_net_x3,
      out_x0 => mux_y_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in1_tap3"

entity pol1_in1_tap3_entity_092eff0612 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(15 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    coeff_out: out std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(15 downto 0)
  );
end pol1_in1_tap3_entity_092eff0612;

architecture structural of pol1_in1_tap3_entity_092eff0612 is
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal mult_p_net_x7: std_logic_vector(15 downto 0);
  signal mux_y_net_x2: std_logic;
  signal mux_y_net_x6: std_logic;
  signal ram_data_out_net_x2: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x6: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x3: std_logic_vector(15 downto 0);
  signal slice1_y_net_x4: std_logic_vector(7 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  slice1_y_net_x3 <= coeff;
  ram_data_out_net_x6 <= din;
  mux_y_net_x6 <= sync;
  coeff_out <= slice1_y_net_x4;
  dout <= ram_data_out_net_x2;
  sync_out <= mux_y_net_x2;
  taps_out <= mult_p_net_x7;

  delay_bram_edb4b47b7b: entity work.delay_bram_entity_97267907c1
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      din => ram_data_out_net_x6,
      dout => ram_data_out_net_x2
    );

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      p => mult_p_net_x7
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => ram_data_out_net_x6,
      output_port => reinterpret1_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x3,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x3,
      y => slice1_y_net_x4
    );

  sync_delay_250a05d6bc: entity work.sync_delay_entity_20a0faa6ba
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      in_x0 => mux_y_net_x6,
      out_x0 => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in2_coeffs"

entity pol1_in2_coeffs_entity_b1fc7b5c0c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    coeff: out std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end pol1_in2_coeffs_entity_b1fc7b5c0c;

architecture structural of pol1_in2_coeffs_entity_b1fc7b5c0c is
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay1_q_net_x0: std_logic_vector(7 downto 0);
  signal fan_delay1_q_net: std_logic_vector(10 downto 0);
  signal fan_delay2_q_net: std_logic_vector(10 downto 0);
  signal fan_delay3_q_net: std_logic_vector(10 downto 0);
  signal fan_delay4_q_net: std_logic_vector(10 downto 0);
  signal pol1_in2_net_x0: std_logic_vector(7 downto 0);
  signal register_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal rom1_data_net: std_logic_vector(7 downto 0);
  signal rom2_data_net: std_logic_vector(7 downto 0);
  signal rom3_data_net: std_logic_vector(7 downto 0);
  signal rom4_data_net: std_logic_vector(7 downto 0);
  signal sync_net_x1: std_logic;

begin
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  pol1_in2_net_x0 <= din;
  sync_net_x1 <= sync;
  coeff <= register_q_net_x0;
  dout <= delay1_q_net_x0;

  concat: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concat_y_net
    );

  counter: entity work.xlcounter_free_pfb_fir_real_core
    generic map (
      core_name0 => "cntr_11_0_bf568bdf3cd9f9c7",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      en => "1",
      rst(0) => sync_net_x1,
      op => counter_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => pol1_in2_net_x0,
      en => '1',
      rst => '1',
      q => delay1_q_net_x0
    );

  fan_delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay1_q_net
    );

  fan_delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay2_q_net
    );

  fan_delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay3_q_net
    );

  fan_delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay4_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d => concat_y_net,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom2_data_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom3_data_net,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom4_data_net,
      output_port => reinterpret4_output_port_net
    );

  rom1: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_9be7d465d5eaaba3",
      latency => 2
    )
    port map (
      addr => fan_delay1_q_net,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      en => "1",
      rst => "0",
      data => rom1_data_net
    );

  rom2: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_48aecbcc669a19be",
      latency => 2
    )
    port map (
      addr => fan_delay2_q_net,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      en => "1",
      rst => "0",
      data => rom2_data_net
    );

  rom3: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_b69451ed038a8d73",
      latency => 2
    )
    port map (
      addr => fan_delay3_q_net,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      en => "1",
      rst => "0",
      data => rom3_data_net
    );

  rom4: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_654583903c8e8194",
      latency => 2
    )
    port map (
      addr => fan_delay4_q_net,
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      en => "1",
      rst => "0",
      data => rom4_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in2_first_tap"

entity pol1_in2_first_tap_entity_9b3cc2de14 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeffs: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    coeff_out: out std_logic_vector(23 downto 0); 
    dout: out std_logic_vector(7 downto 0); 
    taps_out: out std_logic_vector(15 downto 0)
  );
end pol1_in2_first_tap_entity_9b3cc2de14;

architecture structural of pol1_in2_first_tap_entity_9b3cc2de14 is
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal delay1_q_net_x2: std_logic_vector(7 downto 0);
  signal mult_p_net_x4: std_logic_vector(15 downto 0);
  signal ram_data_out_net_x1: std_logic_vector(7 downto 0);
  signal register_q_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x0: std_logic_vector(23 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  register_q_net_x1 <= coeffs;
  delay1_q_net_x2 <= din;
  coeff_out <= slice1_y_net_x0;
  dout <= ram_data_out_net_x1;
  taps_out <= mult_p_net_x4;

  delay_bram_7dfda029e5: entity work.delay_bram_entity_97267907c1
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      din => delay1_q_net_x2,
      dout => ram_data_out_net_x1
    );

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret2_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x17,
      clk => clk_1_sg_x17,
      clr => '0',
      p => mult_p_net_x4
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret2: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => delay1_q_net_x2,
      output_port => reinterpret2_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => register_q_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 31,
      x_width => 32,
      y_width => 24
    )
    port map (
      x => register_q_net_x1,
      y => slice1_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in2_last_tap"

entity pol1_in2_last_tap_entity_84112ff003 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(7 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    tap_out: out std_logic_vector(15 downto 0)
  );
end pol1_in2_last_tap_entity_84112ff003;

architecture structural of pol1_in2_last_tap_entity_84112ff003 is
  signal ce_1_sg_x18: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal mult_p_net_x5: std_logic_vector(15 downto 0);
  signal ram_data_out_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x18 <= ce_1;
  clk_1_sg_x18 <= clk_1;
  slice1_y_net_x0 <= coeff;
  ram_data_out_net_x0 <= din;
  tap_out <= mult_p_net_x5;

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      p => mult_p_net_x5
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => ram_data_out_net_x0,
      output_port => reinterpret1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in2_tap2"

entity pol1_in2_tap2_entity_f7d5ed298b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(23 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    coeff_out: out std_logic_vector(15 downto 0); 
    dout: out std_logic_vector(7 downto 0); 
    taps_out: out std_logic_vector(15 downto 0)
  );
end pol1_in2_tap2_entity_f7d5ed298b;

architecture structural of pol1_in2_tap2_entity_f7d5ed298b is
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal mult_p_net_x6: std_logic_vector(15 downto 0);
  signal ram_data_out_net_x3: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x4: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net_x2: std_logic_vector(15 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  slice1_y_net_x1 <= coeff;
  ram_data_out_net_x3 <= din;
  coeff_out <= slice1_y_net_x2;
  dout <= ram_data_out_net_x4;
  taps_out <= mult_p_net_x6;

  delay_bram_1a846491d3: entity work.delay_bram_entity_97267907c1
    port map (
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      din => ram_data_out_net_x3,
      dout => ram_data_out_net_x4
    );

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      p => mult_p_net_x6
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => ram_data_out_net_x3,
      output_port => reinterpret1_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 24,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 23,
      x_width => 24,
      y_width => 16
    )
    port map (
      x => slice1_y_net_x1,
      y => slice1_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in2_tap3"

entity pol1_in2_tap3_entity_9a81e295a6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(15 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    coeff_out: out std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0); 
    taps_out: out std_logic_vector(15 downto 0)
  );
end pol1_in2_tap3_entity_9a81e295a6;

architecture structural of pol1_in2_tap3_entity_9a81e295a6 is
  signal ce_1_sg_x22: std_logic;
  signal clk_1_sg_x22: std_logic;
  signal mult_p_net_x7: std_logic_vector(15 downto 0);
  signal ram_data_out_net_x2: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x6: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);
  signal slice1_y_net_x3: std_logic_vector(15 downto 0);
  signal slice1_y_net_x4: std_logic_vector(7 downto 0);
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x22 <= ce_1;
  clk_1_sg_x22 <= clk_1;
  slice1_y_net_x3 <= coeff;
  ram_data_out_net_x6 <= din;
  coeff_out <= slice1_y_net_x4;
  dout <= ram_data_out_net_x2;
  taps_out <= mult_p_net_x7;

  delay_bram_4fc0909b9d: entity work.delay_bram_entity_97267907c1
    port map (
      ce_1 => ce_1_sg_x22,
      clk_1 => clk_1_sg_x22,
      din => ram_data_out_net_x6,
      dout => ram_data_out_net_x2
    );

  mult: entity work.mult_1f4d330bcc
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      p => mult_p_net_x7
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_d9988e3d87
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => ram_data_out_net_x6,
      output_port => reinterpret1_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x3,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => slice1_y_net_x3,
      y => slice1_y_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in3_coeffs"

entity pol1_in3_coeffs_entity_74ec9b1e1c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    coeff: out std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end pol1_in3_coeffs_entity_74ec9b1e1c;

architecture structural of pol1_in3_coeffs_entity_74ec9b1e1c is
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay1_q_net_x0: std_logic_vector(7 downto 0);
  signal fan_delay1_q_net: std_logic_vector(10 downto 0);
  signal fan_delay2_q_net: std_logic_vector(10 downto 0);
  signal fan_delay3_q_net: std_logic_vector(10 downto 0);
  signal fan_delay4_q_net: std_logic_vector(10 downto 0);
  signal pol1_in3_net_x0: std_logic_vector(7 downto 0);
  signal register_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal rom1_data_net: std_logic_vector(7 downto 0);
  signal rom2_data_net: std_logic_vector(7 downto 0);
  signal rom3_data_net: std_logic_vector(7 downto 0);
  signal rom4_data_net: std_logic_vector(7 downto 0);
  signal sync_net_x2: std_logic;

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  pol1_in3_net_x0 <= din;
  sync_net_x2 <= sync;
  coeff <= register_q_net_x0;
  dout <= delay1_q_net_x0;

  concat: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concat_y_net
    );

  counter: entity work.xlcounter_free_pfb_fir_real_core
    generic map (
      core_name0 => "cntr_11_0_bf568bdf3cd9f9c7",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      en => "1",
      rst(0) => sync_net_x2,
      op => counter_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => pol1_in3_net_x0,
      en => '1',
      rst => '1',
      q => delay1_q_net_x0
    );

  fan_delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay1_q_net
    );

  fan_delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay2_q_net
    );

  fan_delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay3_q_net
    );

  fan_delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay4_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => concat_y_net,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom2_data_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom3_data_net,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom4_data_net,
      output_port => reinterpret4_output_port_net
    );

  rom1: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_c7aab016f93a6382",
      latency => 2
    )
    port map (
      addr => fan_delay1_q_net,
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      en => "1",
      rst => "0",
      data => rom1_data_net
    );

  rom2: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_2e28d8b7ce374e24",
      latency => 2
    )
    port map (
      addr => fan_delay2_q_net,
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      en => "1",
      rst => "0",
      data => rom2_data_net
    );

  rom3: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_0ebe52f0796e6018",
      latency => 2
    )
    port map (
      addr => fan_delay3_q_net,
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      en => "1",
      rst => "0",
      data => rom3_data_net
    );

  rom4: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_246e222abe66c216",
      latency => 2
    )
    port map (
      addr => fan_delay4_q_net,
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      en => "1",
      rst => "0",
      data => rom4_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real/pol1_in4_coeffs"

entity pol1_in4_coeffs_entity_3a53e1398e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    coeff: out std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end pol1_in4_coeffs_entity_3a53e1398e;

architecture structural of pol1_in4_coeffs_entity_3a53e1398e is
  signal ce_1_sg_x31: std_logic;
  signal clk_1_sg_x31: std_logic;
  signal concat_y_net: std_logic_vector(31 downto 0);
  signal counter_op_net: std_logic_vector(10 downto 0);
  signal delay1_q_net_x0: std_logic_vector(7 downto 0);
  signal fan_delay1_q_net: std_logic_vector(10 downto 0);
  signal fan_delay2_q_net: std_logic_vector(10 downto 0);
  signal fan_delay3_q_net: std_logic_vector(10 downto 0);
  signal fan_delay4_q_net: std_logic_vector(10 downto 0);
  signal pol1_in4_net_x0: std_logic_vector(7 downto 0);
  signal register_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal rom1_data_net: std_logic_vector(7 downto 0);
  signal rom2_data_net: std_logic_vector(7 downto 0);
  signal rom3_data_net: std_logic_vector(7 downto 0);
  signal rom4_data_net: std_logic_vector(7 downto 0);
  signal sync_net_x3: std_logic;

begin
  ce_1_sg_x31 <= ce_1;
  clk_1_sg_x31 <= clk_1;
  pol1_in4_net_x0 <= din;
  sync_net_x3 <= sync;
  coeff <= register_q_net_x0;
  dout <= delay1_q_net_x0;

  concat: entity work.concat_a1e126f11c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concat_y_net
    );

  counter: entity work.xlcounter_free_pfb_fir_real_core
    generic map (
      core_name0 => "cntr_11_0_bf568bdf3cd9f9c7",
      op_arith => xlUnsigned,
      op_width => 11
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      en => "1",
      rst(0) => sync_net_x3,
      op => counter_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 8
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => pol1_in4_net_x0,
      en => '1',
      rst => '1',
      q => delay1_q_net_x0
    );

  fan_delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay1_q_net
    );

  fan_delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay2_q_net
    );

  fan_delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay3_q_net
    );

  fan_delay4: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 11
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => fan_delay4_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      d => concat_y_net,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom2_data_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom3_data_net,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom4_data_net,
      output_port => reinterpret4_output_port_net
    );

  rom1: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_95650c95bb98bfbd",
      latency => 2
    )
    port map (
      addr => fan_delay1_q_net,
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      en => "1",
      rst => "0",
      data => rom1_data_net
    );

  rom2: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_912f853d170eb76f",
      latency => 2
    )
    port map (
      addr => fan_delay2_q_net,
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      en => "1",
      rst => "0",
      data => rom2_data_net
    );

  rom3: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_3fc848ca6f2fb3e5",
      latency => 2
    )
    port map (
      addr => fan_delay3_q_net,
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      en => "1",
      rst => "0",
      data => rom3_data_net
    );

  rom4: entity work.xlsprom_pfb_fir_real_core
    generic map (
      c_address_width => 11,
      c_width => 8,
      core_name0 => "bmg_72_e0b3efafc42ce43e",
      latency => 2
    )
    port map (
      addr => fan_delay4_q_net,
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      en => "1",
      rst => "0",
      data => rom4_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core/pfb_fir_real"

entity pfb_fir_real_entity_3a8ee1fb73 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1_in1: in std_logic_vector(7 downto 0); 
    pol1_in2: in std_logic_vector(7 downto 0); 
    pol1_in3: in std_logic_vector(7 downto 0); 
    pol1_in4: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    pol1_out1: out std_logic_vector(17 downto 0); 
    pol1_out2: out std_logic_vector(17 downto 0); 
    pol1_out3: out std_logic_vector(17 downto 0); 
    pol1_out4: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end pfb_fir_real_entity_3a8ee1fb73;

architecture structural of pfb_fir_real_entity_3a8ee1fb73 is
  signal addr3_s_net_x0: std_logic_vector(15 downto 0);
  signal addr3_s_net_x1: std_logic_vector(15 downto 0);
  signal addr3_s_net_x2: std_logic_vector(15 downto 0);
  signal addr3_s_net_x3: std_logic_vector(15 downto 0);
  signal ce_1_sg_x39: std_logic;
  signal clk_1_sg_x39: std_logic;
  signal convert_1_1_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert_1_2_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert_1_3_dout_net_x0: std_logic_vector(17 downto 0);
  signal convert_1_4_dout_net_x0: std_logic_vector(17 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay1_q_net_x2: std_logic_vector(7 downto 0);
  signal delay1_q_net_x3: std_logic_vector(7 downto 0);
  signal delay1_q_net_x4: std_logic_vector(7 downto 0);
  signal delay1_q_net_x5: std_logic_vector(7 downto 0);
  signal delay_q_net_x1: std_logic;
  signal delay_q_net_x2: std_logic;
  signal mult_p_net_x10: std_logic_vector(15 downto 0);
  signal mult_p_net_x11: std_logic_vector(15 downto 0);
  signal mult_p_net_x12: std_logic_vector(15 downto 0);
  signal mult_p_net_x13: std_logic_vector(15 downto 0);
  signal mult_p_net_x14: std_logic_vector(15 downto 0);
  signal mult_p_net_x15: std_logic_vector(15 downto 0);
  signal mult_p_net_x16: std_logic_vector(15 downto 0);
  signal mult_p_net_x17: std_logic_vector(15 downto 0);
  signal mult_p_net_x18: std_logic_vector(15 downto 0);
  signal mult_p_net_x19: std_logic_vector(15 downto 0);
  signal mult_p_net_x4: std_logic_vector(15 downto 0);
  signal mult_p_net_x5: std_logic_vector(15 downto 0);
  signal mult_p_net_x6: std_logic_vector(15 downto 0);
  signal mult_p_net_x7: std_logic_vector(15 downto 0);
  signal mult_p_net_x8: std_logic_vector(15 downto 0);
  signal mult_p_net_x9: std_logic_vector(15 downto 0);
  signal mux_y_net_x2: std_logic;
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x6: std_logic;
  signal pol1_in1_net_x1: std_logic_vector(7 downto 0);
  signal pol1_in2_net_x1: std_logic_vector(7 downto 0);
  signal pol1_in3_net_x1: std_logic_vector(7 downto 0);
  signal pol1_in4_net_x1: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x10: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x11: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x12: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x13: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x14: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x2: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x3: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x4: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x6: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x7: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x8: std_logic_vector(7 downto 0);
  signal ram_data_out_net_x9: std_logic_vector(7 downto 0);
  signal register_q_net_x1: std_logic_vector(31 downto 0);
  signal register_q_net_x2: std_logic_vector(31 downto 0);
  signal register_q_net_x3: std_logic_vector(31 downto 0);
  signal register_q_net_x4: std_logic_vector(31 downto 0);
  signal scale_1_1_op_net: std_logic_vector(15 downto 0);
  signal scale_1_2_op_net: std_logic_vector(15 downto 0);
  signal scale_1_3_op_net: std_logic_vector(15 downto 0);
  signal scale_1_4_op_net: std_logic_vector(15 downto 0);
  signal slice1_y_net_x1: std_logic_vector(23 downto 0);
  signal slice1_y_net_x10: std_logic_vector(7 downto 0);
  signal slice1_y_net_x11: std_logic_vector(23 downto 0);
  signal slice1_y_net_x12: std_logic_vector(15 downto 0);
  signal slice1_y_net_x13: std_logic_vector(7 downto 0);
  signal slice1_y_net_x3: std_logic_vector(15 downto 0);
  signal slice1_y_net_x4: std_logic_vector(7 downto 0);
  signal slice1_y_net_x5: std_logic_vector(23 downto 0);
  signal slice1_y_net_x6: std_logic_vector(15 downto 0);
  signal slice1_y_net_x7: std_logic_vector(7 downto 0);
  signal slice1_y_net_x8: std_logic_vector(23 downto 0);
  signal slice1_y_net_x9: std_logic_vector(15 downto 0);
  signal sync_delay_q_net_x0: std_logic;
  signal sync_net_x4: std_logic;

begin
  ce_1_sg_x39 <= ce_1;
  clk_1_sg_x39 <= clk_1;
  pol1_in1_net_x1 <= pol1_in1;
  pol1_in2_net_x1 <= pol1_in2;
  pol1_in3_net_x1 <= pol1_in3;
  pol1_in4_net_x1 <= pol1_in4;
  sync_net_x4 <= sync;
  pol1_out1 <= convert_1_1_dout_net_x0;
  pol1_out2 <= convert_1_2_dout_net_x0;
  pol1_out3 <= convert_1_3_dout_net_x0;
  pol1_out4 <= convert_1_4_dout_net_x0;
  sync_out <= delay1_q_net_x0;

  adder_1_1_0c43e56af3: entity work.adder_1_1_entity_0c43e56af3
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din1 => mult_p_net_x4,
      din2 => mult_p_net_x6,
      din3 => mult_p_net_x7,
      din4 => mult_p_net_x5,
      sync => delay_q_net_x1,
      dout => addr3_s_net_x0,
      sync_out => sync_delay_q_net_x0
    );

  adder_1_2_22508bb0bb: entity work.adder_1_2_entity_22508bb0bb
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din1 => mult_p_net_x8,
      din2 => mult_p_net_x10,
      din3 => mult_p_net_x11,
      din4 => mult_p_net_x9,
      dout => addr3_s_net_x1
    );

  adder_1_3_4e899902ba: entity work.adder_1_2_entity_22508bb0bb
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din1 => mult_p_net_x12,
      din2 => mult_p_net_x14,
      din3 => mult_p_net_x15,
      din4 => mult_p_net_x13,
      dout => addr3_s_net_x2
    );

  adder_1_4_73ded2543f: entity work.adder_1_2_entity_22508bb0bb
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din1 => mult_p_net_x16,
      din2 => mult_p_net_x18,
      din3 => mult_p_net_x19,
      din4 => mult_p_net_x17,
      dout => addr3_s_net_x3
    );

  convert_1_1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 3,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      din => scale_1_1_op_net,
      en => "1",
      dout => convert_1_1_dout_net_x0
    );

  convert_1_2: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 3,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      din => scale_1_2_op_net,
      en => "1",
      dout => convert_1_2_dout_net_x0
    );

  convert_1_3: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 3,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      din => scale_1_3_op_net,
      en => "1",
      dout => convert_1_3_dout_net_x0
    );

  convert_1_4: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 15,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 17,
      dout_width => 18,
      latency => 3,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      din => scale_1_4_op_net,
      en => "1",
      dout => convert_1_4_dout_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      d(0) => sync_delay_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x0
    );

  pol1_in1_coeffs_21987cdbbd: entity work.pol1_in1_coeffs_entity_21987cdbbd
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din => pol1_in1_net_x1,
      sync => sync_net_x4,
      coeff => register_q_net_x1,
      dout => delay1_q_net_x2,
      sync_out => delay_q_net_x2
    );

  pol1_in1_first_tap_48bba19602: entity work.pol1_in1_first_tap_entity_48bba19602
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeffs => register_q_net_x1,
      din => delay1_q_net_x2,
      sync => delay_q_net_x2,
      coeff_out => slice1_y_net_x1,
      dout => ram_data_out_net_x3,
      sync_out => mux_y_net_x3,
      taps_out => mult_p_net_x4
    );

  pol1_in1_last_tap_12a21b52a5: entity work.pol1_in1_last_tap_entity_12a21b52a5
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x4,
      din => ram_data_out_net_x2,
      sync => mux_y_net_x2,
      sync_out => delay_q_net_x1,
      tap_out => mult_p_net_x5
    );

  pol1_in1_tap2_514e98c1c4: entity work.pol1_in1_tap2_entity_514e98c1c4
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x1,
      din => ram_data_out_net_x3,
      sync => mux_y_net_x3,
      coeff_out => slice1_y_net_x3,
      dout => ram_data_out_net_x6,
      sync_out => mux_y_net_x6,
      taps_out => mult_p_net_x6
    );

  pol1_in1_tap3_092eff0612: entity work.pol1_in1_tap3_entity_092eff0612
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x3,
      din => ram_data_out_net_x6,
      sync => mux_y_net_x6,
      coeff_out => slice1_y_net_x4,
      dout => ram_data_out_net_x2,
      sync_out => mux_y_net_x2,
      taps_out => mult_p_net_x7
    );

  pol1_in2_coeffs_b1fc7b5c0c: entity work.pol1_in2_coeffs_entity_b1fc7b5c0c
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din => pol1_in2_net_x1,
      sync => sync_net_x4,
      coeff => register_q_net_x2,
      dout => delay1_q_net_x3
    );

  pol1_in2_first_tap_9b3cc2de14: entity work.pol1_in2_first_tap_entity_9b3cc2de14
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeffs => register_q_net_x2,
      din => delay1_q_net_x3,
      coeff_out => slice1_y_net_x5,
      dout => ram_data_out_net_x7,
      taps_out => mult_p_net_x8
    );

  pol1_in2_last_tap_84112ff003: entity work.pol1_in2_last_tap_entity_84112ff003
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x7,
      din => ram_data_out_net_x4,
      tap_out => mult_p_net_x9
    );

  pol1_in2_tap2_f7d5ed298b: entity work.pol1_in2_tap2_entity_f7d5ed298b
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x5,
      din => ram_data_out_net_x7,
      coeff_out => slice1_y_net_x6,
      dout => ram_data_out_net_x8,
      taps_out => mult_p_net_x10
    );

  pol1_in2_tap3_9a81e295a6: entity work.pol1_in2_tap3_entity_9a81e295a6
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x6,
      din => ram_data_out_net_x8,
      coeff_out => slice1_y_net_x7,
      dout => ram_data_out_net_x4,
      taps_out => mult_p_net_x11
    );

  pol1_in3_coeffs_74ec9b1e1c: entity work.pol1_in3_coeffs_entity_74ec9b1e1c
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din => pol1_in3_net_x1,
      sync => sync_net_x4,
      coeff => register_q_net_x3,
      dout => delay1_q_net_x4
    );

  pol1_in3_first_tap_8f34d19142: entity work.pol1_in2_first_tap_entity_9b3cc2de14
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeffs => register_q_net_x3,
      din => delay1_q_net_x4,
      coeff_out => slice1_y_net_x8,
      dout => ram_data_out_net_x9,
      taps_out => mult_p_net_x12
    );

  pol1_in3_last_tap_c53272e6ca: entity work.pol1_in2_last_tap_entity_84112ff003
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x10,
      din => ram_data_out_net_x11,
      tap_out => mult_p_net_x13
    );

  pol1_in3_tap2_201722c1cc: entity work.pol1_in2_tap2_entity_f7d5ed298b
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x8,
      din => ram_data_out_net_x9,
      coeff_out => slice1_y_net_x9,
      dout => ram_data_out_net_x10,
      taps_out => mult_p_net_x14
    );

  pol1_in3_tap3_22f54c23bf: entity work.pol1_in2_tap3_entity_9a81e295a6
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x9,
      din => ram_data_out_net_x10,
      coeff_out => slice1_y_net_x10,
      dout => ram_data_out_net_x11,
      taps_out => mult_p_net_x15
    );

  pol1_in4_coeffs_3a53e1398e: entity work.pol1_in4_coeffs_entity_3a53e1398e
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      din => pol1_in4_net_x1,
      sync => sync_net_x4,
      coeff => register_q_net_x4,
      dout => delay1_q_net_x5
    );

  pol1_in4_first_tap_98624d1168: entity work.pol1_in2_first_tap_entity_9b3cc2de14
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeffs => register_q_net_x4,
      din => delay1_q_net_x5,
      coeff_out => slice1_y_net_x11,
      dout => ram_data_out_net_x12,
      taps_out => mult_p_net_x16
    );

  pol1_in4_last_tap_762e2033f7: entity work.pol1_in2_last_tap_entity_84112ff003
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x13,
      din => ram_data_out_net_x14,
      tap_out => mult_p_net_x17
    );

  pol1_in4_tap2_3f86bd6d7b: entity work.pol1_in2_tap2_entity_f7d5ed298b
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x11,
      din => ram_data_out_net_x12,
      coeff_out => slice1_y_net_x12,
      dout => ram_data_out_net_x13,
      taps_out => mult_p_net_x18
    );

  pol1_in4_tap3_a20148fea6: entity work.pol1_in2_tap3_entity_9a81e295a6
    port map (
      ce_1 => ce_1_sg_x39,
      clk_1 => clk_1_sg_x39,
      coeff => slice1_y_net_x12,
      din => ram_data_out_net_x13,
      coeff_out => slice1_y_net_x13,
      dout => ram_data_out_net_x14,
      taps_out => mult_p_net_x19
    );

  scale_1_1: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => addr3_s_net_x0,
      op => scale_1_1_op_net
    );

  scale_1_2: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => addr3_s_net_x1,
      op => scale_1_2_op_net
    );

  scale_1_3: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => addr3_s_net_x2,
      op => scale_1_3_op_net
    );

  scale_1_4: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => addr3_s_net_x3,
      op => scale_1_4_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "pfb_fir_real_core"

entity pfb_fir_real_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1_in1: in std_logic_vector(7 downto 0); 
    pol1_in2: in std_logic_vector(7 downto 0); 
    pol1_in3: in std_logic_vector(7 downto 0); 
    pol1_in4: in std_logic_vector(7 downto 0); 
    sync: in std_logic; 
    pol1_out1: out std_logic_vector(17 downto 0); 
    pol1_out2: out std_logic_vector(17 downto 0); 
    pol1_out3: out std_logic_vector(17 downto 0); 
    pol1_out4: out std_logic_vector(17 downto 0); 
    sync_out: out std_logic
  );
end pfb_fir_real_core;

architecture structural of pfb_fir_real_core is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "pfb_fir_real_core,sysgen_core,{clock_period=5.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=621,xilinx_adder_subtracter_block=12,xilinx_arithmetic_relational_operator_block=24,xilinx_bit_slice_extractor_block=24,xilinx_bus_concatenator_block=4,xilinx_bus_multiplexer_block=12,xilinx_constant_block_block=60,xilinx_counter_block=28,xilinx_delay_block=33,xilinx_gateway_in_block=5,xilinx_gateway_out_block=5,xilinx_input_scaler_block=4,xilinx_logical_block_block=12,xilinx_multiplier_block=16,xilinx_register_block=4,xilinx_single_port_random_access_memory_block=12,xilinx_single_port_read_only_memory_block=16,xilinx_system_generator_block=1,xilinx_type_converter_block=4,xilinx_type_reinterpreter_block=48,}";

  signal ce_1_sg_x40: std_logic;
  signal clk_1_sg_x40: std_logic;
  signal pol1_in1_net: std_logic_vector(7 downto 0);
  signal pol1_in2_net: std_logic_vector(7 downto 0);
  signal pol1_in3_net: std_logic_vector(7 downto 0);
  signal pol1_in4_net: std_logic_vector(7 downto 0);
  signal pol1_out1_net: std_logic_vector(17 downto 0);
  signal pol1_out2_net: std_logic_vector(17 downto 0);
  signal pol1_out3_net: std_logic_vector(17 downto 0);
  signal pol1_out4_net: std_logic_vector(17 downto 0);
  signal sync_net: std_logic;
  signal sync_out_net: std_logic;

begin
  ce_1_sg_x40 <= ce_1;
  clk_1_sg_x40 <= clk_1;
  pol1_in1_net <= pol1_in1;
  pol1_in2_net <= pol1_in2;
  pol1_in3_net <= pol1_in3;
  pol1_in4_net <= pol1_in4;
  sync_net <= sync;
  pol1_out1 <= pol1_out1_net;
  pol1_out2 <= pol1_out2_net;
  pol1_out3 <= pol1_out3_net;
  pol1_out4 <= pol1_out4_net;
  sync_out <= sync_out_net;

  pfb_fir_real_3a8ee1fb73: entity work.pfb_fir_real_entity_3a8ee1fb73
    port map (
      ce_1 => ce_1_sg_x40,
      clk_1 => clk_1_sg_x40,
      pol1_in1 => pol1_in1_net,
      pol1_in2 => pol1_in2_net,
      pol1_in3 => pol1_in3_net,
      pol1_in4 => pol1_in4_net,
      sync => sync_net,
      pol1_out1 => pol1_out1_net,
      pol1_out2 => pol1_out2_net,
      pol1_out3 => pol1_out3_net,
      pol1_out4 => pol1_out4_net,
      sync_out => sync_out_net
    );

end structural;

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

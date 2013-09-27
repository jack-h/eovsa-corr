library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "coarse_delay_core/coarse_delay/barrel_switcher"

entity barrel_switcher_entity_a267a9ad9b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    in2: in std_logic_vector(7 downto 0); 
    in3: in std_logic_vector(7 downto 0); 
    in4: in std_logic_vector(7 downto 0); 
    sel: in std_logic_vector(1 downto 0); 
    sync_in: in std_logic; 
    out1: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0); 
    out4: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end barrel_switcher_entity_a267a9ad9b;

architecture structural of barrel_switcher_entity_a267a9ad9b is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal delay1_q_net: std_logic_vector(1 downto 0);
  signal delay_sel_q_net_x0: std_logic_vector(1 downto 0);
  signal delay_sync_q_net_x0: std_logic;
  signal dual_port_ram_doutb_net_x3: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x4: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x5: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x6: std_logic_vector(7 downto 0);
  signal mux11_y_net: std_logic_vector(7 downto 0);
  signal mux12_y_net_x0: std_logic_vector(7 downto 0);
  signal mux21_y_net: std_logic_vector(7 downto 0);
  signal mux22_y_net_x0: std_logic_vector(7 downto 0);
  signal mux31_y_net: std_logic_vector(7 downto 0);
  signal mux32_y_net_x0: std_logic_vector(7 downto 0);
  signal mux41_y_net: std_logic_vector(7 downto 0);
  signal mux42_y_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  dual_port_ram_doutb_net_x6 <= in1;
  dual_port_ram_doutb_net_x5 <= in2;
  dual_port_ram_doutb_net_x4 <= in3;
  dual_port_ram_doutb_net_x3 <= in4;
  delay_sel_q_net_x0 <= sel;
  sync_delay_q_net_x0 <= sync_in;
  out1 <= mux12_y_net_x0;
  out2 <= mux22_y_net_x0;
  out3 <= mux32_y_net_x0;
  out4 <= mux42_y_net_x0;
  sync_out <= delay_sync_q_net_x0;

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => delay_sel_q_net_x0,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay_sync: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => sync_delay_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_sync_q_net_x0
    );

  mux11: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x6,
      d1 => dual_port_ram_doutb_net_x4,
      sel(0) => slice1_y_net,
      y => mux11_y_net
    );

  mux12: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => mux11_y_net,
      d1 => mux21_y_net,
      sel(0) => slice2_y_net,
      y => mux12_y_net_x0
    );

  mux21: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x5,
      d1 => dual_port_ram_doutb_net_x3,
      sel(0) => slice1_y_net,
      y => mux21_y_net
    );

  mux22: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => mux21_y_net,
      d1 => mux31_y_net,
      sel(0) => slice2_y_net,
      y => mux22_y_net_x0
    );

  mux31: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x4,
      d1 => dual_port_ram_doutb_net_x6,
      sel(0) => slice1_y_net,
      y => mux31_y_net
    );

  mux32: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => mux31_y_net,
      d1 => mux41_y_net,
      sel(0) => slice2_y_net,
      y => mux32_y_net_x0
    );

  mux41: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x3,
      d1 => dual_port_ram_doutb_net_x5,
      sel(0) => slice1_y_net,
      y => mux41_y_net
    );

  mux42: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      d0 => mux41_y_net,
      d1 => mux11_y_net,
      sel(0) => slice2_y_net,
      y => mux42_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => delay_sel_q_net_x0,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "coarse_delay_core/coarse_delay/delay_dp"

entity delay_dp_entity_19775f69c8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(11 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end delay_dp_entity_19775f69c8;

architecture structural of delay_dp_entity_19775f69c8 is
  signal addsub_s_net: std_logic_vector(11 downto 0);
  signal bram_rd_addrs_y_net_x0: std_logic_vector(11 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal constant2_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal data_in1_net_x0: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x4: std_logic_vector(7 downto 0);
  signal wr_addr_op_net: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  bram_rd_addrs_y_net_x0 <= delay;
  data_in1_net_x0 <= din;
  dout <= dual_port_ram_doutb_net_x4;

  addsub: entity work.addsub_7ddecbe156
    port map (
      a => wr_addr_op_net,
      b => bram_rd_addrs_y_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      s => addsub_s_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net
    );

  dual_port_ram: entity work.xldpram_coarse_delay_core
    generic map (
      c_address_width_a => 12,
      c_address_width_b => 12,
      c_width_a => 8,
      c_width_b => 8,
      core_name0 => "bmg_72_a2850c3cf4c038cd",
      latency => 4
    )
    port map (
      a_ce => ce_1_sg_x1,
      a_clk => clk_1_sg_x1,
      addra => wr_addr_op_net,
      addrb => addsub_s_net,
      b_ce => ce_1_sg_x1,
      b_clk => clk_1_sg_x1,
      dina => data_in1_net_x0,
      dinb => data_in1_net_x0,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant2_op_net,
      web(0) => constant4_op_net,
      doutb => dual_port_ram_doutb_net_x4
    );

  wr_addr: entity work.counter_6cd08a247e
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "coarse_delay_core/coarse_delay/delay_dp1"

entity delay_dp1_entity_888a52bd2e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(12 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end delay_dp1_entity_888a52bd2e;

architecture structural of delay_dp1_entity_888a52bd2e is
  signal addsub1_s_net_x0: std_logic_vector(12 downto 0);
  signal addsub_s_net: std_logic_vector(11 downto 0);
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal constant2_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal data_in2_net_x0: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x5: std_logic_vector(7 downto 0);
  signal wr_addr_op_net: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  addsub1_s_net_x0 <= delay;
  data_in2_net_x0 <= din;
  dout <= dual_port_ram_doutb_net_x5;

  addsub: entity work.addsub_a447c52ca1
    port map (
      a => wr_addr_op_net,
      b => addsub1_s_net_x0,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      s => addsub_s_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net
    );

  dual_port_ram: entity work.xldpram_coarse_delay_core
    generic map (
      c_address_width_a => 12,
      c_address_width_b => 12,
      c_width_a => 8,
      c_width_b => 8,
      core_name0 => "bmg_72_a2850c3cf4c038cd",
      latency => 4
    )
    port map (
      a_ce => ce_1_sg_x2,
      a_clk => clk_1_sg_x2,
      addra => wr_addr_op_net,
      addrb => addsub_s_net,
      b_ce => ce_1_sg_x2,
      b_clk => clk_1_sg_x2,
      dina => data_in2_net_x0,
      dinb => data_in2_net_x0,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant2_op_net,
      web(0) => constant4_op_net,
      doutb => dual_port_ram_doutb_net_x5
    );

  wr_addr: entity work.counter_6cd08a247e
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "coarse_delay_core/coarse_delay"

entity coarse_delay_entity_4ba3b866ce is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end coarse_delay_entity_4ba3b866ce;

architecture structural of coarse_delay_entity_4ba3b866ce is
  signal addsub1_s_net_x0: std_logic_vector(12 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(12 downto 0);
  signal addsub3_s_net_x0: std_logic_vector(12 downto 0);
  signal bram_rd_addrs_y_net_x0: std_logic_vector(11 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic_vector(1 downto 0);
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal data_in1_net_x1: std_logic_vector(7 downto 0);
  signal data_in2_net_x1: std_logic_vector(7 downto 0);
  signal data_in3_net_x1: std_logic_vector(7 downto 0);
  signal data_in4_net_x1: std_logic_vector(7 downto 0);
  signal delay_net_x0: std_logic_vector(15 downto 0);
  signal delay_reg_q_net: std_logic_vector(15 downto 0);
  signal delay_sel_q_net_x0: std_logic_vector(1 downto 0);
  signal delay_sync_q_net_x1: std_logic;
  signal dual_port_ram_doutb_net_x4: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x5: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x6: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x7: std_logic_vector(7 downto 0);
  signal en_net_x0: std_logic;
  signal mux12_y_net_x1: std_logic_vector(7 downto 0);
  signal mux22_y_net_x1: std_logic_vector(7 downto 0);
  signal mux32_y_net_x1: std_logic_vector(7 downto 0);
  signal mux42_y_net_x1: std_logic_vector(7 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal shift_sel_y_net: std_logic_vector(1 downto 0);
  signal sync_delay_q_net_x0: std_logic;
  signal sync_net_x0: std_logic;

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  data_in1_net_x1 <= data_in1;
  data_in2_net_x1 <= data_in2;
  data_in3_net_x1 <= data_in3;
  data_in4_net_x1 <= data_in4;
  delay_net_x0 <= delay;
  en_net_x0 <= en;
  sync_net_x0 <= sync;
  data_out1 <= mux42_y_net_x1;
  data_out2 <= mux32_y_net_x1;
  data_out3 <= mux22_y_net_x1;
  data_out4 <= mux12_y_net_x1;
  sync_out <= delay_sync_q_net_x1;

  addsub1: entity work.xladdsub_coarse_delay_core
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 12,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 13,
      core_name0 => "addsb_11_0_07ee7685fe6aac24",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 13,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 13
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert1_dout_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub1_s_net_x0
    );

  addsub2: entity work.xladdsub_coarse_delay_core
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 12,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 13,
      core_name0 => "addsb_11_0_07ee7685fe6aac24",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 13,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 13
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert2_dout_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub2_s_net_x0
    );

  addsub3: entity work.xladdsub_coarse_delay_core
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 12,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 13,
      core_name0 => "addsb_11_0_07ee7685fe6aac24",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 13,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 13
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert3_dout_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub3_s_net_x0
    );

  barrel_switcher_a267a9ad9b: entity work.barrel_switcher_entity_a267a9ad9b
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      in1 => dual_port_ram_doutb_net_x7,
      in2 => dual_port_ram_doutb_net_x6,
      in3 => dual_port_ram_doutb_net_x5,
      in4 => dual_port_ram_doutb_net_x4,
      sel => delay_sel_q_net_x0,
      sync_in => sync_delay_q_net_x0,
      out1 => mux12_y_net_x1,
      out2 => mux22_y_net_x1,
      out3 => mux32_y_net_x1,
      out4 => mux42_y_net_x1,
      sync_out => delay_sync_q_net_x1
    );

  bram_rd_addrs: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 13,
      x_width => 16,
      y_width => 12
    )
    port map (
      x => delay_reg_q_net,
      y => bram_rd_addrs_y_net_x0
    );

  constant1: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  convert1: entity work.xlconvert
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
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din(0) => relational1_op_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  convert2: entity work.xlconvert
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
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din(0) => relational2_op_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
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
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din(0) => relational3_op_net,
      en => "1",
      dout(0) => convert3_dout_net
    );

  delay_dp1_888a52bd2e: entity work.delay_dp1_entity_888a52bd2e
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      delay => addsub1_s_net_x0,
      din => data_in2_net_x1,
      dout => dual_port_ram_doutb_net_x5
    );

  delay_dp2_4ca3c59d31: entity work.delay_dp1_entity_888a52bd2e
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      delay => addsub2_s_net_x0,
      din => data_in3_net_x1,
      dout => dual_port_ram_doutb_net_x6
    );

  delay_dp3_19c02b0517: entity work.delay_dp1_entity_888a52bd2e
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      delay => addsub3_s_net_x0,
      din => data_in4_net_x1,
      dout => dual_port_ram_doutb_net_x7
    );

  delay_dp_19775f69c8: entity work.delay_dp_entity_19775f69c8
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      delay => bram_rd_addrs_y_net_x0,
      din => data_in1_net_x1,
      dout => dual_port_ram_doutb_net_x4
    );

  delay_reg: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => delay_net_x0,
      en(0) => en_net_x0,
      rst => "0",
      q => delay_reg_q_net
    );

  delay_sel: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => shift_sel_y_net,
      en => '1',
      rst => '1',
      q => delay_sel_q_net_x0
    );

  relational1: entity work.relational_9b3c9652f3
    port map (
      a => shift_sel_y_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_9b3c9652f3
    port map (
      a => shift_sel_y_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_9b3c9652f3
    port map (
      a => shift_sel_y_net,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  shift_sel: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 1,
      x_width => 16,
      y_width => 2
    )
    port map (
      x => delay_reg_q_net,
      y => shift_sel_y_net
    );

  sync_delay: entity work.xldelay
    generic map (
      latency => 5,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => sync_net_x0,
      en => '1',
      rst => '1',
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "coarse_delay_core"

entity coarse_delay_core is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end coarse_delay_core;

architecture structural of coarse_delay_core is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "coarse_delay_core,sysgen_core,{clock_period=5.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=123,xilinx_adder_subtracter_block=7,xilinx_arithmetic_relational_operator_block=3,xilinx_bit_slice_extractor_block=4,xilinx_bus_multiplexer_block=8,xilinx_constant_block_block=11,xilinx_counter_block=4,xilinx_delay_block=4,xilinx_dual_port_random_access_memory_block=4,xilinx_gateway_in_block=7,xilinx_gateway_out_block=5,xilinx_register_block=1,xilinx_system_generator_block=1,xilinx_type_converter_block=3,}";

  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal data_in1_net: std_logic_vector(7 downto 0);
  signal data_in2_net: std_logic_vector(7 downto 0);
  signal data_in3_net: std_logic_vector(7 downto 0);
  signal data_in4_net: std_logic_vector(7 downto 0);
  signal data_out1_net: std_logic_vector(7 downto 0);
  signal data_out2_net: std_logic_vector(7 downto 0);
  signal data_out3_net: std_logic_vector(7 downto 0);
  signal data_out4_net: std_logic_vector(7 downto 0);
  signal delay_net: std_logic_vector(15 downto 0);
  signal en_net: std_logic;
  signal sync_net: std_logic;
  signal sync_out_net: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  data_in1_net <= data_in1;
  data_in2_net <= data_in2;
  data_in3_net <= data_in3;
  data_in4_net <= data_in4;
  delay_net <= delay;
  en_net <= en;
  sync_net <= sync;
  data_out1 <= data_out1_net;
  data_out2 <= data_out2_net;
  data_out3 <= data_out3_net;
  data_out4 <= data_out4_net;
  sync_out <= sync_out_net;

  coarse_delay_4ba3b866ce: entity work.coarse_delay_entity_4ba3b866ce
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      data_in1 => data_in1_net,
      data_in2 => data_in2_net,
      data_in3 => data_in3_net,
      data_in4 => data_in4_net,
      delay => delay_net,
      en => en_net,
      sync => sync_net,
      data_out1 => data_out1_net,
      data_out2 => data_out2_net,
      data_out3 => data_out3_net,
      data_out4 => data_out4_net,
      sync_out => sync_out_net
    );

end structural;

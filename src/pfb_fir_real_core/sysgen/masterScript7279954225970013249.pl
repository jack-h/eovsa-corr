
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/home/observer/projects/eovsa-corr/src',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 5.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => 'd7hack',
    'clock_wrapper' => 'Clock Enables',
    'compilation' => 'NGC Netlist',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'NGC Netlist',
      ],
      'values' => [
        'target1',
        'target2',
      ],
    },
    'compilation_target' => 'NGC Netlist',
    'core_generation' => 1.0,
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-observer/cg_wk/c3e489988ea58d309',
    'coregen_part_family' => 'virtex6',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dcm_input_clock_period' => 100.0,
    'deprecated_control' => 'off',
    'design' => 'pfb_fir_real_core',
    'design_full_path' => '/home/observer/projects/eovsa-corr/src/pfb_fir_real_core.mdl',
    'device' => 'xc6vsx475t-1ff1759',
    'device_speed' => '-1',
    'directory' => '/home/observer/projects/eovsa-corr/src/pfb_fir_real_core',
    'dsp_cache_root_path' => '/tmp/sysgentmp-observer',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 0.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 78021.00012207031,
    'generating_subsystem_handle' => 78021.00012207031,
    'generation_directory' => './pfb_fir_real_core',
    'hdlDir' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => '/home/observer/projects/eovsa-corr/src',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'isdeployed' => 0,
    'ise_version' => '14.5i',
    'master_sysgen_token_handle' => 78022.00012207031,
    'matlab' => '/home/observer/tools/MATLAB/R2012b',
    'matlab_fixedpoint' => 0.0,
    'mdlHandle' => 78021.00012207031,
    'mdlPath' => '/home/observer/projects/eovsa-corr/src/pfb_fir_real_core.mdl',
    'modelDiagnostics' => [
      {
        'count' => 621.0,
        'isMask' => 0.0,
        'type' => 'pfb_fir_real_core Total blocks',
      },
      {
        'count' => 5.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 105.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 105.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 323.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 74.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 7.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 24.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 60.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 28.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 33.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Input Scaler Block',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Random Access Memory Block',
      },
      {
        'count' => 16.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Read-Only Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 48.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'adder_tree',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'delay_bram',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'first_tap_real',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'last_tap_real',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'pfb_coeff_gen',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'pfb_fir_real',
      },
      {
        'count' => 8.0,
        'isMask' => 1.0,
        'type' => 'pfb_tap_real',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'sync_delay',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/home/observer/projects/eovsa-corr/src/pfb_fir_real_core.mdl',
    'myxilinx' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE',
    'ngc_config' => {
      'include_cf' => 0.0,
      'include_clockwrapper' => 0.0,
    },
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '10',
    'package' => 'ff1759',
    'part' => 'xc6vsx475t',
    'partFamily' => 'virtex6',
    'port_data_types_enabled' => 1.0,
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'run_coregen' => '0',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'sg_version' => '',
    'simulation_island_subsystem_handle' => 78021.00012207031,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-1',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'sysclk_period' => 5.0,
    'sysgen' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen',
    'sysgenRoot' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'base_system_period_hardware' => 5.0,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'ce_clr' => 0.0,
      'clock_loc' => 'd7hack',
      'clock_wrapper' => 'Clock Enables',
      'compilation' => 'NGC Netlist',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'NGC Netlist',
        ],
        'values' => [
          'target1',
          'target2',
        ],
      },
      'core_generation' => 1.0,
      'coregen_part_family' => 'virtex6',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dcm_input_clock_period' => 100.0,
      'deprecated_control' => 'off',
      'directory' => './pfb_fir_real_core',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'master_sysgen_token_handle' => 78022.00012207031,
      'ngc_config' => {
        'include_cf' => 0.0,
        'include_clockwrapper' => 0.0,
      },
      'package' => 'ff1759',
      'part' => 'xc6vsx475t',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'simulation_island_subsystem_handle' => 78021.00012207031,
      'simulink_period' => 1.0,
      'speed' => '-1',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'sysclk_period' => 5.0,
      'testbench' => 0,
      'trim_vbits' => 1.0,
      'xilinx_device' => 'xc6vsx475t-1ff1759',
      'xilinxfamily' => 'virtex6',
    },
    'sysgen_Root' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 5.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'tmpDir' => '/home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen',
    'trim_vbits' => 1.0,
    'use_strict_names' => 1,
    'user_tips_enabled' => 1.0,
    'usertemp' => '/tmp/sysgentmp-observer',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '330.000000 ns',
    'xilinx' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE',
    'xilinx_device' => 'xc6vsx475t-1ff1759',
    'xilinx_family' => 'virtex6',
    'xilinx_package' => 'ff1759',
    'xilinx_part' => 'xc6vsx475t',
    'xilinxdevice' => 'xc6vsx475t-1ff1759',
    'xilinxfamily' => 'virtex6',
    'xilinxpart' => 'xc6vsx475t',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.vhd',
    'sourceFile' => 'hdl/conv_pkg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.vhd',
    'sourceFile' => 'hdl/synth_reg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.vhd',
    'sourceFile' => 'hdl/synth_reg_w_init.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '19c17ee08b56d0552b2c01f7accbb6a8',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((16 - 1) downto 0);
  signal b_17_35: signed((16 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000",
    "0000000000000000");
  signal op_mem_91_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_91_20_back: signed((16 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (2 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    "0",
    "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((17 - 1) downto 0);
  signal cast_69_22: signed((17 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((17 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((16 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(1);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_91_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          op_mem_91_20(i) <= op_mem_91_20(i-1);
        end loop;
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(1);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (cout_mem_92_22_push_front_pop_back_en = \'1\')) then
        for i_x_000000 in 1 downto 1 loop 
          cout_mem_92_22(i_x_000000) <= cout_mem_92_22(i_x_000000-1);
        end loop;
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
  cast_69_18 <= s2s_cast(a_17_32, 14, 17, 14);
  cast_69_22 <= s2s_cast(b_17_35, 14, 17, 14);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_69_5_addsub, 14, 16, 14);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    s : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_ebc1a52e8a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd167fa9c5b18fa387aab7ae5d5bdb150',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\',
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= std_logic_to_vector(op_mem_20_24_back);
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_c53de546ea',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Adder_Subtracter virtex6 Xilinx,_Inc. 11.0',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 17',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = true',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = DSP48',
    'CSET Latency = 1',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_f65c3b4ad8785c13',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7a72c9ddf4d6f253bcc89fc61fb1bd01',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(17 - 1 downto 0);
    clk: in std_logic:= \'0\';
    ce: in std_logic:= \'0\';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_f65c3b4ad8785c13',
      'entityName' => 'xladdsub_pfb_fir_real_core',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ecacdc34b5fae3ec926227d44fb7ee3f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_a1e126f11c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_bf568bdf3cd9f9c7',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9dcabbce231b11487814222e5758bf07',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_bf568bdf3cd9f9c7',
      'entityName' => 'xlcounter_free_pfb_fir_real_core',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b56e4667ac5d896c25a234603ec1d190',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1420545a2cb8c9cc28c53515f1530c6e',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_0982e05b26d41eef',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8b21f0c0290fe04a622d0398e1481009',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_0982e05b26d41eef',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_967630e6b2a5c300',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'df5cede3306a5f4f0a212be2397cbe03',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_967630e6b2a5c300',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e8840864d43f6fc068f8f5730c877d52',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '57f1496f368ca03c45ad4e2bae591da4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d51df7ac30',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f73ff55475a06ccd9d50ce3d5173ae0a',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_2eec44623d367658',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a5336af61b1b1c1ba22d3bb75ba5187e',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_2eec44623d367658',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_3e05483b044fa88c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4a552d24099d8580ace4ec4751ee75a4',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_3e05483b044fa88c',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '13366d021ddc9f5413827bc05cb9e24f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_6293007044',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_bf568bdf3cd9f9c7',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '068616a4a7bea636a9319f7ced3d0f45',
    'sourceFile' => 'hdl/xlcounter_limit.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_bf568bdf3cd9f9c7',
      'entityName' => 'xlcounter_limit_pfb_fir_real_core',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_RAM',
    'CSET operating_mode_a = READ_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_9628accf375c9240',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '189b9f47883049dd611b884e6975a568',
    'sourceFile' => 'hdl/xlspram.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      dina: in std_logic_vector(c_width - 1 downto 0);
      wea: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => addr,
        clka => clk,
        dina => data_in,
        wea(0) => core_we,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_9628accf375c9240',
      'entityName' => 'xlspram_pfb_fir_real_core',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9a20ba3c55299d4f5696f7a971675316',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7c91b1b314',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0c4edbeb504e6c7bd6c55a443b6cbf50',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fd28b32bf8',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '713d56752ee6c93620a688f34d949cad',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e054d850c5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 12',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_9f2a2f53426c6ba5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '462d4e7153bc9b2f35ac5807deecbedd',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      load: in std_logic;
      l: in std_logic_vector(op_width - 1 downto 0);
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        load => load(0),
        l => din,
        q => op_net',
      'core_name0' => 'cntr_11_0_9f2a2f53426c6ba5',
      'entityName' => 'xlcounter_free_pfb_fir_real_core',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '79cfaf8c15ce6d93b744ee6a4a4e8394',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_aacf6e1b0e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4cbc8f55ab0bdad8c93c57462ba138dc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
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
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_1bef4ba0e4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '07beef4b6f82356c571a058e3f280ba9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_d36fe12c1c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '97d4368f6023048dfa9fc25443ca4262',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((12 - 1) downto 0);
  signal b_1_34: unsigned((12 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((12 - 1) downto 0);
    b : in std_logic_vector((12 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_acb3c05dd0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd5fd3da16d1a18a62da3e070fd0ffbe9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((8 - 1) downto 0);
  signal b_1_25: signed((8 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (3 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "0000000000000000",
    "0000000000000000",
    "0000000000000000");
  signal op_mem_65_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_65_20_back: signed((16 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((16 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(2);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 2 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  mult_46_56 <= (a_1_22 * b_1_25);
  op_mem_65_20_front_din <= mult_46_56;
  op_mem_65_20_push_front_pop_back_en <= \'1\';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    p : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_1f4d330bcc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8bcc339ab1dd4d8c279cce5e794b5e3',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
  signal output_port_5_5_force: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4389dc89bf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b873c30a4a165c6a2cca5bd2c036c837',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port <= signed_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d9988e3d87',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cc9e9f9f64fbaa84fa3555afa90c72d8',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dd18f3544a4a5e4f2d25efc7c0bb3f59',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a0eae593d23010d0e477a90d14d4b41d',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7085008b12a890a82443dac97d669f62',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b867be4630eb87d9441b618e30a34f4b',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f99afe6f7449037e6f13746f0fdeb605',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ab53532b6aba56d85e2142c7c4f9444d',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_9be7d465d5eaaba3',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0a4b2e5f08d82f0554710d18c29f0ccb',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_9be7d465d5eaaba3',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_48aecbcc669a19be',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9284768672acba456a9626dad4703eb5',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_48aecbcc669a19be',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_b69451ed038a8d73',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '49e913c1a53f434edde23afc2cd41287',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_b69451ed038a8d73',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_654583903c8e8194',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9cd3a532a6f996e32c288ce33a519266',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_654583903c8e8194',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_c7aab016f93a6382',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '99bc723d8749f4c219b963ee5e15c4fd',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_c7aab016f93a6382',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_2e28d8b7ce374e24',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '107500419a7a766e90e7659dc9b537ad',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_2e28d8b7ce374e24',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_0ebe52f0796e6018',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2df0904cd4a09dda69edf87ede77d13b',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_0ebe52f0796e6018',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_246e222abe66c216',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bd9d9184657499d221498b0868966133',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_246e222abe66c216',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_95650c95bb98bfbd',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd7b750b3e6bcc02710e5dfca519eb35c',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_95650c95bb98bfbd',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_912f853d170eb76f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '343d6a42da144a9fadcae7b29e5c38ee',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_912f853d170eb76f',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7F, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7E, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7D, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7C, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7B, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 7A, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 79, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 78, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 75, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 70, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6F, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6E, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6D, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6C, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6B, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 6A, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 68, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 65, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 64, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 62, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5E, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5D, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5C, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5B, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 5A, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 58, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4F, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4E, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4D, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4C, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4B, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 4A, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 43, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3F, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3E, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3D, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3C, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3B, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 3A, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 39, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2F, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2E, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2D, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2C, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2B, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 2A, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1F, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1E, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1D, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1C, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1B, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 1A, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, E, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, D, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, C, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, B, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, A, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_3fc848ca6f2fb3e5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3d8314c7d4792fad06647843751a3804',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_3fc848ca6f2fb3e5',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 7.2',
    '# 14.5_P.55',
    '# DEVICE virtex6',
    '# VHDL',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F8, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, F9, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FA, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FB, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FC, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FD, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FE, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, FF, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET collision_warnings = ALL',
    'CSET disable_collision_warnings = false',
    'CSET ecc = false',
    'CSET enable_a = Use_ENA_Pin',
    'CSET enable_b = Always_Enabled',
    'CSET error_injection_type = Single_Bit_Error_Injection',
    'CSET fill_remaining_memory_locations = false',
    'CSET load_init_file = TRUE',
    'CSET memory_type = Single_Port_ROM',
    'CSET operating_mode_a = WRITE_FIRST',
    'CSET operating_mode_b = WRITE_FIRST',
    'CSET output_reset_value_a = 0',
    'CSET output_reset_value_b = 0',
    'CSET pipeline_stages = 0',
    'CSET primitive = 8kx2',
    'CSET read_width_a = 8',
    'CSET read_width_b = 8',
    'CSET register_porta_output_of_memory_core = false',
    'CSET register_porta_output_of_memory_primitives = true',
    'CSET register_portb_output_of_memory_core = false',
    'CSET register_portb_output_of_memory_primitives = false',
    'CSET remaining_memory_locations = 0',
    'CSET reset_type = SYNC',
    'CSET use_byte_write_enable = false',
    'CSET use_error_injection_pins = false',
    'CSET use_regcea_pin = false',
    'CSET use_regceb_pin = false',
    'CSET use_rsta_pin = false',
    'CSET use_rstb_pin = false',
    'CSET write_depth_a = 2048',
    'CSET write_width_a = 8',
    'CSET write_width_b = 8',
    'CSET component_name = bmg_72_e0b3efafc42ce43e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'de61c03e651c54528d8d6800d686c05d',
    'sourceFile' => 'hdl/xlsprom.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out',
      'core_name0' => 'bmg_72_e0b3efafc42ce43e',
      'entityName' => 'xlsprom_pfb_fir_real_core',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a3f775b135fc8edbd76ef0319d938866',
    'sourceFile' => '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f76c6db6331e130742f6aa1317cdd7be',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((16 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_fa7c2ab9f6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/home/observer/tools/Xilinx/14.5/ISE_DS/ISE/sysgen';
  open(RESULTS, '> /home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/script_results7339725788168530500') || 
    croak 'couldn\'t open /home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/script_results7339725788168530500';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/script_results7339725788168530500';
};

if ($@) {
  open(RESULTS, '> /home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/script_results7339725788168530500') || 
    croak 'couldn\'t open /home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/script_results7339725788168530500';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/observer/projects/eovsa-corr/src/pfb_fir_real_core/sysgen/script_results7339725788168530500';
  exit(1);
}

exit(0);


open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => '/home/observer/projects/eovsa/src',
    'TEMP' => '/tmp',
    'TMP' => '/tmp',
    'Temp' => '/tmp',
    'Tmp' => '/tmp',
    'base_system_period_hardware' => 5.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'cc' => '/usr/bin/gcc',
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
    'coregen_core_generation_tmpdir' => '/tmp/sysgentmp-observer/cg_wk/ce25282d95ad7648e',
    'coregen_part_family' => 'virtex6',
    'createTestbench' => 0,
    'dbl_ovrd' => -1.0,
    'dcm_input_clock_period' => 100.0,
    'deprecated_control' => 'off',
    'design' => 'fft_wideband_real_core',
    'design_full_path' => '/home/observer/projects/eovsa/src/fft_wideband_real_core.mdl',
    'device' => 'xc6vsx475t-1ff1759',
    'device_speed' => '-1',
    'directory' => '/home/observer/projects/eovsa/src/fft_wideband_real_core',
    'dsp_cache_root_path' => '/home/observer/.Xilinx/Sysgen',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => '/home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => '/home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 0.0,
    'gcc_exe' => '/usr/bin/gcc',
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 74866.00048828125,
    'generating_subsystem_handle' => 74866.00048828125,
    'generation_directory' => './fft_wideband_real_core',
    'hdlDir' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => '/home/observer/projects/eovsa/src',
    'incr_netlist' => 'off',
    'isdeployed' => 0,
    'ise_full_version' => '11.4.i',
    'ise_version' => '11.4i',
    'master_sysgen_token_handle' => 74867.00024414062,
    'matlab' => '/home/observer/tools/Matlab2009bunix64',
    'matlabJavaDirectory' => '/home/observer/tools/Matlab2009bunix64/sys/java/jre/win32/jre1.4.2/bin',
    'matlab_fixedpoint' => 0.0,
    'mdlHandle' => 74866.00048828125,
    'mdlPath' => '/home/observer/projects/eovsa/src/fft_wideband_real_core.mdl',
    'modelDiagnostics' => [
      {
        'count' => 5121.0,
        'isMask' => 0.0,
        'type' => 'fft_wideband_real_core Total blocks',
      },
      {
        'count' => 6.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 712.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 712.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 3261.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 422.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 6.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 86.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 35.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 570.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bit Slice Extractor Block',
      },
      {
        'count' => 181.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Concatenator Block',
      },
      {
        'count' => 114.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 346.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 66.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 34.0,
        'isMask' => 1.0,
        'type' => 'Xilinx DSP48E Block',
      },
      {
        'count' => 178.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 68.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Input Scaler Block',
      },
      {
        'count' => 224.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 294.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 52.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Multiplier Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Negate Block Block',
      },
      {
        'count' => 26.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Random Access Memory Block',
      },
      {
        'count' => 39.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Single Port Read-Only Memory Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 239.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 694.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'barrel_switcher',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'bi_real_unscr_4x',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'biplex_core',
      },
      {
        'count' => 15.0,
        'isMask' => 1.0,
        'type' => 'butterfly_direct',
      },
      {
        'count' => 51.0,
        'isMask' => 1.0,
        'type' => 'c_to_ri',
      },
      {
        'count' => 34.0,
        'isMask' => 1.0,
        'type' => 'caddsub_dsp48e',
      },
      {
        'count' => 13.0,
        'isMask' => 1.0,
        'type' => 'coeff_gen',
      },
      {
        'count' => 60.0,
        'isMask' => 1.0,
        'type' => 'convert',
      },
      {
        'count' => 60.0,
        'isMask' => 1.0,
        'type' => 'convert_of',
      },
      {
        'count' => 18.0,
        'isMask' => 1.0,
        'type' => 'delay_bram',
      },
      {
        'count' => 6.0,
        'isMask' => 1.0,
        'type' => 'delay_slr',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'fft_biplex_real_4x',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'fft_direct',
      },
      {
        'count' => 11.0,
        'isMask' => 1.0,
        'type' => 'fft_stage_n',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'fft_unscrambler',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'fft_wideband_real',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'mirror_spectrum',
      },
      {
        'count' => 10.0,
        'isMask' => 1.0,
        'type' => 'pipeline',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'reorder',
      },
      {
        'count' => 53.0,
        'isMask' => 1.0,
        'type' => 'ri_to_c',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'sincos_dsp48e',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'square_transposer',
      },
      {
        'count' => 12.0,
        'isMask' => 1.0,
        'type' => 'sync_delay',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'sync_delay_en',
      },
      {
        'count' => 13.0,
        'isMask' => 1.0,
        'type' => 'twiddle_general_4mult',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'twiddle_pass_through',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => '/home/observer/projects/eovsa/src/fft_wideband_real_core.mdl',
    'myxilinx' => '/opt/Xilinx/11.1/ISE',
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
    'run_coregen' => '0',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'sg_version' => '11.4',
    'simulation_island_subsystem_handle' => 74866.00048828125,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-1',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'sysclk_period' => 5.0,
    'sysgen' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen',
    'sysgenRoot' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen',
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
      'dbl_ovrd' => -1.0,
      'dcm_input_clock_period' => 100.0,
      'deprecated_control' => 'off',
      'directory' => './fft_wideband_real_core',
      'incr_netlist' => 'off',
      'master_sysgen_token_handle' => 74867.00024414062,
      'ngc_config' => {
        'include_cf' => 0.0,
        'include_clockwrapper' => 0.0,
      },
      'package' => 'ff1759',
      'part' => 'xc6vsx475t',
      'preserve_hierarchy' => 0.0,
      'simulation_island_subsystem_handle' => 74866.00048828125,
      'simulink_period' => 1.0,
      'speed' => '-1',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'sysclk_period' => 5.0,
      'testbench' => 0,
      'trim_vbits' => 1.0,
      'xilinx_device' => 'xc6vsx475t-1ff1759',
      'xilinxfamily' => 'virtex6',
    },
    'sysgen_Root' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen',
    'systemClockPeriod' => 5.0,
    'tempdir' => '/tmp',
    'testbench' => 0,
    'tmpDir' => '/home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen',
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
    'version' => '11.4',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '330.000000 ns',
    'write_port_labels_on_update' => 1.0,
    'xilinx' => '/opt/Xilinx/11.1/ISE',
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
  use SgGenerateCores;
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_8e7b9e3e5e7c443c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '82fb52b0e3c04b72b538b529d4ff9bd4',
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
      'core_name0' => 'cntr_11_0_8e7b9e3e5e7c443c',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_2d2eeeb828b94e80',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '704f3a27457bad9caa96b2ce0e662e58',
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
      'core_name0' => 'bmg_33_2d2eeeb828b94e80',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7278cc6d2681503b42f7a4b4201bd1f5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((18 - 1) downto 0);
  signal output_port_5_5_force: signed((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_9a0fa0f632',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '33adbfb65a90cdbe6098b1dfd0fd57e4',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ca26a55c5e42f79c0abc5c8ce13771f4',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c13cea3d9aafc0f9ca120661b1e0ced5',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldsp48e.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8326bebda559fc7371fc1161e70046df',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((30 - 1) downto 0);
  signal output_port_5_5_force: signed((30 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((30 - 1) downto 0);
    output_port : out std_logic_vector((30 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_eb03bc3377',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1fbb8dfefb01491bd9ea8a54c58a4ff9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((48 - 1) downto 0);
  signal output_port_5_5_force: signed((48 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((48 - 1) downto 0);
    output_port : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_7ea107432a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '084ff312b15f778e300f4bfd133f8703',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c5e9ed7e279391997b1f0d5178660185',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '908c27b641ca752b17d493067e198c76',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4c449dd556',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '26c90b101ce1ca8b2f28c242a8215ef7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_963ed6358a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd8fe814692903faea56ecec2003964cb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_822933f89b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '976c9066ca73160941a1cfb8ea441143',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '116079b41ffb2b4983a6f837b544f828',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((24 - 1) downto 0);
  signal y_2_1_concat: unsigned((48 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((24 - 1) downto 0);
    y : out std_logic_vector((48 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_b57c4be2de',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2b373105557d39549f92ec8b878d467b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0110011";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_270746ab47',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c70032e21bce6209ba6644ef30722215',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '985e9d76d6ae3c271b8459f1fce995ff',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((24 - 1) downto 0);
  signal output_port_5_5_force: unsigned((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_3fb4604c01',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2530f8df112851d515ce162394e0a81b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((24 - 1) downto 0);
  signal output_port_5_5_force: signed((24 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((24 - 1) downto 0);
    output_port : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4bf1ad328a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5ad96062dcdf888dcaf96572a7785958',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c2cf3f08cd2c4ab1409344b9864aa2a6',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4200b6e5902c60514d88b8f48094bfa0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0011";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_8038205d89',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed9057cdda22f0e298eb638800508a9c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((18 - 1) downto 0);
  signal in1_1_27: unsigned((18 - 1) downto 0);
  signal y_2_1_concat: unsigned((36 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((18 - 1) downto 0);
    in1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_b198bd62b0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6c5ae4ed7a90830b07c3ff2596ce4fc5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((18 - 1) downto 0);
  signal output_port_5_5_force: unsigned((18 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((18 - 1) downto 0);
    output_port : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_580feec131',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b07416ed14b82916322d74c128ccdda8',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1899a3cb359c4a6df2e0f1f184ab3d7c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((19 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_9f61027ba4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '87db02da4ee7458d54981f1ed73c40a9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_18_25: signed((18 - 1) downto 0);
  type array_type_op_mem_42_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_42_20: array_type_op_mem_42_20 := (
    0 => "000000000000000000");
  signal op_mem_42_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_42_20_back: signed((18 - 1) downto 0);
  signal op_mem_42_20_push_front_pop_back_en: std_logic;
  signal cast_30_16: signed((19 - 1) downto 0);
  signal internal_ip_30_1_neg: signed((19 - 1) downto 0);
  signal cast_internal_ip_34_3_convert: signed((18 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_42_20_back <= op_mem_42_20(0);
  proc_op_mem_42_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_42_20_push_front_pop_back_en = \'1\')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 17, 19, 17);
  internal_ip_30_1_neg <=  -cast_30_16;
  cast_internal_ip_34_3_convert <= s2s_cast(internal_ip_30_1_neg, 17, 18, 17);
  op_mem_42_20_front_din <= cast_internal_ip_34_3_convert;
  op_mem_42_20_push_front_pop_back_en <= \'1\';
  op <= signed_to_std_logic_vector(op_mem_42_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'negate_8aef4892f6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1d5ca5c1666637ec3a114b65dc6c4cfb',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '66b549abead4ab5509046254029d7863',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_0604807f72',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
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
    'CSET component_name = cntr_11_0_b0b0893123e728ad',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed821994590ee5dc4e930f97788fba86',
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
      'core_name0' => 'cntr_11_0_b0b0893123e728ad',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7e9f56a62ab0ef35009885cef5cf9b6b',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '988fe9a52cd2f695847a8c680715b004',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a0d99d9edaecfca3ace2fc277a2807a9',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cbe636eaa30a08027c9a7e3ee2e2de25',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_fca786f2ff',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '86f44a39ac2566e83703ed44f050a98e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_32_22_push_front_pop_back_en = \'1\')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= \'1\';
  op <= boolean_to_vector(op_mem_32_22_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8434199730',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1b450bcdb005adf8b7f864caef9a0cc1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_118598964d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e771fae83e3ce153cf1c2720e5709fbb',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a3923dd146',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 11',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b1551b128b7cb927',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '1dd89b79e2e01d0d936f16aa55c4e452',
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
      'core_name0' => 'cntr_11_0_b1551b128b7cb927',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
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
    'entity_declaration_hash' => '298203483c3de52896eed04fd75246a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
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
      'entity_name' => 'logical_80f90b97d0',
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
    'entity_declaration_hash' => 'dca08c57a49d58b068e6447a87a53acc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_2147430058',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '77179eb8d1d1c5009f0e60643c384b37',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((11 - 1) downto 0);
  signal b_1_34: unsigned((11 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((11 - 1) downto 0);
    b : in std_logic_vector((11 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_b4b277ae0f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
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
    'CSET component_name = cntr_11_0_b0b0893123e728ad',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6afbbeffa8cfc2d1f8a0ea04f6dbbf2c',
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
      'core_name0' => 'cntr_11_0_b0b0893123e728ad',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a16df67c5246f54629ba207a0ad480c7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((10 - 1) downto 0);
  signal d1_1_27: std_logic_vector((10 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((10 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "0000000000");
  signal pipe_16_22_front_din: std_logic_vector((10 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((10 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((10 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((10 - 1) downto 0);
    d1 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_bdc1db9d7e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7ceef68d9b196820a2d003b487cf9aa0',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '990057902d0747dc88f219907a457f9e',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_55f78a064571c9b0',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bc69330ec140aafd8299118b4be2e40a',
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
      'core_name0' => 'bmg_33_55f78a064571c9b0',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '78f1cf42611d4cad3e2d8eb3993eb745',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((10 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((10 - 1) downto 0);
    q : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_0f6b6badfe',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5a8b458d9ce3730f596e079fdf076667',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '6c31451775cebc20de01016c51ce52dd',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_21355083c1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b0a82bf8060e4049e289693c0929b54d',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex6 Xilinx,_Inc. 4.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 200, 100, 300, 80, 280, 180, 380, 40, 240, 140, 340, C0, 2C0, 1C0, 3C0, 20, 220, 120, 320, A0, 2A0, 1A0, 3A0, 60, 260, 160, 360, E0, 2E0, 1E0, 3E0, 10, 210, 110, 310, 90, 290, 190, 390, 50, 250, 150, 350, D0, 2D0, 1D0, 3D0, 30, 230, 130, 330, B0, 2B0, 1B0, 3B0, 70, 270, 170, 370, F0, 2F0, 1F0, 3F0, 8, 208, 108, 308, 88, 288, 188, 388, 48, 248, 148, 348, C8, 2C8, 1C8, 3C8, 28, 228, 128, 328, A8, 2A8, 1A8, 3A8, 68, 268, 168, 368, E8, 2E8, 1E8, 3E8, 18, 218, 118, 318, 98, 298, 198, 398, 58, 258, 158, 358, D8, 2D8, 1D8, 3D8, 38, 238, 138, 338, B8, 2B8, 1B8, 3B8, 78, 278, 178, 378, F8, 2F8, 1F8, 3F8, 4, 204, 104, 304, 84, 284, 184, 384, 44, 244, 144, 344, C4, 2C4, 1C4, 3C4, 24, 224, 124, 324, A4, 2A4, 1A4, 3A4, 64, 264, 164, 364, E4, 2E4, 1E4, 3E4, 14, 214, 114, 314, 94, 294, 194, 394, 54, 254, 154, 354, D4, 2D4, 1D4, 3D4, 34, 234, 134, 334, B4, 2B4, 1B4, 3B4, 74, 274, 174, 374, F4, 2F4, 1F4, 3F4, C, 20C, 10C, 30C, 8C, 28C, 18C, 38C, 4C, 24C, 14C, 34C, CC, 2CC, 1CC, 3CC, 2C, 22C, 12C, 32C, AC, 2AC, 1AC, 3AC, 6C, 26C, 16C, 36C, EC, 2EC, 1EC, 3EC, 1C, 21C, 11C, 31C, 9C, 29C, 19C, 39C, 5C, 25C, 15C, 35C, DC, 2DC, 1DC, 3DC, 3C, 23C, 13C, 33C, BC, 2BC, 1BC, 3BC, 7C, 27C, 17C, 37C, FC, 2FC, 1FC, 3FC, 2, 202, 102, 302, 82, 282, 182, 382, 42, 242, 142, 342, C2, 2C2, 1C2, 3C2, 22, 222, 122, 322, A2, 2A2, 1A2, 3A2, 62, 262, 162, 362, E2, 2E2, 1E2, 3E2, 12, 212, 112, 312, 92, 292, 192, 392, 52, 252, 152, 352, D2, 2D2, 1D2, 3D2, 32, 232, 132, 332, B2, 2B2, 1B2, 3B2, 72, 272, 172, 372, F2, 2F2, 1F2, 3F2, A, 20A, 10A, 30A, 8A, 28A, 18A, 38A, 4A, 24A, 14A, 34A, CA, 2CA, 1CA, 3CA, 2A, 22A, 12A, 32A, AA, 2AA, 1AA, 3AA, 6A, 26A, 16A, 36A, EA, 2EA, 1EA, 3EA, 1A, 21A, 11A, 31A, 9A, 29A, 19A, 39A, 5A, 25A, 15A, 35A, DA, 2DA, 1DA, 3DA, 3A, 23A, 13A, 33A, BA, 2BA, 1BA, 3BA, 7A, 27A, 17A, 37A, FA, 2FA, 1FA, 3FA, 6, 206, 106, 306, 86, 286, 186, 386, 46, 246, 146, 346, C6, 2C6, 1C6, 3C6, 26, 226, 126, 326, A6, 2A6, 1A6, 3A6, 66, 266, 166, 366, E6, 2E6, 1E6, 3E6, 16, 216, 116, 316, 96, 296, 196, 396, 56, 256, 156, 356, D6, 2D6, 1D6, 3D6, 36, 236, 136, 336, B6, 2B6, 1B6, 3B6, 76, 276, 176, 376, F6, 2F6, 1F6, 3F6, E, 20E, 10E, 30E, 8E, 28E, 18E, 38E, 4E, 24E, 14E, 34E, CE, 2CE, 1CE, 3CE, 2E, 22E, 12E, 32E, AE, 2AE, 1AE, 3AE, 6E, 26E, 16E, 36E, EE, 2EE, 1EE, 3EE, 1E, 21E, 11E, 31E, 9E, 29E, 19E, 39E, 5E, 25E, 15E, 35E, DE, 2DE, 1DE, 3DE, 3E, 23E, 13E, 33E, BE, 2BE, 1BE, 3BE, 7E, 27E, 17E, 37E, FE, 2FE, 1FE, 3FE, 1, 201, 101, 301, 81, 281, 181, 381, 41, 241, 141, 341, C1, 2C1, 1C1, 3C1, 21, 221, 121, 321, A1, 2A1, 1A1, 3A1, 61, 261, 161, 361, E1, 2E1, 1E1, 3E1, 11, 211, 111, 311, 91, 291, 191, 391, 51, 251, 151, 351, D1, 2D1, 1D1, 3D1, 31, 231, 131, 331, B1, 2B1, 1B1, 3B1, 71, 271, 171, 371, F1, 2F1, 1F1, 3F1, 9, 209, 109, 309, 89, 289, 189, 389, 49, 249, 149, 349, C9, 2C9, 1C9, 3C9, 29, 229, 129, 329, A9, 2A9, 1A9, 3A9, 69, 269, 169, 369, E9, 2E9, 1E9, 3E9, 19, 219, 119, 319, 99, 299, 199, 399, 59, 259, 159, 359, D9, 2D9, 1D9, 3D9, 39, 239, 139, 339, B9, 2B9, 1B9, 3B9, 79, 279, 179, 379, F9, 2F9, 1F9, 3F9, 5, 205, 105, 305, 85, 285, 185, 385, 45, 245, 145, 345, C5, 2C5, 1C5, 3C5, 25, 225, 125, 325, A5, 2A5, 1A5, 3A5, 65, 265, 165, 365, E5, 2E5, 1E5, 3E5, 15, 215, 115, 315, 95, 295, 195, 395, 55, 255, 155, 355, D5, 2D5, 1D5, 3D5, 35, 235, 135, 335, B5, 2B5, 1B5, 3B5, 75, 275, 175, 375, F5, 2F5, 1F5, 3F5, D, 20D, 10D, 30D, 8D, 28D, 18D, 38D, 4D, 24D, 14D, 34D, CD, 2CD, 1CD, 3CD, 2D, 22D, 12D, 32D, AD, 2AD, 1AD, 3AD, 6D, 26D, 16D, 36D, ED, 2ED, 1ED, 3ED, 1D, 21D, 11D, 31D, 9D, 29D, 19D, 39D, 5D, 25D, 15D, 35D, DD, 2DD, 1DD, 3DD, 3D, 23D, 13D, 33D, BD, 2BD, 1BD, 3BD, 7D, 27D, 17D, 37D, FD, 2FD, 1FD, 3FD, 3, 203, 103, 303, 83, 283, 183, 383, 43, 243, 143, 343, C3, 2C3, 1C3, 3C3, 23, 223, 123, 323, A3, 2A3, 1A3, 3A3, 63, 263, 163, 363, E3, 2E3, 1E3, 3E3, 13, 213, 113, 313, 93, 293, 193, 393, 53, 253, 153, 353, D3, 2D3, 1D3, 3D3, 33, 233, 133, 333, B3, 2B3, 1B3, 3B3, 73, 273, 173, 373, F3, 2F3, 1F3, 3F3, B, 20B, 10B, 30B, 8B, 28B, 18B, 38B, 4B, 24B, 14B, 34B, CB, 2CB, 1CB, 3CB, 2B, 22B, 12B, 32B, AB, 2AB, 1AB, 3AB, 6B, 26B, 16B, 36B, EB, 2EB, 1EB, 3EB, 1B, 21B, 11B, 31B, 9B, 29B, 19B, 39B, 5B, 25B, 15B, 35B, DB, 2DB, 1DB, 3DB, 3B, 23B, 13B, 33B, BB, 2BB, 1BB, 3BB, 7B, 27B, 17B, 37B, FB, 2FB, 1FB, 3FB, 7, 207, 107, 307, 87, 287, 187, 387, 47, 247, 147, 347, C7, 2C7, 1C7, 3C7, 27, 227, 127, 327, A7, 2A7, 1A7, 3A7, 67, 267, 167, 367, E7, 2E7, 1E7, 3E7, 17, 217, 117, 317, 97, 297, 197, 397, 57, 257, 157, 357, D7, 2D7, 1D7, 3D7, 37, 237, 137, 337, B7, 2B7, 1B7, 3B7, 77, 277, 177, 377, F7, 2F7, 1F7, 3F7, F, 20F, 10F, 30F, 8F, 28F, 18F, 38F, 4F, 24F, 14F, 34F, CF, 2CF, 1CF, 3CF, 2F, 22F, 12F, 32F, AF, 2AF, 1AF, 3AF, 6F, 26F, 16F, 36F, EF, 2EF, 1EF, 3EF, 1F, 21F, 11F, 31F, 9F, 29F, 19F, 39F, 5F, 25F, 15F, 35F, DF, 2DF, 1DF, 3DF, 3F, 23F, 13F, 33F, BF, 2BF, 1BF, 3BF, 7F, 27F, 17F, 37F, FF, 2FF, 1FF, 3FF;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 10',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 1024',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = non_registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = false',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_0ab1440d274234e9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b46cfd8cec5a7c68d94005c9155a679b',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) ',
      'core_instance_text' => '        a => core_addr,
        spo => core_data_out',
      'core_name0' => 'dmg_43_0ab1440d274234e9',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex6 Xilinx,_Inc. 4.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FF, 1FF, 2FF, FF, 37F, 17F, 27F, 7F, 3BF, 1BF, 2BF, BF, 33F, 13F, 23F, 3F, 3DF, 1DF, 2DF, DF, 35F, 15F, 25F, 5F, 39F, 19F, 29F, 9F, 31F, 11F, 21F, 1F, 3EF, 1EF, 2EF, EF, 36F, 16F, 26F, 6F, 3AF, 1AF, 2AF, AF, 32F, 12F, 22F, 2F, 3CF, 1CF, 2CF, CF, 34F, 14F, 24F, 4F, 38F, 18F, 28F, 8F, 30F, 10F, 20F, F, 3F7, 1F7, 2F7, F7, 377, 177, 277, 77, 3B7, 1B7, 2B7, B7, 337, 137, 237, 37, 3D7, 1D7, 2D7, D7, 357, 157, 257, 57, 397, 197, 297, 97, 317, 117, 217, 17, 3E7, 1E7, 2E7, E7, 367, 167, 267, 67, 3A7, 1A7, 2A7, A7, 327, 127, 227, 27, 3C7, 1C7, 2C7, C7, 347, 147, 247, 47, 387, 187, 287, 87, 307, 107, 207, 7, 3FB, 1FB, 2FB, FB, 37B, 17B, 27B, 7B, 3BB, 1BB, 2BB, BB, 33B, 13B, 23B, 3B, 3DB, 1DB, 2DB, DB, 35B, 15B, 25B, 5B, 39B, 19B, 29B, 9B, 31B, 11B, 21B, 1B, 3EB, 1EB, 2EB, EB, 36B, 16B, 26B, 6B, 3AB, 1AB, 2AB, AB, 32B, 12B, 22B, 2B, 3CB, 1CB, 2CB, CB, 34B, 14B, 24B, 4B, 38B, 18B, 28B, 8B, 30B, 10B, 20B, B, 3F3, 1F3, 2F3, F3, 373, 173, 273, 73, 3B3, 1B3, 2B3, B3, 333, 133, 233, 33, 3D3, 1D3, 2D3, D3, 353, 153, 253, 53, 393, 193, 293, 93, 313, 113, 213, 13, 3E3, 1E3, 2E3, E3, 363, 163, 263, 63, 3A3, 1A3, 2A3, A3, 323, 123, 223, 23, 3C3, 1C3, 2C3, C3, 343, 143, 243, 43, 383, 183, 283, 83, 303, 103, 203, 3, 3FD, 1FD, 2FD, FD, 37D, 17D, 27D, 7D, 3BD, 1BD, 2BD, BD, 33D, 13D, 23D, 3D, 3DD, 1DD, 2DD, DD, 35D, 15D, 25D, 5D, 39D, 19D, 29D, 9D, 31D, 11D, 21D, 1D, 3ED, 1ED, 2ED, ED, 36D, 16D, 26D, 6D, 3AD, 1AD, 2AD, AD, 32D, 12D, 22D, 2D, 3CD, 1CD, 2CD, CD, 34D, 14D, 24D, 4D, 38D, 18D, 28D, 8D, 30D, 10D, 20D, D, 3F5, 1F5, 2F5, F5, 375, 175, 275, 75, 3B5, 1B5, 2B5, B5, 335, 135, 235, 35, 3D5, 1D5, 2D5, D5, 355, 155, 255, 55, 395, 195, 295, 95, 315, 115, 215, 15, 3E5, 1E5, 2E5, E5, 365, 165, 265, 65, 3A5, 1A5, 2A5, A5, 325, 125, 225, 25, 3C5, 1C5, 2C5, C5, 345, 145, 245, 45, 385, 185, 285, 85, 305, 105, 205, 5, 3F9, 1F9, 2F9, F9, 379, 179, 279, 79, 3B9, 1B9, 2B9, B9, 339, 139, 239, 39, 3D9, 1D9, 2D9, D9, 359, 159, 259, 59, 399, 199, 299, 99, 319, 119, 219, 19, 3E9, 1E9, 2E9, E9, 369, 169, 269, 69, 3A9, 1A9, 2A9, A9, 329, 129, 229, 29, 3C9, 1C9, 2C9, C9, 349, 149, 249, 49, 389, 189, 289, 89, 309, 109, 209, 9, 3F1, 1F1, 2F1, F1, 371, 171, 271, 71, 3B1, 1B1, 2B1, B1, 331, 131, 231, 31, 3D1, 1D1, 2D1, D1, 351, 151, 251, 51, 391, 191, 291, 91, 311, 111, 211, 11, 3E1, 1E1, 2E1, E1, 361, 161, 261, 61, 3A1, 1A1, 2A1, A1, 321, 121, 221, 21, 3C1, 1C1, 2C1, C1, 341, 141, 241, 41, 381, 181, 281, 81, 301, 101, 201, 1, 3FE, 1FE, 2FE, FE, 37E, 17E, 27E, 7E, 3BE, 1BE, 2BE, BE, 33E, 13E, 23E, 3E, 3DE, 1DE, 2DE, DE, 35E, 15E, 25E, 5E, 39E, 19E, 29E, 9E, 31E, 11E, 21E, 1E, 3EE, 1EE, 2EE, EE, 36E, 16E, 26E, 6E, 3AE, 1AE, 2AE, AE, 32E, 12E, 22E, 2E, 3CE, 1CE, 2CE, CE, 34E, 14E, 24E, 4E, 38E, 18E, 28E, 8E, 30E, 10E, 20E, E, 3F6, 1F6, 2F6, F6, 376, 176, 276, 76, 3B6, 1B6, 2B6, B6, 336, 136, 236, 36, 3D6, 1D6, 2D6, D6, 356, 156, 256, 56, 396, 196, 296, 96, 316, 116, 216, 16, 3E6, 1E6, 2E6, E6, 366, 166, 266, 66, 3A6, 1A6, 2A6, A6, 326, 126, 226, 26, 3C6, 1C6, 2C6, C6, 346, 146, 246, 46, 386, 186, 286, 86, 306, 106, 206, 6, 3FA, 1FA, 2FA, FA, 37A, 17A, 27A, 7A, 3BA, 1BA, 2BA, BA, 33A, 13A, 23A, 3A, 3DA, 1DA, 2DA, DA, 35A, 15A, 25A, 5A, 39A, 19A, 29A, 9A, 31A, 11A, 21A, 1A, 3EA, 1EA, 2EA, EA, 36A, 16A, 26A, 6A, 3AA, 1AA, 2AA, AA, 32A, 12A, 22A, 2A, 3CA, 1CA, 2CA, CA, 34A, 14A, 24A, 4A, 38A, 18A, 28A, 8A, 30A, 10A, 20A, A, 3F2, 1F2, 2F2, F2, 372, 172, 272, 72, 3B2, 1B2, 2B2, B2, 332, 132, 232, 32, 3D2, 1D2, 2D2, D2, 352, 152, 252, 52, 392, 192, 292, 92, 312, 112, 212, 12, 3E2, 1E2, 2E2, E2, 362, 162, 262, 62, 3A2, 1A2, 2A2, A2, 322, 122, 222, 22, 3C2, 1C2, 2C2, C2, 342, 142, 242, 42, 382, 182, 282, 82, 302, 102, 202, 2, 3FC, 1FC, 2FC, FC, 37C, 17C, 27C, 7C, 3BC, 1BC, 2BC, BC, 33C, 13C, 23C, 3C, 3DC, 1DC, 2DC, DC, 35C, 15C, 25C, 5C, 39C, 19C, 29C, 9C, 31C, 11C, 21C, 1C, 3EC, 1EC, 2EC, EC, 36C, 16C, 26C, 6C, 3AC, 1AC, 2AC, AC, 32C, 12C, 22C, 2C, 3CC, 1CC, 2CC, CC, 34C, 14C, 24C, 4C, 38C, 18C, 28C, 8C, 30C, 10C, 20C, C, 3F4, 1F4, 2F4, F4, 374, 174, 274, 74, 3B4, 1B4, 2B4, B4, 334, 134, 234, 34, 3D4, 1D4, 2D4, D4, 354, 154, 254, 54, 394, 194, 294, 94, 314, 114, 214, 14, 3E4, 1E4, 2E4, E4, 364, 164, 264, 64, 3A4, 1A4, 2A4, A4, 324, 124, 224, 24, 3C4, 1C4, 2C4, C4, 344, 144, 244, 44, 384, 184, 284, 84, 304, 104, 204, 4, 3F8, 1F8, 2F8, F8, 378, 178, 278, 78, 3B8, 1B8, 2B8, B8, 338, 138, 238, 38, 3D8, 1D8, 2D8, D8, 358, 158, 258, 58, 398, 198, 298, 98, 318, 118, 218, 18, 3E8, 1E8, 2E8, E8, 368, 168, 268, 68, 3A8, 1A8, 2A8, A8, 328, 128, 228, 28, 3C8, 1C8, 2C8, C8, 348, 148, 248, 48, 388, 188, 288, 88, 308, 108, 208, 8, 3F0, 1F0, 2F0, F0, 370, 170, 270, 70, 3B0, 1B0, 2B0, B0, 330, 130, 230, 30, 3D0, 1D0, 2D0, D0, 350, 150, 250, 50, 390, 190, 290, 90, 310, 110, 210, 10, 3E0, 1E0, 2E0, E0, 360, 160, 260, 60, 3A0, 1A0, 2A0, A0, 320, 120, 220, 20, 3C0, 1C0, 2C0, C0, 340, 140, 240, 40, 380, 180, 280, 80, 300, 100, 200, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 10',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 1024',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = non_registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = false',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_4c2af906a9fb6bfd',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fda6a3f3379493483adc442019f1a17e',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) ',
      'core_instance_text' => '        a => core_addr,
        spo => core_data_out',
      'core_name0' => 'dmg_43_4c2af906a9fb6bfd',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex6 Xilinx,_Inc. 4.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 3FF, 3FE, 3FD, 3FC, 3FB, 3FA, 3F9, 3F8, 3F7, 3F6, 3F5, 3F4, 3F3, 3F2, 3F1, 3F0, 3EF, 3EE, 3ED, 3EC, 3EB, 3EA, 3E9, 3E8, 3E7, 3E6, 3E5, 3E4, 3E3, 3E2, 3E1, 3E0, 3DF, 3DE, 3DD, 3DC, 3DB, 3DA, 3D9, 3D8, 3D7, 3D6, 3D5, 3D4, 3D3, 3D2, 3D1, 3D0, 3CF, 3CE, 3CD, 3CC, 3CB, 3CA, 3C9, 3C8, 3C7, 3C6, 3C5, 3C4, 3C3, 3C2, 3C1, 3C0, 3BF, 3BE, 3BD, 3BC, 3BB, 3BA, 3B9, 3B8, 3B7, 3B6, 3B5, 3B4, 3B3, 3B2, 3B1, 3B0, 3AF, 3AE, 3AD, 3AC, 3AB, 3AA, 3A9, 3A8, 3A7, 3A6, 3A5, 3A4, 3A3, 3A2, 3A1, 3A0, 39F, 39E, 39D, 39C, 39B, 39A, 399, 398, 397, 396, 395, 394, 393, 392, 391, 390, 38F, 38E, 38D, 38C, 38B, 38A, 389, 388, 387, 386, 385, 384, 383, 382, 381, 380, 37F, 37E, 37D, 37C, 37B, 37A, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 36F, 36E, 36D, 36C, 36B, 36A, 369, 368, 367, 366, 365, 364, 363, 362, 361, 360, 35F, 35E, 35D, 35C, 35B, 35A, 359, 358, 357, 356, 355, 354, 353, 352, 351, 350, 34F, 34E, 34D, 34C, 34B, 34A, 349, 348, 347, 346, 345, 344, 343, 342, 341, 340, 33F, 33E, 33D, 33C, 33B, 33A, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 32F, 32E, 32D, 32C, 32B, 32A, 329, 328, 327, 326, 325, 324, 323, 322, 321, 320, 31F, 31E, 31D, 31C, 31B, 31A, 319, 318, 317, 316, 315, 314, 313, 312, 311, 310, 30F, 30E, 30D, 30C, 30B, 30A, 309, 308, 307, 306, 305, 304, 303, 302, 301, 300, 2FF, 2FE, 2FD, 2FC, 2FB, 2FA, 2F9, 2F8, 2F7, 2F6, 2F5, 2F4, 2F3, 2F2, 2F1, 2F0, 2EF, 2EE, 2ED, 2EC, 2EB, 2EA, 2E9, 2E8, 2E7, 2E6, 2E5, 2E4, 2E3, 2E2, 2E1, 2E0, 2DF, 2DE, 2DD, 2DC, 2DB, 2DA, 2D9, 2D8, 2D7, 2D6, 2D5, 2D4, 2D3, 2D2, 2D1, 2D0, 2CF, 2CE, 2CD, 2CC, 2CB, 2CA, 2C9, 2C8, 2C7, 2C6, 2C5, 2C4, 2C3, 2C2, 2C1, 2C0, 2BF, 2BE, 2BD, 2BC, 2BB, 2BA, 2B9, 2B8, 2B7, 2B6, 2B5, 2B4, 2B3, 2B2, 2B1, 2B0, 2AF, 2AE, 2AD, 2AC, 2AB, 2AA, 2A9, 2A8, 2A7, 2A6, 2A5, 2A4, 2A3, 2A2, 2A1, 2A0, 29F, 29E, 29D, 29C, 29B, 29A, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 28F, 28E, 28D, 28C, 28B, 28A, 289, 288, 287, 286, 285, 284, 283, 282, 281, 280, 27F, 27E, 27D, 27C, 27B, 27A, 279, 278, 277, 276, 275, 274, 273, 272, 271, 270, 26F, 26E, 26D, 26C, 26B, 26A, 269, 268, 267, 266, 265, 264, 263, 262, 261, 260, 25F, 25E, 25D, 25C, 25B, 25A, 259, 258, 257, 256, 255, 254, 253, 252, 251, 250, 24F, 24E, 24D, 24C, 24B, 24A, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 23F, 23E, 23D, 23C, 23B, 23A, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 22F, 22E, 22D, 22C, 22B, 22A, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 21F, 21E, 21D, 21C, 21B, 21A, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 20F, 20E, 20D, 20C, 20B, 20A, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 1FF, 1FE, 1FD, 1FC, 1FB, 1FA, 1F9, 1F8, 1F7, 1F6, 1F5, 1F4, 1F3, 1F2, 1F1, 1F0, 1EF, 1EE, 1ED, 1EC, 1EB, 1EA, 1E9, 1E8, 1E7, 1E6, 1E5, 1E4, 1E3, 1E2, 1E1, 1E0, 1DF, 1DE, 1DD, 1DC, 1DB, 1DA, 1D9, 1D8, 1D7, 1D6, 1D5, 1D4, 1D3, 1D2, 1D1, 1D0, 1CF, 1CE, 1CD, 1CC, 1CB, 1CA, 1C9, 1C8, 1C7, 1C6, 1C5, 1C4, 1C3, 1C2, 1C1, 1C0, 1BF, 1BE, 1BD, 1BC, 1BB, 1BA, 1B9, 1B8, 1B7, 1B6, 1B5, 1B4, 1B3, 1B2, 1B1, 1B0, 1AF, 1AE, 1AD, 1AC, 1AB, 1AA, 1A9, 1A8, 1A7, 1A6, 1A5, 1A4, 1A3, 1A2, 1A1, 1A0, 19F, 19E, 19D, 19C, 19B, 19A, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 18F, 18E, 18D, 18C, 18B, 18A, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 17F, 17E, 17D, 17C, 17B, 17A, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 16F, 16E, 16D, 16C, 16B, 16A, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 15F, 15E, 15D, 15C, 15B, 15A, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 14F, 14E, 14D, 14C, 14B, 14A, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 13F, 13E, 13D, 13C, 13B, 13A, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 12F, 12E, 12D, 12C, 12B, 12A, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 11F, 11E, 11D, 11C, 11B, 11A, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 10F, 10E, 10D, 10C, 10B, 10A, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, FF, FE, FD, FC, FB, FA, F9, F8, F7, F6, F5, F4, F3, F2, F1, F0, EF, EE, ED, EC, EB, EA, E9, E8, E7, E6, E5, E4, E3, E2, E1, E0, DF, DE, DD, DC, DB, DA, D9, D8, D7, D6, D5, D4, D3, D2, D1, D0, CF, CE, CD, CC, CB, CA, C9, C8, C7, C6, C5, C4, C3, C2, C1, C0, BF, BE, BD, BC, BB, BA, B9, B8, B7, B6, B5, B4, B3, B2, B1, B0, AF, AE, AD, AC, AB, AA, A9, A8, A7, A6, A5, A4, A3, A2, A1, A0, 9F, 9E, 9D, 9C, 9B, 9A, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 8F, 8E, 8D, 8C, 8B, 8A, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 7F, 7E, 7D, 7C, 7B, 7A, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 6F, 6E, 6D, 6C, 6B, 6A, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 5F, 5E, 5D, 5C, 5B, 5A, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 4F, 4E, 4D, 4C, 4B, 4A, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 3F, 3E, 3D, 3C, 3B, 3A, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 2F, 2E, 2D, 2C, 2B, 2A, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 1F, 1E, 1D, 1C, 1B, 1A, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, F, E, D, C, B, A, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 10',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 1024',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = non_registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = false',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_6295a3007e518f01',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6b72be848c5107b98f7f3a15c0eb0f50',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      spo: out std_logic_vector(c_width - 1 downto 0) ',
      'core_instance_text' => '        a => core_addr,
        spo => core_data_out',
      'core_name0' => 'dmg_43_6295a3007e518f01',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4eaf6605e3198e7be512c2b62f632730',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000000101";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_cb1e8db34a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0eafc5fa0594c07770a182e9313744b7',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2a8633577a78df311f9cfcf63c3b3491',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9233aa5aafccb6c4ad0c1bd10424ca1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((20 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((21 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((20 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_c615d93998',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bf47f6226af7dc204120ae835177b53d',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: signed((20 - 1) downto 0);
  signal output_port_5_5_force: unsigned((20 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((20 - 1) downto 0);
    output_port : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_4a8cbc85ce',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '050aacbcda6b8e0541b6faa58bad7818',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((21 - 1) downto 0);
  signal b_17_35: unsigned((19 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "000000000000000000",
    "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
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
  signal cast_69_18: signed((22 - 1) downto 0);
  signal cast_69_22: signed((22 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((22 - 1) downto 0);
  signal internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_69_18 <= s2s_cast(a_17_32, 19, 22, 19);
  cast_69_22 <= u2s_cast(b_17_35, 19, 22, 19);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  internal_s_83_3_convert <= std_logic_vector_to_signed(convert_type(signed_to_std_logic_vector(internal_s_69_5_addsub), 22, 19, xlSigned, 18, 17, xlSigned, xlTruncate, xlSaturate));
  op_mem_91_20_front_din <= internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((21 - 1) downto 0);
    b : in std_logic_vector((19 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_1d1efe3b71',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e5ef021c199111e8c4536f3ac1de1ef',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4709ea49b5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '0fd524c4d1c4bd6af64aacdebabaaa67',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '56e3e19ccb2ee936cc3aae545e8799ac',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
  signal output_port_5_5_force: signed((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d357e69fa3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6531fc5dc936d23c947bd517d32fa9f2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((19 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((19 - 1) downto 0);
    output_port : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_d2180c9169',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c867e3badbcaed2eda704ffcaf4412f9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  fully_2_1_bit <= d0_1_24 xor d1_1_27;
  y <= fully_2_1_bit;
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
      'entity_name' => 'logical_9d76333483',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1f38d2ba7d9f31c47ce4aad688ef84b6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (2 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    \'0\',
    \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal bit_2_27: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(1);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          latency_pipe_5_26(i) <= latency_pipe_5_26(i-1);
        end loop;
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
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
      'entity_name' => 'logical_89dc141487',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b32a0080f8f47e0be7ec44c6ad81b20b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
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
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e5b38cca3b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dce87103e8ecfba1424aff436e21195c',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'de4543ef2796aec3076335969ebf2eb6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_a6d07705dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ec0814da6cf9de952ea660722875ef4c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((19 - 1) downto 0);
  signal d1_1_27: std_logic_vector((19 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "00000000000000000000",
    "00000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((20 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((20 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
        unregy_join_6_1 <= cast(d0_1_24, 17, 20, 18, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 18, 20, 18, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((19 - 1) downto 0);
    d1 : in std_logic_vector((19 - 1) downto 0);
    y : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_28159dbdb9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'df8df4d1bf74bb8548239b25fe330204',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (6 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\',
    \'0\',
    \'0\',
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(5);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 5 downto 1 loop 
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
      'entity_name' => 'delay_aab7b18c27',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '50e00086a424689f23ac2c4d38472363',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => \'0\');
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
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
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
      'entity_name' => 'logical_444d3f5046',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cb840e412e429ef1dc4193d23739cbd7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((36 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_4bb6f691f7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ede427d75f42676b6c22c887049a1461',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '1b6c4488bb35f68f6dd75188d742a535',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ab675c657b1e2e2d27399261dd47817b',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0e3b83010728653d55bd4bd84e7c7024',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '15f46eb664aed2a3fbf76ad9d7fecff4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal in0_1_23: unsigned((24 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((25 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end',
      'crippled_entity' => 'is
  port (
    in0 : in std_logic_vector((24 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'concat_f133931c1f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fe96b96bf9fcc8a84fd2b85102c4ed88',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((25 - 1) downto 0);
  signal b_17_35: unsigned((21 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "000000000000000000",
    "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
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
  signal cast_69_18: signed((26 - 1) downto 0);
  signal cast_69_22: signed((26 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((26 - 1) downto 0);
  signal internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
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
  cast_69_18 <= s2s_cast(a_17_32, 21, 26, 21);
  cast_69_22 <= u2s_cast(b_17_35, 21, 26, 21);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  internal_s_83_3_convert <= std_logic_vector_to_signed(convert_type(signed_to_std_logic_vector(internal_s_69_5_addsub), 26, 21, xlSigned, 18, 17, xlSigned, xlTruncate, xlSaturate));
  op_mem_91_20_front_din <= internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((21 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_345b760935',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'affa79c5d22a480ab845ce71f11104b2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000000000000111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_9a2c97cce5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd625d3403370ac738b7096f6f132d750',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '12d27a02cda9786477d78546fd1a1f46',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((25 - 1) downto 0);
  signal output_port_5_5_force: signed((25 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((25 - 1) downto 0);
    output_port : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_60ea556961',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f2032764d891b4918eda4a6785bbac08',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((21 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((21 - 1) downto 0);
    output_port : out std_logic_vector((21 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_299ca43e25',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '769b8eed6214ff16528ba5e54e73fc37',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal d3_1_33: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (2 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    \'0\',
    \'0\');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal bit_2_27: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  d3_1_33 <= d3(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(1);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (latency_pipe_5_26_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
          latency_pipe_5_26(i) <= latency_pipe_5_26(i-1);
        end loop;
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  bit_2_27 <= d0_1_24 and d1_1_27 and d2_1_30 and d3_1_33;
  fully_2_1_bitnot <= not bit_2_27;
  latency_pipe_5_26_front_din <= fully_2_1_bitnot;
  latency_pipe_5_26_push_front_pop_back_en <= \'1\';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_f5b5b4645f',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9909ff350f2d73a9ce45473ded064ad7',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '903998681f5efcf126e6825d62e552f2',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e7504419d154e53a32ee423aec962e59',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_8e7b9e3e5e7c443c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd5473e9887050de602d7fd825e8184ab',
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
      'core_name0' => 'cntr_11_0_8e7b9e3e5e7c443c',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014, FFFB, 3FCDC, B2C9, 348C6, EB4B, 39B23, 5F0F, 3124D, FA73, 3CAFB, 8B9A, 3296A, D318, 36F2C, 2EDC, 30453, FE71, 3E3C8, 9FF7, 33822, E046, 38490, 474D, 30A21, F40C, 3B2B0, 75E6, 31CC4, C3E2, 35B2E, 15F7, 300F2, FF85, 3F04D, A994, 34039, E610, 38FB7, 5348, 30DED, F78C, 3BEC1, 80E8, 322D3, CBBC, 364FD, 2274, 30254, FCC0, 3D755, 95F7, 33086, D9F2, 379B4, 3B27, 306ED, EFF5, 3A6CE, 6A9B, 31741, BB8F, 351C4, 96C, 3002C, FFD4, 3F694, AE3C, 34471, E8BF, 39565, 5932, 3100B, F913, 3C4D9, 864C, 3260E, CF7A, 36A09, 28AB, 30340, FDAC, 3DD8C, 9B03, 33444, DD2D, 37F18, 413F, 30874, F213, 3ACB8, 7049, 319F0, BFC7, 3566C, FB3, 3007B, FF0E, 3EA09, A4D2, 33C1E, E33C, 38A1A, 4D50, 30BF4, F5DF, 3B8B3, 7B70, 31FBA, C7DE, 36009, 1C38, 3018F, FBAD, 3D124, 90D4, 32CE8, D696, 37466, 3505, 3058D, EDB3, 3A0F1, 64DD, 314B5, B73A, 34D37, 324, 30005, FFFF, 3FE6E, B3E8, 349E0, EBE8, 39C95, 6084, 312E4, FAC5, 3CC84, 8CEB, 32A46, D3FB, 37078, 3067, 3049E, FE9C, 3E558, A130, 3391E, E107, 385F0, 48CF, 30A92, F484, 3B42F, 774A, 31D7E, C4E4, 35C62, 1787, 30115, FF9C, 3F1DF, AAC1, 34144, E6BF, 39121, 54C3, 30E71, F7F1, 3C046, 8243, 3239E, CCAE, 3663E, 2402, 3028C, FCFE, 3D8E2, 973C, 33172, DAC4, 37B0B, 3CAE, 3074C, F080, 3A847, 6C08, 317E9, BCA0, 352EC, AFE, 3003C, FFE1, 3F826, AF62, 34583, E966, 396D3, 5AAA, 31098, F96E, 3C661, 87A1, 326E2, D065, 36B50, 2A38, 30381, FDE1, 3DF1B, 9C42, 33539, DDF7, 38074, 42C3, 308DC, F295, 3AE35, 71B2, 31AA2, C0D1, 3579A, 1144, 30095, FF30, 3EB9A, A605, 33D22, E3F4, 38B80, 4ECF, 30C6F, F64E, 3BA35, 7CD0, 3207D, C8D9, 36144, 1DC7, 301BD, FBF5, 3D2B0, 921F, 32DCC, D770, 375B7, 368E, 305E1, EE47, 3A267, 664E, 31555, B852, 34E58, 4B6, 3000B, FFF5, 3FB4A, B1A8, 347AE, EAAB, 399B2, 5D99, 311B9, FA1F, 3C972, 8A49, 32890, D234, 36DE1, 2D50, 3040B, FE43, 3E239, 9EBC, 33727, DF83, 38330, 45CB, 309B2, F391, 3B131, 7480, 31C0C, C2DE, 359FB, 1466, 300D0, FF6B, 3EEBC, A866, 33F2F, E55E, 38E4E, 51CB, 30D6B, F724, 3BD3D, 7F8C, 32209, CAC7, 363BE, 20E5, 3021F, FC7F, 3D5C8, 94B0, 32F9B, D91E, 3785F, 399F, 30692, EF68, 3A556, 692D, 3169A, BA7D, 3509E, 7DA, 3001F, FFC4, 3F502, AD14, 34360, E817, 393F8, 57B9, 30F80, F8B4, 3C352, 84F5, 3253C, CE8E, 368C4, 271E, 30302, FD74, 3DBFE, 99C2, 33352, DC62, 37DBD, 3FBA, 3080F, F18F, 3AB3D, 6EDF, 31941, BEBC, 3553F, E21, 30064, FEEB, 3E879, A39E, 33B1C, E282, 388B6, 4BD1, 30B7C, F56E, 3B731, 7A10, 31EF9, C6E2, 35ED0, 1AA8, 30164, FB62, 3CF99, 8F88, 32C05, D5BA, 37315, 337C, 3053B, ED1C, 39F7C, 636B, 31418, B620, 34C18, 192, 30001;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_7cf121805e7572cc',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '435b140d9d490583f70be3f811696900',
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
      'core_name0' => 'bmg_33_7cf121805e7572cc',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8, 3FCDC, 30005, 348C6, 34D37, 39B23, 314B5, 3124D, 3A0F1, 3CAFB, 3058D, 3296A, 37466, 36F2C, 32CE8, 30453, 3D124, 3E3C8, 3018F, 33822, 36009, 38490, 31FBA, 30A21, 3B8B3, 3B2B0, 30BF4, 31CC4, 38A1A, 35B2E, 33C1E, 300F2, 3EA09, 3F04D, 3007B, 34039, 3566C, 38FB7, 319F0, 30DED, 3ACB8, 3BEC1, 30874, 322D3, 37F18, 364FD, 33444, 30254, 3DD8C, 3D755, 30340, 33086, 36A09, 379B4, 3260E, 306ED, 3C4D9, 3A6CE, 3100B, 31741, 39565, 351C4, 34471, 3002C, 3F694, 3F694, 3002C, 34471, 351C4, 39565, 31741, 3100B, 3A6CE, 3C4D9, 306ED, 3260E, 379B4, 36A09, 33086, 30340, 3D755, 3DD8C, 30254, 33444, 364FD, 37F18, 322D3, 30874, 3BEC1, 3ACB8, 30DED, 319F0, 38FB7, 3566C, 34039, 3007B, 3F04D, 3EA09, 300F2, 33C1E, 35B2E, 38A1A, 31CC4, 30BF4, 3B2B0, 3B8B3, 30A21, 31FBA, 38490, 36009, 33822, 3018F, 3E3C8, 3D124, 30453, 32CE8, 36F2C, 37466, 3296A, 3058D, 3CAFB, 3A0F1, 3124D, 314B5, 39B23, 34D37, 348C6, 30005, 3FCDC, 3FE6E, 30001, 349E0, 34C18, 39C95, 31418, 312E4, 39F7C, 3CC84, 3053B, 32A46, 37315, 37078, 32C05, 3049E, 3CF99, 3E558, 30164, 3391E, 35ED0, 385F0, 31EF9, 30A92, 3B731, 3B42F, 30B7C, 31D7E, 388B6, 35C62, 33B1C, 30115, 3E879, 3F1DF, 30064, 34144, 3553F, 39121, 31941, 30E71, 3AB3D, 3C046, 3080F, 3239E, 37DBD, 3663E, 33352, 3028C, 3DBFE, 3D8E2, 30302, 33172, 368C4, 37B0B, 3253C, 3074C, 3C352, 3A847, 30F80, 317E9, 393F8, 352EC, 34360, 3003C, 3F502, 3F826, 3001F, 34583, 3509E, 396D3, 3169A, 31098, 3A556, 3C661, 30692, 326E2, 3785F, 36B50, 32F9B, 30381, 3D5C8, 3DF1B, 3021F, 33539, 363BE, 38074, 32209, 308DC, 3BD3D, 3AE35, 30D6B, 31AA2, 38E4E, 3579A, 33F2F, 30095, 3EEBC, 3EB9A, 300D0, 33D22, 359FB, 38B80, 31C0C, 30C6F, 3B131, 3BA35, 309B2, 3207D, 38330, 36144, 33727, 301BD, 3E239, 3D2B0, 3040B, 32DCC, 36DE1, 375B7, 32890, 305E1, 3C972, 3A267, 311B9, 31555, 399B2, 34E58, 347AE, 3000B, 3FB4A, 3FB4A, 3000B, 347AE, 34E58, 399B2, 31555, 311B9, 3A267, 3C972, 305E1, 32890, 375B7, 36DE1, 32DCC, 3040B, 3D2B0, 3E239, 301BD, 33727, 36144, 38330, 3207D, 309B2, 3BA35, 3B131, 30C6F, 31C0C, 38B80, 359FB, 33D22, 300D0, 3EB9A, 3EEBC, 30095, 33F2F, 3579A, 38E4E, 31AA2, 30D6B, 3AE35, 3BD3D, 308DC, 32209, 38074, 363BE, 33539, 3021F, 3DF1B, 3D5C8, 30381, 32F9B, 36B50, 3785F, 326E2, 30692, 3C661, 3A556, 31098, 3169A, 396D3, 3509E, 34583, 3001F, 3F826, 3F502, 3003C, 34360, 352EC, 393F8, 317E9, 30F80, 3A847, 3C352, 3074C, 3253C, 37B0B, 368C4, 33172, 30302, 3D8E2, 3DBFE, 3028C, 33352, 3663E, 37DBD, 3239E, 3080F, 3C046, 3AB3D, 30E71, 31941, 39121, 3553F, 34144, 30064, 3F1DF, 3E879, 30115, 33B1C, 35C62, 388B6, 31D7E, 30B7C, 3B42F, 3B731, 30A92, 31EF9, 385F0, 35ED0, 3391E, 30164, 3E558, 3CF99, 3049E, 32C05, 37078, 37315, 32A46, 3053B, 3CC84, 39F7C, 312E4, 31418, 39C95, 34C18, 349E0, 30001, 3FE6E;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 512',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_452a0977f97e6048',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '98f45370d715deb364d2e9cd3c5e529f',
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
      'core_name0' => 'bmg_33_452a0977f97e6048',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7d992af879c1119e887badd354298987',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2e4d4add149773173a3ccf3c6edeed30',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((37 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000000000000000000000000",
    "0000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((37 - 1) downto 0);
  signal op_mem_91_20_back: signed((37 - 1) downto 0);
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
  signal cast_71_18: signed((37 - 1) downto 0);
  signal cast_71_22: signed((37 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((37 - 1) downto 0);
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
  cast_71_18 <= s2s_cast(a_17_32, 33, 37, 33);
  cast_71_22 <= s2s_cast(b_17_35, 33, 37, 33);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_front_din <= internal_s_71_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_be8c56327e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8fba0d8284922d9d6611ce50243dc47',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (2 - 1)) of signed((37 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    "0000000000000000000000000000000000000",
    "0000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((37 - 1) downto 0);
  signal op_mem_91_20_back: signed((37 - 1) downto 0);
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
  signal cast_69_18: signed((37 - 1) downto 0);
  signal cast_69_22: signed((37 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((37 - 1) downto 0);
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
  cast_69_18 <= s2s_cast(a_17_32, 33, 37, 33);
  cast_69_22 <= s2s_cast(b_17_35, 33, 37, 33);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= \'1\';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= \'1\';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'addsub_eb2273ac28',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '267ae843baab08098bf5d63d846ba66e',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c23540cb04eb1904df421c18851dff3f',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dd67bf0e579e39ed204bf75c8aeb2ac9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (3 - 1)) of std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((36 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(2);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 2 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_4b00a70dea',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3b2aa2c7245d7cda6dbf59191140f586',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '341ac14d7a1978db3ccee897b50852fe',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_22: signed((18 - 1) downto 0);
  signal b_1_25: signed((18 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((36 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "000000000000000000000000000000000000",
    "000000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((36 - 1) downto 0);
  signal op_mem_65_20_back: signed((36 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((36 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_65_20_push_front_pop_back_en = \'1\')) then
        for i in 1 downto 1 loop 
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
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    p : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mult_f295e5f0f2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6e051d24fcbed1196a0b3f5352ab4a40',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((23 - 1) downto 0);
  signal d1_1_27: std_logic_vector((23 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (2 - 1)) of std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000000000",
    "000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((24 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((24 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(1);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
        unregy_join_6_1 <= cast(d0_1_24, 19, 24, 20, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 20, 24, 20, xlSigned);
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((23 - 1) downto 0);
    d1 : in std_logic_vector((23 - 1) downto 0);
    y : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_f1f44b96f0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dae74d78d89571218d665e6f3713eb8f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_17_23: signed((23 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((23 - 1) downto 0);
    op : out std_logic_vector((23 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'scale_e5d0b4a1ec',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ff08f332b5ca15ab3e82be63ef8750ff',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5257a0eb5f203098dd35d83136a607ea',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "01";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a7e2bb9e12',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1c15e43b2cb0e2493cbb9c38d1c14235',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_cda50df78a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b1f0ae968b381ba6ab9669a6ba2c3226',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e8ddc079e9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 2',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_543058c16dc96a58',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '62b893033a781452e4de43a371b465e1',
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
      'core_name0' => 'cntr_11_0_543058c16dc96a58',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e38df6234de90c5b0953b584276e970',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_5f1eb17108',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5e85df7ec719ce87aaaf17afb6ac7fb4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_f9928864ea',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 2',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_f08089209e1feefd',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7c134d1b01be8919583bcdf2897cf623',
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
      'core_name0' => 'cntr_11_0_f08089209e1feefd',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '001031719365b851395a8f17bf3480a9',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '94e41450ae6555d23a44a43e81434267',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014, FFFB, 3FCDC, B2C9, 348C6, EB4B, 39B23, 5F0F, 3124D, FA73, 3CAFB, 8B9A, 3296A, D318, 36F2C, 2EDC, 30453, FE71, 3E3C8, 9FF7, 33822, E046, 38490, 474D, 30A21, F40C, 3B2B0, 75E6, 31CC4, C3E2, 35B2E, 15F7, 300F2, FF85, 3F04D, A994, 34039, E610, 38FB7, 5348, 30DED, F78C, 3BEC1, 80E8, 322D3, CBBC, 364FD, 2274, 30254, FCC0, 3D755, 95F7, 33086, D9F2, 379B4, 3B27, 306ED, EFF5, 3A6CE, 6A9B, 31741, BB8F, 351C4, 96C, 3002C, FFD4, 3F694, AE3C, 34471, E8BF, 39565, 5932, 3100B, F913, 3C4D9, 864C, 3260E, CF7A, 36A09, 28AB, 30340, FDAC, 3DD8C, 9B03, 33444, DD2D, 37F18, 413F, 30874, F213, 3ACB8, 7049, 319F0, BFC7, 3566C, FB3, 3007B, FF0E, 3EA09, A4D2, 33C1E, E33C, 38A1A, 4D50, 30BF4, F5DF, 3B8B3, 7B70, 31FBA, C7DE, 36009, 1C38, 3018F, FBAD, 3D124, 90D4, 32CE8, D696, 37466, 3505, 3058D, EDB3, 3A0F1, 64DD, 314B5, B73A, 34D37, 324, 30005, FFFF, 3FE6E, B3E8, 349E0, EBE8, 39C95, 6084, 312E4, FAC5, 3CC84, 8CEB, 32A46, D3FB, 37078, 3067, 3049E, FE9C, 3E558, A130, 3391E, E107, 385F0, 48CF, 30A92, F484, 3B42F, 774A, 31D7E, C4E4, 35C62, 1787, 30115, FF9C, 3F1DF, AAC1, 34144, E6BF, 39121, 54C3, 30E71, F7F1, 3C046, 8243, 3239E, CCAE, 3663E, 2402, 3028C, FCFE, 3D8E2, 973C, 33172, DAC4, 37B0B, 3CAE, 3074C, F080, 3A847, 6C08, 317E9, BCA0, 352EC, AFE, 3003C, FFE1, 3F826, AF62, 34583, E966, 396D3, 5AAA, 31098, F96E, 3C661, 87A1, 326E2, D065, 36B50, 2A38, 30381, FDE1, 3DF1B, 9C42, 33539, DDF7, 38074, 42C3, 308DC, F295, 3AE35, 71B2, 31AA2, C0D1, 3579A, 1144, 30095, FF30, 3EB9A, A605, 33D22, E3F4, 38B80, 4ECF, 30C6F, F64E, 3BA35, 7CD0, 3207D, C8D9, 36144, 1DC7, 301BD, FBF5, 3D2B0, 921F, 32DCC, D770, 375B7, 368E, 305E1, EE47, 3A267, 664E, 31555, B852, 34E58, 4B6, 3000B, FFF5, 3FB4A, B1A8, 347AE, EAAB, 399B2, 5D99, 311B9, FA1F, 3C972, 8A49, 32890, D234, 36DE1, 2D50, 3040B, FE43, 3E239, 9EBC, 33727, DF83, 38330, 45CB, 309B2, F391, 3B131, 7480, 31C0C, C2DE, 359FB, 1466, 300D0, FF6B, 3EEBC, A866, 33F2F, E55E, 38E4E, 51CB, 30D6B, F724, 3BD3D, 7F8C, 32209, CAC7, 363BE, 20E5, 3021F, FC7F, 3D5C8, 94B0, 32F9B, D91E, 3785F, 399F, 30692, EF68, 3A556, 692D, 3169A, BA7D, 3509E, 7DA, 3001F, FFC4, 3F502, AD14, 34360, E817, 393F8, 57B9, 30F80, F8B4, 3C352, 84F5, 3253C, CE8E, 368C4, 271E, 30302, FD74, 3DBFE, 99C2, 33352, DC62, 37DBD, 3FBA, 3080F, F18F, 3AB3D, 6EDF, 31941, BEBC, 3553F, E21, 30064, FEEB, 3E879, A39E, 33B1C, E282, 388B6, 4BD1, 30B7C, F56E, 3B731, 7A10, 31EF9, C6E2, 35ED0, 1AA8, 30164, FB62, 3CF99, 8F88, 32C05, D5BA, 37315, 337C, 3053B, ED1C, 39F7C, 636B, 31418, B620, 34C18, 192, 30001, 10000, 3FF37, B477, 34A6D, EC36, 39D4F, 613E, 31330, FAED, 3CD49, 8D93, 32AB5, D46B, 3711F, 312C, 304C4, FEB0, 3E620, A1CC, 3399D, E167, 386A1, 4990, 30ACC, F4BF, 3B4F0, 77FC, 31DDC, C564, 35CFD, 1850, 30128, FFA7, 3F2A7, AB56, 341CA, E716, 391D6, 5581, 30EB4, F823, 3C109, 82F0, 32405, CD27, 366DF, 24C9, 302A8, FD1D, 3D9A9, 97DE, 331E9, DB2C, 37BB7, 3D71, 3077B, F0C5, 3A904, 6CBE, 3183E, BD28, 35380, BC7, 30045, FFE7, 3F8EF, AFF4, 3460D, E9B8, 3978A, 5B66, 310DF, F99B, 3C725, 884C, 3274C, D0D9, 36BF4, 2AFE, 303A3, FDFA, 3DFE2, 9CE1, 335B3, DE5B, 38123, 4385, 30911, F2D5, 3AEF4, 7266, 31AFC, C155, 35832, 120D, 300A3, FF3F, 3EC62, A69E, 33DA4, E450, 38C33, 4F8E, 30CAD, F684, 3BAF7, 7D7F, 320DF, C955, 361E2, 1E8F, 301D5, FC18, 3D376, 92C4, 32E3F, D7DC, 37661, 3753, 3060D, EE90, 3A322, 6706, 315A5, B8DD, 34EE9, 57F, 3000F, FFF8, 3FC13, B239, 3483A, EAFC, 39A6B, 5E54, 31203, FA49, 3CA36, 8AF2, 328FD, D2A6, 36E87, 2E16, 3042F, FE5A, 3E301, 9F5A, 337A4, DFE5, 383E0, 468C, 309EA, F3CF, 3B1F0, 7533, 31C67, C360, 35A94, 152E, 300E1, FF78, 3EF85, A8FD, 33FB4, E5B7, 38F02, 5289, 30DAC, F758, 3BDFF, 803A, 3226E, CB42, 3645D, 21AD, 30239, FCA0, 3D68F, 9554, 33010, D989, 37909, 3A63, 306BF, EFAF, 3A612, 69E4, 316ED, BB06, 35131, 8A3, 30025, FFCC, 3F5CB, ADA8, 343E8, E86B, 394AE, 5875, 30FC5, F8E4, 3C416, 85A0, 325A4, CF04, 36966, 27E4, 30321, FD90, 3DCC5, 9A63, 333CB, DCC8, 37E6B, 407C, 30841, F1D2, 3ABFA, 6F94, 31999, BF42, 355D6, EEA, 3006F, FEFD, 3E941, A438, 33B9D, E2DF, 38968, 4C90, 30BB8, F5A6, 3B7F2, 7AC0, 31F59, C761, 35F6C, 1B70, 30179, FB88, 3D05F, 902E, 32C76, D628, 373BD, 3440, 30564, ED68, 3A037, 6424, 31466, B6AD, 34CA8, 25B, 30003, FFFD, 3FDA5, B358, 34953, EB9A, 39BDC, 5FC9, 31298, FA9C, 3CBC0, 8C43, 329D8, D38A, 36FD2, 2FA1, 30478, FE87, 3E490, A094, 3389F, E0A7, 38540, 480E, 30A5A, F448, 3B370, 7698, 31D21, C463, 35BC8, 16BF, 30103, FF91, 3F116, AA2A, 340BE, E667, 3906C, 5406, 30E2E, F7BF, 3BF84, 8195, 32338, CC35, 3659D, 233B, 30270, FCDF, 3D81C, 969A, 330FC, DA5C, 37A60, 3BEA, 3071C, F03B, 3A78B, 6B52, 31795, BC18, 35258, A35, 30034, FFDB, 3F75D, AECF, 344FA, E913, 3961C, 59EE, 31051, F941, 3C59D, 86F7, 32677, CFF0, 36AAC, 2971, 30360, FDC7, 3DE53, 9BA3, 334BE, DD92, 37FC6, 4201, 308A8, F254, 3AD77, 70FE, 31A49, C04C, 35703, 107B, 30088, FF1F, 3EAD2, A56C, 33CA0, E399, 38ACD, 4E10, 30C31, F616, 3B974, 7C20, 3201B, C85C, 360A6, 1CFF, 301A6, FBD1, 3D1EA, 9179, 32D5A, D703, 3750E, 35CA, 305B7, EDFD, 3A1AC, 6595, 31504, B7C6, 34DC7, 3ED, 30008, FFF1, 3FA81, B117, 34723, EA5B, 398FA, 5CDE, 31170, F9F3, 3C8AD, 899F, 32824, D1C1, 36D3C, 2C8A, 303E8, FE2B, 3E171, 9E1E, 336AB, DF21, 38281, 4509, 3097C, F353, 3B072, 73CD, 31BB0, C25C, 35962, 139E, 300C1, FF5D, 3EDF3, A7CE, 33EAB, E504, 38D9A, 510C, 30D2B, F6EF, 3BC7B, 7EDD, 321A5, CA4D, 3631F, 201E, 30206, FC5D, 3D502, 940C, 32F27, D8B4, 377B4, 38DB, 30665, EF21, 3A49A, 6876, 31648, B9F3, 3500C, 711, 30019, FFBB, 3F439, AC80, 342D8, E7C2, 39342, 56FC, 30F3B, F885, 3C28F, 8449, 324D4, CE17, 36822, 2657, 302E3, FD58, 3DB37, 9921, 332D9, DBFB, 37D10, 3EF7, 307DD, F14C, 3AA7F, 6E2A, 318EA, BE36, 354AA, D59, 30059, FED8, 3E7B0, A303, 33A9C, E224, 38804, 4B10, 30B41, F534, 3B670, 795F, 31E99, C663, 35E34, 19E0, 30150, FB3C, 3CED4, 8EE1, 32B95, D54B, 3726D, 32B7, 30513, ECD0, 39EC2, 62B1, 313CA, B593, 34B89, C9, 30000;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_38a64c7a551bb977',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '74c43d01aa10f812de1e09de886878ec',
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
      'core_name0' => 'bmg_33_38a64c7a551bb977',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8, 3FCDC, 30005, 348C6, 34D37, 39B23, 314B5, 3124D, 3A0F1, 3CAFB, 3058D, 3296A, 37466, 36F2C, 32CE8, 30453, 3D124, 3E3C8, 3018F, 33822, 36009, 38490, 31FBA, 30A21, 3B8B3, 3B2B0, 30BF4, 31CC4, 38A1A, 35B2E, 33C1E, 300F2, 3EA09, 3F04D, 3007B, 34039, 3566C, 38FB7, 319F0, 30DED, 3ACB8, 3BEC1, 30874, 322D3, 37F18, 364FD, 33444, 30254, 3DD8C, 3D755, 30340, 33086, 36A09, 379B4, 3260E, 306ED, 3C4D9, 3A6CE, 3100B, 31741, 39565, 351C4, 34471, 3002C, 3F694, 3F694, 3002C, 34471, 351C4, 39565, 31741, 3100B, 3A6CE, 3C4D9, 306ED, 3260E, 379B4, 36A09, 33086, 30340, 3D755, 3DD8C, 30254, 33444, 364FD, 37F18, 322D3, 30874, 3BEC1, 3ACB8, 30DED, 319F0, 38FB7, 3566C, 34039, 3007B, 3F04D, 3EA09, 300F2, 33C1E, 35B2E, 38A1A, 31CC4, 30BF4, 3B2B0, 3B8B3, 30A21, 31FBA, 38490, 36009, 33822, 3018F, 3E3C8, 3D124, 30453, 32CE8, 36F2C, 37466, 3296A, 3058D, 3CAFB, 3A0F1, 3124D, 314B5, 39B23, 34D37, 348C6, 30005, 3FCDC, 3FE6E, 30001, 349E0, 34C18, 39C95, 31418, 312E4, 39F7C, 3CC84, 3053B, 32A46, 37315, 37078, 32C05, 3049E, 3CF99, 3E558, 30164, 3391E, 35ED0, 385F0, 31EF9, 30A92, 3B731, 3B42F, 30B7C, 31D7E, 388B6, 35C62, 33B1C, 30115, 3E879, 3F1DF, 30064, 34144, 3553F, 39121, 31941, 30E71, 3AB3D, 3C046, 3080F, 3239E, 37DBD, 3663E, 33352, 3028C, 3DBFE, 3D8E2, 30302, 33172, 368C4, 37B0B, 3253C, 3074C, 3C352, 3A847, 30F80, 317E9, 393F8, 352EC, 34360, 3003C, 3F502, 3F826, 3001F, 34583, 3509E, 396D3, 3169A, 31098, 3A556, 3C661, 30692, 326E2, 3785F, 36B50, 32F9B, 30381, 3D5C8, 3DF1B, 3021F, 33539, 363BE, 38074, 32209, 308DC, 3BD3D, 3AE35, 30D6B, 31AA2, 38E4E, 3579A, 33F2F, 30095, 3EEBC, 3EB9A, 300D0, 33D22, 359FB, 38B80, 31C0C, 30C6F, 3B131, 3BA35, 309B2, 3207D, 38330, 36144, 33727, 301BD, 3E239, 3D2B0, 3040B, 32DCC, 36DE1, 375B7, 32890, 305E1, 3C972, 3A267, 311B9, 31555, 399B2, 34E58, 347AE, 3000B, 3FB4A, 3FB4A, 3000B, 347AE, 34E58, 399B2, 31555, 311B9, 3A267, 3C972, 305E1, 32890, 375B7, 36DE1, 32DCC, 3040B, 3D2B0, 3E239, 301BD, 33727, 36144, 38330, 3207D, 309B2, 3BA35, 3B131, 30C6F, 31C0C, 38B80, 359FB, 33D22, 300D0, 3EB9A, 3EEBC, 30095, 33F2F, 3579A, 38E4E, 31AA2, 30D6B, 3AE35, 3BD3D, 308DC, 32209, 38074, 363BE, 33539, 3021F, 3DF1B, 3D5C8, 30381, 32F9B, 36B50, 3785F, 326E2, 30692, 3C661, 3A556, 31098, 3169A, 396D3, 3509E, 34583, 3001F, 3F826, 3F502, 3003C, 34360, 352EC, 393F8, 317E9, 30F80, 3A847, 3C352, 3074C, 3253C, 37B0B, 368C4, 33172, 30302, 3D8E2, 3DBFE, 3028C, 33352, 3663E, 37DBD, 3239E, 3080F, 3C046, 3AB3D, 30E71, 31941, 39121, 3553F, 34144, 30064, 3F1DF, 3E879, 30115, 33B1C, 35C62, 388B6, 31D7E, 30B7C, 3B42F, 3B731, 30A92, 31EF9, 385F0, 35ED0, 3391E, 30164, 3E558, 3CF99, 3049E, 32C05, 37078, 37315, 32A46, 3053B, 3CC84, 39F7C, 312E4, 31418, 39C95, 34C18, 349E0, 30001, 3FE6E, 3FF37, 30000, 34A6D, 34B89, 39D4F, 313CA, 31330, 39EC2, 3CD49, 30513, 32AB5, 3726D, 3711F, 32B95, 304C4, 3CED4, 3E620, 30150, 3399D, 35E34, 386A1, 31E99, 30ACC, 3B670, 3B4F0, 30B41, 31DDC, 38804, 35CFD, 33A9C, 30128, 3E7B0, 3F2A7, 30059, 341CA, 354AA, 391D6, 318EA, 30EB4, 3AA7F, 3C109, 307DD, 32405, 37D10, 366DF, 332D9, 302A8, 3DB37, 3D9A9, 302E3, 331E9, 36822, 37BB7, 324D4, 3077B, 3C28F, 3A904, 30F3B, 3183E, 39342, 35380, 342D8, 30045, 3F439, 3F8EF, 30019, 3460D, 3500C, 3978A, 31648, 310DF, 3A49A, 3C725, 30665, 3274C, 377B4, 36BF4, 32F27, 303A3, 3D502, 3DFE2, 30206, 335B3, 3631F, 38123, 321A5, 30911, 3BC7B, 3AEF4, 30D2B, 31AFC, 38D9A, 35832, 33EAB, 300A3, 3EDF3, 3EC62, 300C1, 33DA4, 35962, 38C33, 31BB0, 30CAD, 3B072, 3BAF7, 3097C, 320DF, 38281, 361E2, 336AB, 301D5, 3E171, 3D376, 303E8, 32E3F, 36D3C, 37661, 32824, 3060D, 3C8AD, 3A322, 31170, 315A5, 398FA, 34EE9, 34723, 3000F, 3FA81, 3FC13, 30008, 3483A, 34DC7, 39A6B, 31504, 31203, 3A1AC, 3CA36, 305B7, 328FD, 3750E, 36E87, 32D5A, 3042F, 3D1EA, 3E301, 301A6, 337A4, 360A6, 383E0, 3201B, 309EA, 3B974, 3B1F0, 30C31, 31C67, 38ACD, 35A94, 33CA0, 300E1, 3EAD2, 3EF85, 30088, 33FB4, 35703, 38F02, 31A49, 30DAC, 3AD77, 3BDFF, 308A8, 3226E, 37FC6, 3645D, 334BE, 30239, 3DE53, 3D68F, 30360, 33010, 36AAC, 37909, 32677, 306BF, 3C59D, 3A612, 31051, 316ED, 3961C, 35131, 344FA, 30025, 3F75D, 3F5CB, 30034, 343E8, 35258, 394AE, 31795, 30FC5, 3A78B, 3C416, 3071C, 325A4, 37A60, 36966, 330FC, 30321, 3D81C, 3DCC5, 30270, 333CB, 3659D, 37E6B, 32338, 30841, 3BF84, 3ABFA, 30E2E, 31999, 3906C, 355D6, 340BE, 3006F, 3F116, 3E941, 30103, 33B9D, 35BC8, 38968, 31D21, 30BB8, 3B370, 3B7F2, 30A5A, 31F59, 38540, 35F6C, 3389F, 30179, 3E490, 3D05F, 30478, 32C76, 36FD2, 373BD, 329D8, 30564, 3CBC0, 3A037, 31298, 31466, 39BDC, 34CA8, 34953, 30003, 3FDA5, 3FDA5, 30003, 34953, 34CA8, 39BDC, 31466, 31298, 3A037, 3CBC0, 30564, 329D8, 373BD, 36FD2, 32C76, 30478, 3D05F, 3E490, 30179, 3389F, 35F6C, 38540, 31F59, 30A5A, 3B7F2, 3B370, 30BB8, 31D21, 38968, 35BC8, 33B9D, 30103, 3E941, 3F116, 3006F, 340BE, 355D6, 3906C, 31999, 30E2E, 3ABFA, 3BF84, 30841, 32338, 37E6B, 3659D, 333CB, 30270, 3DCC5, 3D81C, 30321, 330FC, 36966, 37A60, 325A4, 3071C, 3C416, 3A78B, 30FC5, 31795, 394AE, 35258, 343E8, 30034, 3F5CB, 3F75D, 30025, 344FA, 35131, 3961C, 316ED, 31051, 3A612, 3C59D, 306BF, 32677, 37909, 36AAC, 33010, 30360, 3D68F, 3DE53, 30239, 334BE, 3645D, 37FC6, 3226E, 308A8, 3BDFF, 3AD77, 30DAC, 31A49, 38F02, 35703, 33FB4, 30088, 3EF85, 3EAD2, 300E1, 33CA0, 35A94, 38ACD, 31C67, 30C31, 3B1F0, 3B974, 309EA, 3201B, 383E0, 360A6, 337A4, 301A6, 3E301, 3D1EA, 3042F, 32D5A, 36E87, 3750E, 328FD, 305B7, 3CA36, 3A1AC, 31203, 31504, 39A6B, 34DC7, 3483A, 30008, 3FC13, 3FA81, 3000F, 34723, 34EE9, 398FA, 315A5, 31170, 3A322, 3C8AD, 3060D, 32824, 37661, 36D3C, 32E3F, 303E8, 3D376, 3E171, 301D5, 336AB, 361E2, 38281, 320DF, 3097C, 3BAF7, 3B072, 30CAD, 31BB0, 38C33, 35962, 33DA4, 300C1, 3EC62, 3EDF3, 300A3, 33EAB, 35832, 38D9A, 31AFC, 30D2B, 3AEF4, 3BC7B, 30911, 321A5, 38123, 3631F, 335B3, 30206, 3DFE2, 3D502, 303A3, 32F27, 36BF4, 377B4, 3274C, 30665, 3C725, 3A49A, 310DF, 31648, 3978A, 3500C, 3460D, 30019, 3F8EF, 3F439, 30045, 342D8, 35380, 39342, 3183E, 30F3B, 3A904, 3C28F, 3077B, 324D4, 37BB7, 36822, 331E9, 302E3, 3D9A9, 3DB37, 302A8, 332D9, 366DF, 37D10, 32405, 307DD, 3C109, 3AA7F, 30EB4, 318EA, 391D6, 354AA, 341CA, 30059, 3F2A7, 3E7B0, 30128, 33A9C, 35CFD, 38804, 31DDC, 30B41, 3B4F0, 3B670, 30ACC, 31E99, 386A1, 35E34, 3399D, 30150, 3E620, 3CED4, 304C4, 32B95, 3711F, 3726D, 32AB5, 30513, 3CD49, 39EC2, 31330, 313CA, 39D4F, 34B89, 34A6D, 30000, 3FF37;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 1024',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_f08ed8d923017290',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9f015824e13ea0be73913322ab12d687',
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
      'core_name0' => 'bmg_33_f08ed8d923017290',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5302b11b12ed7d6dedc758319b80ff2e',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '75c12273c370348e5798a1b6a483522b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal count_reg_join_44_1: unsigned((2 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
  signal rst_limit_join_44_1: boolean;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_223a0f3237',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '800160d22e52df7c12d95e88b8cc6fb6',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c1a4b763f94c341184eb8a65d07cf3be',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '2c16bc117016005c1be4e1d5a2993626',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlconvert_pipeline.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '7205573ac4d5d7b5b6dedeebf807ecc6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((10 - 1) downto 0) := "0000000000";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((11 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0000000000";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("0000000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_61242a554d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd2898b7388f02f2920cb86e753c6fe0a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (9 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(8);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 8 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_47d75ae775',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1ba3cd7992710b249dc42dd0b0423042',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "0",
    "0",
    "0",
    "0",
    "0");
  signal op_mem_20_24_front_din: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((1 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_43bd805056',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '09e53dc12650ec851c056ead05ca4808',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_c462a80bee',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '822c9353edbf6d38ff7af47aaa3f68c7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((18 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (3 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((18 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(2);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 2 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= \'1\';
  q <= op_mem_20_24_back;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((18 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_328e8ebbb5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '86807c14219244b800eead1b624aff03',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (3 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    \'0\',
    \'0\',
    \'0\');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(2);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_20_24_push_front_pop_back_en = \'1\')) then
        for i in 2 downto 1 loop 
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
      'entity_name' => 'delay_23d71a76f2',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c62bbc54d810cff7b6c088aace1f3773',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (6 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000",
    "000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(5);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
        for i in 5 downto 1 loop 
          pipe_16_22(i) <= pipe_16_22(i-1);
        end loop;
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_621a1c5abf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ea3343259534f2ab735322ff3a76128',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((18 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_16_22_push_front_pop_back_en = \'1\')) then
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
  pipe_16_22_push_front_pop_back_en <= \'1\';
  y <= pipe_16_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_181e58d842',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '51a1b7f9e7cd415c1803063a30e25c95',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_18_25: signed((18 - 1) downto 0);
  type array_type_op_mem_42_20 is array (0 to (1 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_42_20: array_type_op_mem_42_20 := (
    0 => "0000000000000000000");
  signal op_mem_42_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_42_20_back: signed((19 - 1) downto 0);
  signal op_mem_42_20_push_front_pop_back_en: std_logic;
  signal cast_30_16: signed((19 - 1) downto 0);
  signal internal_ip_30_1_neg: signed((19 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_42_20_back <= op_mem_42_20(0);
  proc_op_mem_42_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_42_20_push_front_pop_back_en = \'1\')) then
        op_mem_42_20(0) <= op_mem_42_20_front_din;
      end if;
    end if;
  end process proc_op_mem_42_20;
  cast_30_16 <= s2s_cast(ip_18_25, 17, 19, 17);
  internal_ip_30_1_neg <=  -cast_30_16;
  op_mem_42_20_front_din <= internal_ip_30_1_neg;
  op_mem_42_20_push_front_pop_back_en <= \'1\';
  op <= signed_to_std_logic_vector(op_mem_42_20_back);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'negate_e1a9d1ade1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '5ceccc8b46f89d5180bee8f48eccf25b',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_1eb1abd277b5ed91',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8a67af12fed52cc20147b3e5db47f609',
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
      'core_name0' => 'cntr_11_0_1eb1abd277b5ed91',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 512',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_859211ccdc87ea54',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '468d3dc21112b8daa0a86c181e4cedc1',
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
      'core_name0' => 'bmg_33_859211ccdc87ea54',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '823820561dc563133ddef3a7b5a1cee2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_f1ac4bddff',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '33d0bd4da38e5cae4fc9beffbd0ed266',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_498bc68c14',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '2e2fac6b5513f4f7f53f6e95600afecc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fbc2f0cce1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 10',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_e0a92afaaa4ca477',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '5516fae4c4f34d7315bc06645d9c2480',
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
      'core_name0' => 'cntr_11_0_e0a92afaaa4ca477',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '62bc9f8a3c249b32ba23a34fb1c28724',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_0ffd72e037',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '91aa5fe6e672c7518ca04268dcbd48a9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((10 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_f6702ea2f7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '51b9b8b8a9a605cd68cf050c4798c137',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex6 Xilinx,_Inc. 4.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_9eb5145f86f85d4c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3802c518c7e8aff1935b398b030e1f2a',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_43_9eb5145f86f85d4c',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex6 Xilinx,_Inc. 4.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 18',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 16',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_9b60decaec7893b3',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f5a0850ebfeec20832112cd421a796af',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_43_9b60decaec7893b3',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a9f428bdfa1eb77914a767ecfb02676b',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b6f65511f3ee01d2',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a77b85913eac8a5083953b182315ede2',
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
      'core_name0' => 'cntr_11_0_b6f65511f3ee01d2',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 256',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_2ebc23f2386fc448',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '0ba2d832761ef763af0b2fff67c77cea',
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
      'core_name0' => 'bmg_33_2ebc23f2386fc448',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '469d0b121781904ac966646231cd68c5',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_b4ec9de7d1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ec7211565fb5370885d253fd4556ebc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fd85eb7067',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4d54d02eccb7e9661541234c5cb7c5ba',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((9 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_4a391b9a0e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_2680eac63530f805',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7641da9ab992482f9ebf7077ff5a0666',
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
      'core_name0' => 'cntr_11_0_2680eac63530f805',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0a63ec0c3ee5b001c3703d08c6cdfb43',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_6c3ee657fa',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '92622afe276f2073e58b81817cc03bd6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((9 - 1) downto 0);
  signal b_1_34: unsigned((9 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((9 - 1) downto 0);
    b : in std_logic_vector((9 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_78eac2928d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 9',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_1eb1abd277b5ed91',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ffd1834e9aeb5fa35004450eb40c6652',
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
      'core_name0' => 'cntr_11_0_1eb1abd277b5ed91',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e44cff1dbbda21601e512a99f11c81f0',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ff3b130a723c52a54869cb8c81bb5c55',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 8',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_d14b03a36f18dd46',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '381f81d28e056f631ef5931710de74fa',
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
      'core_name0' => 'bmg_33_d14b03a36f18dd46',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 8',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_32cbeeec23b2f4b8',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3364e17e0079696673d1535de14cf165',
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
      'core_name0' => 'bmg_33_32cbeeec23b2f4b8',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b55bbd2951fe37268e25de97e326a89e',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_80e7f1b9487d031c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f8a9bbd54193c046d159be09e82ddf76',
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
      'core_name0' => 'cntr_11_0_80e7f1b9487d031c',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 128',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_b7aed820f80ce287',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '43993df2051d888cd8fbe8af55e3f03c',
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
      'core_name0' => 'bmg_33_b7aed820f80ce287',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd79079c104728231229f8185fe35b4f8',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_b437b02512',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6881e3e9fe47f0cbdc2e654a4e3326e1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_91ef1678ca',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3357ffe50653e9d14d4f9101dfc712bf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e8aae5d3bb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_238e3cff24df8454',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e901556ecfc217c0d34bf55bcc7f84c6',
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
      'core_name0' => 'cntr_11_0_238e3cff24df8454',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a40234a17f28f2875a29b26c0a65bcc1',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_54048c8b02',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f656afd1eff99591face4c094ec46614',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_16235eb2bf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 8',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_b6f65511f3ee01d2',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e65c7b68be7c0b1dc08e90088c7e6669',
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
      'core_name0' => 'cntr_11_0_b6f65511f3ee01d2',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e6ec1ddc824e132975308235c8dc660f',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4f12bd3966e12293ab389d65800fee16',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 16',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_01c5b2878838b56f',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '227735c78c5cfdb374fec9fc4b4e6956',
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
      'core_name0' => 'bmg_33_01c5b2878838b56f',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 16',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_4fe2a37f7087035d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ccfa90ebee5db539f1ca1f7b884126c0',
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
      'core_name0' => 'bmg_33_4fe2a37f7087035d',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ca7e93d2072eee0ca15c00de235d7100',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_f35b922de1faa997',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'dae72aaba69df53ef88254a22c887aa9',
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
      'core_name0' => 'cntr_11_0_f35b922de1faa997',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 64',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_e1be7f8591447d79',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e67c6ff75e6b720890518abf65de81fe',
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
      'core_name0' => 'bmg_33_e1be7f8591447d79',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '538e91b9afa9a360bc51bc0f34c944b6',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_180df391de',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b5248d3f5b5143ba54a49d01587b0d86',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7244cd602b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'db61cfd489a472805db2684370ef5f3f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7b07120b87',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_c800888516b67be5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '3893afac144f177c6a7fb9c70229f690',
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
      'core_name0' => 'cntr_11_0_c800888516b67be5',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '66dfbca33c2eb8499dfa0680a72e029e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_9a3978c602',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9275a22a9596054be859a55eb4c3d6fc',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((7 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((7 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_23065a6aa3',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 7',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_80e7f1b9487d031c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd79cfa151a187f5d67b3992599b54eb0',
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
      'core_name0' => 'cntr_11_0_80e7f1b9487d031c',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '8506a6bdc0d7e9449d480af50e1c0735',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd8f0934bc9b96dc048c0b1744c219b5e',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 32',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_0805889d6ca9a74e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c861affc5e86ab74f1838e157b3fc179',
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
      'core_name0' => 'bmg_33_0805889d6ca9a74e',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 32',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_9d98a093602ca0e4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '38e1f611f9dcc92df196416b620838f9',
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
      'core_name0' => 'bmg_33_9d98a093602ca0e4',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '86ca2d139e4b5f8bc66ba322dd3d7a16',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_ee489430a3e4799a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e6bc9ac44315e71c12acac358cb7841b',
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
      'core_name0' => 'cntr_11_0_ee489430a3e4799a',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 32',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_80823b94d01efd46',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8307ff2d31dc79e6bdfac78e10fd6733',
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
      'core_name0' => 'bmg_33_80823b94d01efd46',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e163d7f31d7f1730f06e420761e0c64',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a267c870be',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'af2bad13c77b7b041e1467dc41d140d0',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "000000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_7ea0f2fff7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '64d46ae81054cf988daec38e904bcb92',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_961b61f8a1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_bae3a24e1f39c949',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a886458762ba2ddefd9564d2aeeb068c',
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
      'core_name0' => 'cntr_11_0_bae3a24e1f39c949',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9163d19d006ec8f52dad0282d12b679c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_931d61fb72',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '162cd14d16c67b581f57f28fba5ced10',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((6 - 1) downto 0);
  signal b_1_34: unsigned((6 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((6 - 1) downto 0);
    b : in std_logic_vector((6 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_fe487ce1c7',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 6',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_f35b922de1faa997',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '874f55f18aae72b87893a7ca6025a48a',
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
      'core_name0' => 'cntr_11_0_f35b922de1faa997',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c02b8fd29d6cee20a96048fe0096018c',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f31e5f146682ddbcd1ebcd79b419d2ff',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 64',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_407dab803726e969',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9796b87e0b73bda8a871f2a6393e243d',
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
      'core_name0' => 'bmg_33_407dab803726e969',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 64',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_d28f72fe6cf5c024',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '343c355036d467a2600f3c1e58372752',
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
      'core_name0' => 'bmg_33_d28f72fe6cf5c024',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cc4225abed565fd9e1d87e7692ab8fa4',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_2cd0a8484d4d002d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7a3ba7e93ce9ed267ec408aec6482953',
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
      'core_name0' => 'cntr_11_0_2cd0a8484d4d002d',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 16',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_d22f2f04a8171e96',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '7e4e04cbf8395a3cbac91af080d55968',
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
      'core_name0' => 'bmg_33_d22f2f04a8171e96',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ebf68832c148b48ebeed45be1fa6f494',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_582a3706dd',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4522f477ee817d9344e420e7e82c7ec4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "00000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_fe72737ca0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c6c785c7da534170701dbff999551b5f',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "10000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((5 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_ef0e2e5fc6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_ef9db50fe975955e',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '24372b5b2e1d580c955811a77dcac06c',
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
      'core_name0' => 'cntr_11_0_ef9db50fe975955e',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b9b8874384342e8df155cd2fa01f6ece',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_9ece3c8c4e',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '1167186bd3ee0a0898f6e43d489ee960',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((5 - 1) downto 0);
  signal b_1_34: unsigned((5 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((5 - 1) downto 0);
    b : in std_logic_vector((5 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_dc5bc996c9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 5',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_ee489430a3e4799a',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c94c30cda6bda7f94258192c8fa00f99',
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
      'core_name0' => 'cntr_11_0_ee489430a3e4799a',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '365eaba5cc68e8d002d3c9525d6533f6',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '300a1735f3059062e69b8409ae8bcd92',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 128',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_8972a00a58d53df2',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '301fc46da6d7ca552ffcf5607679670b',
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
      'core_name0' => 'bmg_33_8972a00a58d53df2',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 128',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_11dcddc4415b1a61',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a0bcfb8ab79ff09657a9588eab6a63f0',
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
      'core_name0' => 'bmg_33_11dcddc4415b1a61',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b72facf3eb09b5cd6b157153046784a4',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_02d2d7164ce2e2af',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '44589774e617853a2624e107645c193b',
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
      'core_name0' => 'cntr_11_0_02d2d7164ce2e2af',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_depth_a = 8',
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_09681c92e065dda4',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c1f7ba3385e1103c3af74a1044345a88',
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
      'core_name0' => 'bmg_33_09681c92e065dda4',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'bab4e5f03ee70a1f19e04ed8bab64e3b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_67ad97ca70',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'fadb300e660d2c903d1fcb082af6b277',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1000";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_145086465d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_cdf7bb2ee1fd8802',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '748eba9a951ac0f8dc9eb2a7529b08a5',
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
      'core_name0' => 'cntr_11_0_cdf7bb2ee1fd8802',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ed6a8def7bf6484a39b73ea223890ecf',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_4d3cfceaf4',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '7281288dfdea268164419c50e848831c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_d930162434',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 4',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_2cd0a8484d4d002d',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd61eea8c1c41582b4e525787df4c0e66',
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
      'core_name0' => 'cntr_11_0_2cd0a8484d4d002d',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c7313507f7f1cb5e83f50d370c0f3bd6',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '5d1a992bfac8775cf9231fa4cade5c71',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 0, B505, 34AFB, EC83, 39E08, 61F8, 3137D, FB15, 3CE0F, 8E3A, 32B25, D4DB, 371C6, 31F1, 304EB, FEC4, 3E6E8, A268, 33A1C, E1C6, 38753, 4A50, 30B06, F4FA, 3B5B0, 78AD, 31E3A, C5E4, 35D98, 1918, 3013C, FFB1, 3F370, ABEB, 34251, E76C, 3928C, 563E, 30EF7, F854, 3C1CC, 839C, 3246C, CD9F, 36780, 2590, 302C5, FD3B, 3DA70, 9880, 33261, DB94, 37C64, 3E34, 307AC, F109, 3A9C2, 6D74, 31894, BDAF, 35415, C90, 3004F, FFEC, 3F9B8, B086, 34698, EA0A, 39842, 5C22, 31127, F9C8, 3C7E9, 88F6, 327B8, D14D, 36C98, 2BC4, 303C5, FE13, 3E0AA, 9D80, 3362F, DEBE, 381D1, 4447, 30946, F314, 3AFB3, 731A, 31B56, C1D8, 358CA, 12D5, 300B2, FF4E, 3ED2B, A736, 33E28, E4AA, 38CE6, 504D, 30CEC, F6BA, 3BBB9, 7E2F, 32142, C9D1, 36280, 1F56, 301ED, FC3B, 3D43C, 9368, 32EB3, D848, 3770A, 3817, 30638, EED9, 3A3DE, 67BE, 315F6, B968, 34F7A, 648, 30014, FFFB, 3FCDC, B2C9, 348C6, EB4B, 39B23, 5F0F, 3124D, FA73, 3CAFB, 8B9A, 3296A, D318, 36F2C, 2EDC, 30453, FE71, 3E3C8, 9FF7, 33822, E046, 38490, 474D, 30A21, F40C, 3B2B0, 75E6, 31CC4, C3E2, 35B2E, 15F7, 300F2, FF85, 3F04D, A994, 34039, E610, 38FB7, 5348, 30DED, F78C, 3BEC1, 80E8, 322D3, CBBC, 364FD, 2274, 30254, FCC0, 3D755, 95F7, 33086, D9F2, 379B4, 3B27, 306ED, EFF5, 3A6CE, 6A9B, 31741, BB8F, 351C4, 96C, 3002C, FFD4, 3F694, AE3C, 34471, E8BF, 39565, 5932, 3100B, F913, 3C4D9, 864C, 3260E, CF7A, 36A09, 28AB, 30340, FDAC, 3DD8C, 9B03, 33444, DD2D, 37F18, 413F, 30874, F213, 3ACB8, 7049, 319F0, BFC7, 3566C, FB3, 3007B, FF0E, 3EA09, A4D2, 33C1E, E33C, 38A1A, 4D50, 30BF4, F5DF, 3B8B3, 7B70, 31FBA, C7DE, 36009, 1C38, 3018F, FBAD, 3D124, 90D4, 32CE8, D696, 37466, 3505, 3058D, EDB3, 3A0F1, 64DD, 314B5, B73A, 34D37, 324, 30005;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 256',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_1f0e3aab9b54b7b7',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'cac80cc570a2a9d57b6de0357c8530b5',
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
      'core_name0' => 'bmg_33_1f0e3aab9b54b7b7',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 30000, 34AFB, 34AFB, 39E08, 3137D, 3137D, 39E08, 3CE0F, 304EB, 32B25, 371C6, 371C6, 32B25, 304EB, 3CE0F, 3E6E8, 3013C, 33A1C, 35D98, 38753, 31E3A, 30B06, 3B5B0, 3B5B0, 30B06, 31E3A, 38753, 35D98, 33A1C, 3013C, 3E6E8, 3F370, 3004F, 34251, 35415, 3928C, 31894, 30EF7, 3A9C2, 3C1CC, 307AC, 3246C, 37C64, 36780, 33261, 302C5, 3DA70, 3DA70, 302C5, 33261, 36780, 37C64, 3246C, 307AC, 3C1CC, 3A9C2, 30EF7, 31894, 3928C, 35415, 34251, 3004F, 3F370, 3F9B8, 30014, 34698, 34F7A, 39842, 315F6, 31127, 3A3DE, 3C7E9, 30638, 327B8, 3770A, 36C98, 32EB3, 303C5, 3D43C, 3E0AA, 301ED, 3362F, 36280, 381D1, 32142, 30946, 3BBB9, 3AFB3, 30CEC, 31B56, 38CE6, 358CA, 33E28, 300B2, 3ED2B, 3ED2B, 300B2, 33E28, 358CA, 38CE6, 31B56, 30CEC, 3AFB3, 3BBB9, 30946, 32142, 381D1, 36280, 3362F, 301ED, 3E0AA, 3D43C, 303C5, 32EB3, 36C98, 3770A, 327B8, 30638, 3C7E9, 3A3DE, 31127, 315F6, 39842, 34F7A, 34698, 30014, 3F9B8, 3FCDC, 30005, 348C6, 34D37, 39B23, 314B5, 3124D, 3A0F1, 3CAFB, 3058D, 3296A, 37466, 36F2C, 32CE8, 30453, 3D124, 3E3C8, 3018F, 33822, 36009, 38490, 31FBA, 30A21, 3B8B3, 3B2B0, 30BF4, 31CC4, 38A1A, 35B2E, 33C1E, 300F2, 3EA09, 3F04D, 3007B, 34039, 3566C, 38FB7, 319F0, 30DED, 3ACB8, 3BEC1, 30874, 322D3, 37F18, 364FD, 33444, 30254, 3DD8C, 3D755, 30340, 33086, 36A09, 379B4, 3260E, 306ED, 3C4D9, 3A6CE, 3100B, 31741, 39565, 351C4, 34471, 3002C, 3F694, 3F694, 3002C, 34471, 351C4, 39565, 31741, 3100B, 3A6CE, 3C4D9, 306ED, 3260E, 379B4, 36A09, 33086, 30340, 3D755, 3DD8C, 30254, 33444, 364FD, 37F18, 322D3, 30874, 3BEC1, 3ACB8, 30DED, 319F0, 38FB7, 3566C, 34039, 3007B, 3F04D, 3EA09, 300F2, 33C1E, 35B2E, 38A1A, 31CC4, 30BF4, 3B2B0, 3B8B3, 30A21, 31FBA, 38490, 36009, 33822, 3018F, 3E3C8, 3D124, 30453, 32CE8, 36F2C, 37466, 3296A, 3058D, 3CAFB, 3A0F1, 3124D, 314B5, 39B23, 34D37, 348C6, 30005, 3FCDC;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_depth_a = 256',
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_764dd2d9d2256da6',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '45b7d135958c4e5a87c8f1de21713ee2',
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
      'core_name0' => 'bmg_33_764dd2d9d2256da6',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e7f7bdfd80c52d4da97c4e1b4699e578',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3e32d0c3084ab554ef45ac9172ce46a7',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_a1c496ea88',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3cbb4b7449173f2ec4bd2eb1d7435974',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "100";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((3 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_469094441c',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = DOWN',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = true',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_ae2e18455fff317c',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '2ffb7a348d387f568629e635cf2f26db',
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
      'core_name0' => 'cntr_11_0_ae2e18455fff317c',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0d2830fc6f3d63f3fed155175c35a0f2',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_8fc7f5539b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '91e16f9e52f2fc6ba0a751b004ae0945',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((3 - 1) downto 0);
  signal b_1_34: unsigned((3 - 1) downto 0);
  signal result_14_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_14_3_rel <= a_1_31 /= b_1_34;
  op <= boolean_to_vector(result_14_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((3 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_47b317dab6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 3',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_02d2d7164ce2e2af',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '943cf7e7a58da7171cfcde7191e111fa',
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
      'core_name0' => 'cntr_11_0_02d2d7164ce2e2af',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '4e8c60c1e2e8f182e05af7d7a276a8c2',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '21acbf1042c260c0472bf9023cd23a16',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 10000, 10000, FFFF, FFFF, FFFE, FFFD, FFFC, FFFB, FFFA, FFF8, FFF7, FFF5, FFF3, FFF1, FFEF, FFEC, FFEA, FFE7, FFE4, FFE1, FFDE, FFDB, FFD7, FFD4, FFD0, FFCC, FFC8, FFC4, FFBF, FFBB, FFB6, FFB1, FFAC, FFA7, FFA2, FF9C, FF96, FF91, FF8B, FF85, FF7E, FF78, FF71, FF6B, FF64, FF5D, FF56, FF4E, FF47, FF3F, FF38, FF30, FF28, FF1F, FF17, FF0E, FF06, FEFD, FEF4, FEEB, FEE1, FED8, FECE, FEC4, FEBA, FEB0, FEA6, FE9C, FE91, FE87, FE7C, FE71, FE66, FE5A, FE4F, FE43, FE37, FE2B, FE1F, FE13, FE07, FDFA, FDEE, FDE1, FDD4, FDC7, FDB9, FDAC, FD9E, FD90, FD83, FD74, FD66, FD58, FD49, FD3B, FD2C, FD1D, FD0E, FCFE, FCEF, FCDF, FCD0, FCC0, FCB0, FCA0, FC8F, FC7F, FC6E, FC5D, FC4C, FC3B, FC2A, FC18, FC07, FBF5, FBE3, FBD1, FBBF, FBAD, FB9A, FB88, FB75, FB62, FB4F, FB3C, FB28, FB15, FB01, FAED, FAD9, FAC5, FAB1, FA9C, FA88, FA73, FA5E, FA49, FA34, FA1F, FA09, F9F3, F9DE, F9C8, F9B2, F99B, F985, F96E, F958, F941, F92A, F913, F8FB, F8E4, F8CC, F8B4, F89D, F885, F86C, F854, F83B, F823, F80A, F7F1, F7D8, F7BF, F7A5, F78C, F772, F758, F73E, F724, F70A, F6EF, F6D5, F6BA, F69F, F684, F669, F64E, F632, F616, F5FB, F5DF, F5C3, F5A6, F58A, F56E, F551, F534, F517, F4FA, F4DD, F4BF, F4A2, F484, F466, F448, F42A, F40C, F3ED, F3CF, F3B0, F391, F372, F353, F334, F314, F2F5, F2D5, F2B5, F295, F275, F254, F234, F213, F1F3, F1D2, F1B1, F18F, F16E, F14C, F12B, F109, F0E7, F0C5, F0A3, F080, F05E, F03B, F018, EFF5, EFD2, EFAF, EF8C, EF68, EF45, EF21, EEFD, EED9, EEB4, EE90, EE6B, EE47, EE22, EDFD, EDD8, EDB3, ED8D, ED68, ED42, ED1C, ECF6, ECD0, ECAA, EC83, EC5D, EC36, EC0F, EBE8, EBC1, EB9A, EB73, EB4B, EB23, EAFC, EAD4, EAAB, EA83, EA5B, EA32, EA0A, E9E1, E9B8, E98F, E966, E93C, E913, E8E9, E8BF, E895, E86B, E841, E817, E7EC, E7C2, E797, E76C, E741, E716, E6EA, E6BF, E693, E667, E63C, E610, E5E3, E5B7, E58B, E55E, E531, E504, E4D7, E4AA, E47D, E450, E422, E3F4, E3C7, E399, E36B, E33C, E30E, E2DF, E2B1, E282, E253, E224, E1F5, E1C6, E196, E167, E137, E107, E0D7, E0A7, E077, E046, E016, DFE5, DFB4, DF83, DF52, DF21, DEF0, DEBE, DE8C, DE5B, DE29, DDF7, DDC5, DD92, DD60, DD2D, DCFB, DCC8, DC95, DC62, DC2F, DBFB, DBC8, DB94, DB60, DB2C, DAF8, DAC4, DA90, DA5C, DA27, D9F2, D9BE, D989, D954, D91E, D8E9, D8B4, D87E, D848, D812, D7DC, D7A6, D770, D73A, D703, D6CD, D696, D65F, D628, D5F1, D5BA, D582, D54B, D513, D4DB, D4A3, D46B, D433, D3FB, D3C2, D38A, D351, D318, D2DF, D2A6, D26D, D234, D1FA, D1C1, D187, D14D, D113, D0D9, D09F, D065, D02A, CFF0, CFB5, CF7A, CF3F, CF04, CEC9, CE8E, CE52, CE17, CDDB, CD9F, CD63, CD27, CCEB, CCAE, CC72, CC35, CBF9, CBBC, CB7F, CB42, CB05, CAC7, CA8A, CA4D, CA0F, C9D1, C993, C955, C917, C8D9, C89A, C85C, C81D, C7DE, C7A0, C761, C721, C6E2, C6A3, C663, C624, C5E4, C5A4, C564, C524, C4E4, C4A4, C463, C423, C3E2, C3A1, C360, C31F, C2DE, C29D, C25C, C21A, C1D8, C197, C155, C113, C0D1, C08F, C04C, C00A, BFC7, BF85, BF42, BEFF, BEBC, BE79, BE36, BDF2, BDAF, BD6B, BD28, BCE4, BCA0, BC5C, BC18, BBD4, BB8F, BB4B, BB06, BAC1, BA7D, BA38, B9F3, B9AE, B968, B923, B8DD, B898, B852, B80C, B7C6, B780, B73A, B6F4, B6AD, B667, B620, B5DA, B593, B54C, B505, B4BE, B477, B42F, B3E8, B3A0, B358, B311, B2C9, B281, B239, B1F0, B1A8, B160, B117, B0CE, B086, B03D, AFF4, AFAB, AF62, AF18, AECF, AE85, AE3C, ADF2, ADA8, AD5E, AD14, ACCA, AC80, AC36, ABEB, ABA1, AB56, AB0B, AAC1, AA76, AA2A, A9DF, A994, A949, A8FD, A8B2, A866, A81A, A7CE, A782, A736, A6EA, A69E, A652, A605, A5B8, A56C, A51F, A4D2, A485, A438, A3EB, A39E, A350, A303, A2B5, A268, A21A, A1CC, A17E, A130, A0E2, A094, A045, 9FF7, 9FA8, 9F5A, 9F0B, 9EBC, 9E6D, 9E1E, 9DCF, 9D80, 9D31, 9CE1, 9C92, 9C42, 9BF2, 9BA3, 9B53, 9B03, 9AB3, 9A63, 9A12, 99C2, 9972, 9921, 98D0, 9880, 982F, 97DE, 978D, 973C, 96EB, 969A, 9648, 95F7, 95A5, 9554, 9502, 94B0, 945E, 940C, 93BA, 9368, 9316, 92C4, 9271, 921F, 91CC, 9179, 9127, 90D4, 9081, 902E, 8FDB, 8F88, 8F34, 8EE1, 8E8D, 8E3A, 8DE6, 8D93, 8D3F, 8CEB, 8C97, 8C43, 8BEF, 8B9A, 8B46, 8AF2, 8A9D, 8A49, 89F4, 899F, 894A, 88F6, 88A1, 884C, 87F6, 87A1, 874C, 86F7, 86A1, 864C, 85F6, 85A0, 854A, 84F5, 849F, 8449, 83F2, 839C, 8346, 82F0, 8299, 8243, 81EC, 8195, 813F, 80E8, 8091, 803A, 7FE3, 7F8C, 7F35, 7EDD, 7E86, 7E2F, 7DD7, 7D7F, 7D28, 7CD0, 7C78, 7C20, 7BC8, 7B70, 7B18, 7AC0, 7A68, 7A10, 79B7, 795F, 7906, 78AD, 7855, 77FC, 77A3, 774A, 76F1, 7698, 763F, 75E6, 758D, 7533, 74DA, 7480, 7427, 73CD, 7373, 731A, 72C0, 7266, 720C, 71B2, 7158, 70FE, 70A3, 7049, 6FEF, 6F94, 6F3A, 6EDF, 6E85, 6E2A, 6DCF, 6D74, 6D19, 6CBE, 6C63, 6C08, 6BAD, 6B52, 6AF6, 6A9B, 6A40, 69E4, 6989, 692D, 68D1, 6876, 681A, 67BE, 6762, 6706, 66AA, 664E, 65F2, 6595, 6539, 64DD, 6480, 6424, 63C7, 636B, 630E, 62B1, 6254, 61F8, 619B, 613E, 60E1, 6084, 6026, 5FC9, 5F6C, 5F0F, 5EB1, 5E54, 5DF6, 5D99, 5D3B, 5CDE, 5C80, 5C22, 5BC4, 5B66, 5B08, 5AAA, 5A4C, 59EE, 5990, 5932, 58D4, 5875, 5817, 57B9, 575A, 56FC, 569D, 563E, 55E0, 5581, 5522, 54C3, 5464, 5406, 53A7, 5348, 52E8, 5289, 522A, 51CB, 516C, 510C, 50AD, 504D, 4FEE, 4F8E, 4F2F, 4ECF, 4E70, 4E10, 4DB0, 4D50, 4CF0, 4C90, 4C31, 4BD1, 4B71, 4B10, 4AB0, 4A50, 49F0, 4990, 492F, 48CF, 486F, 480E, 47AE, 474D, 46EC, 468C, 462B, 45CB, 456A, 4509, 44A8, 4447, 43E6, 4385, 4324, 42C3, 4262, 4201, 41A0, 413F, 40DE, 407C, 401B, 3FBA, 3F58, 3EF7, 3E95, 3E34, 3DD2, 3D71, 3D0F, 3CAE, 3C4C, 3BEA, 3B88, 3B27, 3AC5, 3A63, 3A01, 399F, 393D, 38DB, 3879, 3817, 37B5, 3753, 36F1, 368E, 362C, 35CA, 3568, 3505, 34A3, 3440, 33DE, 337C, 3319, 32B7, 3254, 31F1, 318F, 312C, 30CA, 3067, 3004, 2FA1, 2F3F, 2EDC, 2E79, 2E16, 2DB3, 2D50, 2CED, 2C8A, 2C27, 2BC4, 2B61, 2AFE, 2A9B, 2A38, 29D5, 2971, 290E, 28AB, 2848, 27E4, 2781, 271E, 26BA, 2657, 25F4, 2590, 252D, 24C9, 2466, 2402, 239F, 233B, 22D7, 2274, 2210, 21AD, 2149, 20E5, 2082, 201E, 1FBA, 1F56, 1EF3, 1E8F, 1E2B, 1DC7, 1D63, 1CFF, 1C9B, 1C38, 1BD4, 1B70, 1B0C, 1AA8, 1A44, 19E0, 197C, 1918, 18B4, 1850, 17EB, 1787, 1723, 16BF, 165B, 15F7, 1593, 152E, 14CA, 1466, 1402, 139E, 1339, 12D5, 1271, 120D, 11A8, 1144, 10E0, 107B, 1017, FB3, F4E, EEA, E86, E21, DBD, D59, CF4, C90, C2B, BC7, B62, AFE, A9A, A35, 9D1, 96C, 908, 8A3, 83F, 7DA, 776, 711, 6AD, 648, 5E4, 57F, 51B, 4B6, 452, 3ED, 389, 324, 2C0, 25B, 1F7, 192, 12E, C9, 65, 0, 3FF9B, 3FF37, 3FED2, 3FE6E, 3FE09, 3FDA5, 3FD40, 3FCDC, 3FC77, 3FC13, 3FBAE, 3FB4A, 3FAE5, 3FA81, 3FA1C, 3F9B8, 3F953, 3F8EF, 3F88A, 3F826, 3F7C1, 3F75D, 3F6F8, 3F694, 3F62F, 3F5CB, 3F566, 3F502, 3F49E, 3F439, 3F3D5, 3F370, 3F30C, 3F2A7, 3F243, 3F1DF, 3F17A, 3F116, 3F0B2, 3F04D, 3EFE9, 3EF85, 3EF20, 3EEBC, 3EE58, 3EDF3, 3ED8F, 3ED2B, 3ECC7, 3EC62, 3EBFE, 3EB9A, 3EB36, 3EAD2, 3EA6D, 3EA09, 3E9A5, 3E941, 3E8DD, 3E879, 3E815, 3E7B0, 3E74C, 3E6E8, 3E684, 3E620, 3E5BC, 3E558, 3E4F4, 3E490, 3E42C, 3E3C8, 3E365, 3E301, 3E29D, 3E239, 3E1D5, 3E171, 3E10D, 3E0AA, 3E046, 3DFE2, 3DF7E, 3DF1B, 3DEB7, 3DE53, 3DDF0, 3DD8C, 3DD29, 3DCC5, 3DC61, 3DBFE, 3DB9A, 3DB37, 3DAD3, 3DA70, 3DA0C, 3D9A9, 3D946, 3D8E2, 3D87F, 3D81C, 3D7B8, 3D755, 3D6F2, 3D68F, 3D62B, 3D5C8, 3D565, 3D502, 3D49F, 3D43C, 3D3D9, 3D376, 3D313, 3D2B0, 3D24D, 3D1EA, 3D187, 3D124, 3D0C1, 3D05F, 3CFFC, 3CF99, 3CF36, 3CED4, 3CE71, 3CE0F, 3CDAC, 3CD49, 3CCE7, 3CC84, 3CC22, 3CBC0, 3CB5D, 3CAFB, 3CA98, 3CA36, 3C9D4, 3C972, 3C90F, 3C8AD, 3C84B, 3C7E9, 3C787, 3C725, 3C6C3, 3C661, 3C5FF, 3C59D, 3C53B, 3C4D9, 3C478, 3C416, 3C3B4, 3C352, 3C2F1, 3C28F, 3C22E, 3C1CC, 3C16B, 3C109, 3C0A8, 3C046, 3BFE5, 3BF84, 3BF22, 3BEC1, 3BE60, 3BDFF, 3BD9E, 3BD3D, 3BCDC, 3BC7B, 3BC1A, 3BBB9, 3BB58, 3BAF7, 3BA96, 3BA35, 3B9D5, 3B974, 3B914, 3B8B3, 3B852, 3B7F2, 3B791, 3B731, 3B6D1, 3B670, 3B610, 3B5B0, 3B550, 3B4F0, 3B48F, 3B42F, 3B3CF, 3B370, 3B310, 3B2B0, 3B250, 3B1F0, 3B190, 3B131, 3B0D1, 3B072, 3B012, 3AFB3, 3AF53, 3AEF4, 3AE94, 3AE35, 3ADD6, 3AD77, 3AD18, 3ACB8, 3AC59, 3ABFA, 3AB9C, 3AB3D, 3AADE, 3AA7F, 3AA20, 3A9C2, 3A963, 3A904, 3A8A6, 3A847, 3A7E9, 3A78B, 3A72C, 3A6CE, 3A670, 3A612, 3A5B4, 3A556, 3A4F8, 3A49A, 3A43C, 3A3DE, 3A380, 3A322, 3A2C5, 3A267, 3A20A, 3A1AC, 3A14F, 3A0F1, 3A094, 3A037, 39FDA, 39F7C, 39F1F, 39EC2, 39E65, 39E08, 39DAC, 39D4F, 39CF2, 39C95, 39C39, 39BDC, 39B80, 39B23, 39AC7, 39A6B, 39A0E, 399B2, 39956, 398FA, 3989E, 39842, 397E6, 3978A, 3972F, 396D3, 39677, 3961C, 395C0, 39565, 3950A, 394AE, 39453, 393F8, 3939D, 39342, 392E7, 3928C, 39231, 391D6, 3917B, 39121, 390C6, 3906C, 39011, 38FB7, 38F5D, 38F02, 38EA8, 38E4E, 38DF4, 38D9A, 38D40, 38CE6, 38C8D, 38C33, 38BD9, 38B80, 38B26, 38ACD, 38A73, 38A1A, 389C1, 38968, 3890F, 388B6, 3885D, 38804, 387AB, 38753, 386FA, 386A1, 38649, 385F0, 38598, 38540, 384E8, 38490, 38438, 383E0, 38388, 38330, 382D8, 38281, 38229, 381D1, 3817A, 38123, 380CB, 38074, 3801D, 37FC6, 37F6F, 37F18, 37EC1, 37E6B, 37E14, 37DBD, 37D67, 37D10, 37CBA, 37C64, 37C0E, 37BB7, 37B61, 37B0B, 37AB6, 37A60, 37A0A, 379B4, 3795F, 37909, 378B4, 3785F, 3780A, 377B4, 3775F, 3770A, 376B6, 37661, 3760C, 375B7, 37563, 3750E, 374BA, 37466, 37411, 373BD, 37369, 37315, 372C1, 3726D, 3721A, 371C6, 37173, 3711F, 370CC, 37078, 37025, 36FD2, 36F7F, 36F2C, 36ED9, 36E87, 36E34, 36DE1, 36D8F, 36D3C, 36CEA, 36C98, 36C46, 36BF4, 36BA2, 36B50, 36AFE, 36AAC, 36A5B, 36A09, 369B8, 36966, 36915, 368C4, 36873, 36822, 367D1, 36780, 36730, 366DF, 3668E, 3663E, 365EE, 3659D, 3654D, 364FD, 364AD, 3645D, 3640E, 363BE, 3636E, 3631F, 362CF, 36280, 36231, 361E2, 36193, 36144, 360F5, 360A6, 36058, 36009, 35FBB, 35F6C, 35F1E, 35ED0, 35E82, 35E34, 35DE6, 35D98, 35D4B, 35CFD, 35CB0, 35C62, 35C15, 35BC8, 35B7B, 35B2E, 35AE1, 35A94, 35A48, 359FB, 359AE, 35962, 35916, 358CA, 3587E, 35832, 357E6, 3579A, 3574E, 35703, 356B7, 3566C, 35621, 355D6, 3558A, 3553F, 354F5, 354AA, 3545F, 35415, 353CA, 35380, 35336, 352EC, 352A2, 35258, 3520E, 351C4, 3517B, 35131, 350E8, 3509E, 35055, 3500C, 34FC3, 34F7A, 34F32, 34EE9, 34EA0, 34E58, 34E10, 34DC7, 34D7F, 34D37, 34CEF, 34CA8, 34C60, 34C18, 34BD1, 34B89, 34B42, 34AFB, 34AB4, 34A6D, 34A26, 349E0, 34999, 34953, 3490C, 348C6, 34880, 3483A, 347F4, 347AE, 34768, 34723, 346DD, 34698, 34652, 3460D, 345C8, 34583, 3453F, 344FA, 344B5, 34471, 3442C, 343E8, 343A4, 34360, 3431C, 342D8, 34295, 34251, 3420E, 341CA, 34187, 34144, 34101, 340BE, 3407B, 34039, 33FF6, 33FB4, 33F71, 33F2F, 33EED, 33EAB, 33E69, 33E28, 33DE6, 33DA4, 33D63, 33D22, 33CE1, 33CA0, 33C5F, 33C1E, 33BDD, 33B9D, 33B5C, 33B1C, 33ADC, 33A9C, 33A5C, 33A1C, 339DC, 3399D, 3395D, 3391E, 338DF, 3389F, 33860, 33822, 337E3, 337A4, 33766, 33727, 336E9, 336AB, 3366D, 3362F, 335F1, 335B3, 33576, 33539, 334FB, 334BE, 33481, 33444, 33407, 333CB, 3338E, 33352, 33315, 332D9, 3329D, 33261, 33225, 331E9, 331AE, 33172, 33137, 330FC, 330C1, 33086, 3304B, 33010, 32FD6, 32F9B, 32F61, 32F27, 32EED, 32EB3, 32E79, 32E3F, 32E06, 32DCC, 32D93, 32D5A, 32D21, 32CE8, 32CAF, 32C76, 32C3E, 32C05, 32BCD, 32B95, 32B5D, 32B25, 32AED, 32AB5, 32A7E, 32A46, 32A0F, 329D8, 329A1, 3296A, 32933, 328FD, 328C6, 32890, 3285A, 32824, 327EE, 327B8, 32782, 3274C, 32717, 326E2, 326AC, 32677, 32642, 3260E, 325D9, 325A4, 32570, 3253C, 32508, 324D4, 324A0, 3246C, 32438, 32405, 323D1, 3239E, 3236B, 32338, 32305, 322D3, 322A0, 3226E, 3223B, 32209, 321D7, 321A5, 32174, 32142, 32110, 320DF, 320AE, 3207D, 3204C, 3201B, 31FEA, 31FBA, 31F89, 31F59, 31F29, 31EF9, 31EC9, 31E99, 31E6A, 31E3A, 31E0B, 31DDC, 31DAD, 31D7E, 31D4F, 31D21, 31CF2, 31CC4, 31C95, 31C67, 31C39, 31C0C, 31BDE, 31BB0, 31B83, 31B56, 31B29, 31AFC, 31ACF, 31AA2, 31A75, 31A49, 31A1D, 319F0, 319C4, 31999, 3196D, 31941, 31916, 318EA, 318BF, 31894, 31869, 3183E, 31814, 317E9, 317BF, 31795, 3176B, 31741, 31717, 316ED, 316C4, 3169A, 31671, 31648, 3161F, 315F6, 315CE, 315A5, 3157D, 31555, 3152C, 31504, 314DD, 314B5, 3148D, 31466, 3143F, 31418, 313F1, 313CA, 313A3, 3137D, 31356, 31330, 3130A, 312E4, 312BE, 31298, 31273, 3124D, 31228, 31203, 311DE, 311B9, 31195, 31170, 3114C, 31127, 31103, 310DF, 310BB, 31098, 31074, 31051, 3102E, 3100B, 30FE8, 30FC5, 30FA2, 30F80, 30F5D, 30F3B, 30F19, 30EF7, 30ED5, 30EB4, 30E92, 30E71, 30E4F, 30E2E, 30E0D, 30DED, 30DCC, 30DAC, 30D8B, 30D6B, 30D4B, 30D2B, 30D0B, 30CEC, 30CCC, 30CAD, 30C8E, 30C6F, 30C50, 30C31, 30C13, 30BF4, 30BD6, 30BB8, 30B9A, 30B7C, 30B5E, 30B41, 30B23, 30B06, 30AE9, 30ACC, 30AAF, 30A92, 30A76, 30A5A, 30A3D, 30A21, 30A05, 309EA, 309CE, 309B2, 30997, 3097C, 30961, 30946, 3092B, 30911, 308F6, 308DC, 308C2, 308A8, 3088E, 30874, 3085B, 30841, 30828, 3080F, 307F6, 307DD, 307C5, 307AC, 30794, 3077B, 30763, 3074C, 30734, 3071C, 30705, 306ED, 306D6, 306BF, 306A8, 30692, 3067B, 30665, 3064E, 30638, 30622, 3060D, 305F7, 305E1, 305CC, 305B7, 305A2, 3058D, 30578, 30564, 3054F, 3053B, 30527, 30513, 304FF, 304EB, 304D8, 304C4, 304B1, 3049E, 3048B, 30478, 30466, 30453, 30441, 3042F, 3041D, 3040B, 303F9, 303E8, 303D6, 303C5, 303B4, 303A3, 30392, 30381, 30371, 30360, 30350, 30340, 30330, 30321, 30311, 30302, 302F2, 302E3, 302D4, 302C5, 302B7, 302A8, 3029A, 3028C, 3027D, 30270, 30262, 30254, 30247, 30239, 3022C, 3021F, 30212, 30206, 301F9, 301ED, 301E1, 301D5, 301C9, 301BD, 301B1, 301A6, 3019A, 3018F, 30184, 30179, 3016F, 30164, 3015A, 30150, 30146, 3013C, 30132, 30128, 3011F, 30115, 3010C, 30103, 300FA, 300F2, 300E9, 300E1, 300D8, 300D0, 300C8, 300C1, 300B9, 300B2, 300AA, 300A3, 3009C, 30095, 3008F, 30088, 30082, 3007B, 30075, 3006F, 3006A, 30064, 3005E, 30059, 30054, 3004F, 3004A, 30045, 30041, 3003C, 30038, 30034, 30030, 3002C, 30029, 30025, 30022, 3001F, 3001C, 30019, 30016, 30014, 30011, 3000F, 3000D, 3000B, 30009, 30008, 30006, 30005, 30004, 30003, 30002, 30001, 30001, 30000, 30000;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_20e717c89c14bf34',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a540896a090050eaf2fa031ba08b3b2d',
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
      'core_name0' => 'bmg_33_20e717c89c14bf34',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 3FF9B, 3FF37, 3FED2, 3FE6E, 3FE09, 3FDA5, 3FD40, 3FCDC, 3FC77, 3FC13, 3FBAE, 3FB4A, 3FAE5, 3FA81, 3FA1C, 3F9B8, 3F953, 3F8EF, 3F88A, 3F826, 3F7C1, 3F75D, 3F6F8, 3F694, 3F62F, 3F5CB, 3F566, 3F502, 3F49E, 3F439, 3F3D5, 3F370, 3F30C, 3F2A7, 3F243, 3F1DF, 3F17A, 3F116, 3F0B2, 3F04D, 3EFE9, 3EF85, 3EF20, 3EEBC, 3EE58, 3EDF3, 3ED8F, 3ED2B, 3ECC7, 3EC62, 3EBFE, 3EB9A, 3EB36, 3EAD2, 3EA6D, 3EA09, 3E9A5, 3E941, 3E8DD, 3E879, 3E815, 3E7B0, 3E74C, 3E6E8, 3E684, 3E620, 3E5BC, 3E558, 3E4F4, 3E490, 3E42C, 3E3C8, 3E365, 3E301, 3E29D, 3E239, 3E1D5, 3E171, 3E10D, 3E0AA, 3E046, 3DFE2, 3DF7E, 3DF1B, 3DEB7, 3DE53, 3DDF0, 3DD8C, 3DD29, 3DCC5, 3DC61, 3DBFE, 3DB9A, 3DB37, 3DAD3, 3DA70, 3DA0C, 3D9A9, 3D946, 3D8E2, 3D87F, 3D81C, 3D7B8, 3D755, 3D6F2, 3D68F, 3D62B, 3D5C8, 3D565, 3D502, 3D49F, 3D43C, 3D3D9, 3D376, 3D313, 3D2B0, 3D24D, 3D1EA, 3D187, 3D124, 3D0C1, 3D05F, 3CFFC, 3CF99, 3CF36, 3CED4, 3CE71, 3CE0F, 3CDAC, 3CD49, 3CCE7, 3CC84, 3CC22, 3CBC0, 3CB5D, 3CAFB, 3CA98, 3CA36, 3C9D4, 3C972, 3C90F, 3C8AD, 3C84B, 3C7E9, 3C787, 3C725, 3C6C3, 3C661, 3C5FF, 3C59D, 3C53B, 3C4D9, 3C478, 3C416, 3C3B4, 3C352, 3C2F1, 3C28F, 3C22E, 3C1CC, 3C16B, 3C109, 3C0A8, 3C046, 3BFE5, 3BF84, 3BF22, 3BEC1, 3BE60, 3BDFF, 3BD9E, 3BD3D, 3BCDC, 3BC7B, 3BC1A, 3BBB9, 3BB58, 3BAF7, 3BA96, 3BA35, 3B9D5, 3B974, 3B914, 3B8B3, 3B852, 3B7F2, 3B791, 3B731, 3B6D1, 3B670, 3B610, 3B5B0, 3B550, 3B4F0, 3B48F, 3B42F, 3B3CF, 3B370, 3B310, 3B2B0, 3B250, 3B1F0, 3B190, 3B131, 3B0D1, 3B072, 3B012, 3AFB3, 3AF53, 3AEF4, 3AE94, 3AE35, 3ADD6, 3AD77, 3AD18, 3ACB8, 3AC59, 3ABFA, 3AB9C, 3AB3D, 3AADE, 3AA7F, 3AA20, 3A9C2, 3A963, 3A904, 3A8A6, 3A847, 3A7E9, 3A78B, 3A72C, 3A6CE, 3A670, 3A612, 3A5B4, 3A556, 3A4F8, 3A49A, 3A43C, 3A3DE, 3A380, 3A322, 3A2C5, 3A267, 3A20A, 3A1AC, 3A14F, 3A0F1, 3A094, 3A037, 39FDA, 39F7C, 39F1F, 39EC2, 39E65, 39E08, 39DAC, 39D4F, 39CF2, 39C95, 39C39, 39BDC, 39B80, 39B23, 39AC7, 39A6B, 39A0E, 399B2, 39956, 398FA, 3989E, 39842, 397E6, 3978A, 3972F, 396D3, 39677, 3961C, 395C0, 39565, 3950A, 394AE, 39453, 393F8, 3939D, 39342, 392E7, 3928C, 39231, 391D6, 3917B, 39121, 390C6, 3906C, 39011, 38FB7, 38F5D, 38F02, 38EA8, 38E4E, 38DF4, 38D9A, 38D40, 38CE6, 38C8D, 38C33, 38BD9, 38B80, 38B26, 38ACD, 38A73, 38A1A, 389C1, 38968, 3890F, 388B6, 3885D, 38804, 387AB, 38753, 386FA, 386A1, 38649, 385F0, 38598, 38540, 384E8, 38490, 38438, 383E0, 38388, 38330, 382D8, 38281, 38229, 381D1, 3817A, 38123, 380CB, 38074, 3801D, 37FC6, 37F6F, 37F18, 37EC1, 37E6B, 37E14, 37DBD, 37D67, 37D10, 37CBA, 37C64, 37C0E, 37BB7, 37B61, 37B0B, 37AB6, 37A60, 37A0A, 379B4, 3795F, 37909, 378B4, 3785F, 3780A, 377B4, 3775F, 3770A, 376B6, 37661, 3760C, 375B7, 37563, 3750E, 374BA, 37466, 37411, 373BD, 37369, 37315, 372C1, 3726D, 3721A, 371C6, 37173, 3711F, 370CC, 37078, 37025, 36FD2, 36F7F, 36F2C, 36ED9, 36E87, 36E34, 36DE1, 36D8F, 36D3C, 36CEA, 36C98, 36C46, 36BF4, 36BA2, 36B50, 36AFE, 36AAC, 36A5B, 36A09, 369B8, 36966, 36915, 368C4, 36873, 36822, 367D1, 36780, 36730, 366DF, 3668E, 3663E, 365EE, 3659D, 3654D, 364FD, 364AD, 3645D, 3640E, 363BE, 3636E, 3631F, 362CF, 36280, 36231, 361E2, 36193, 36144, 360F5, 360A6, 36058, 36009, 35FBB, 35F6C, 35F1E, 35ED0, 35E82, 35E34, 35DE6, 35D98, 35D4B, 35CFD, 35CB0, 35C62, 35C15, 35BC8, 35B7B, 35B2E, 35AE1, 35A94, 35A48, 359FB, 359AE, 35962, 35916, 358CA, 3587E, 35832, 357E6, 3579A, 3574E, 35703, 356B7, 3566C, 35621, 355D6, 3558A, 3553F, 354F5, 354AA, 3545F, 35415, 353CA, 35380, 35336, 352EC, 352A2, 35258, 3520E, 351C4, 3517B, 35131, 350E8, 3509E, 35055, 3500C, 34FC3, 34F7A, 34F32, 34EE9, 34EA0, 34E58, 34E10, 34DC7, 34D7F, 34D37, 34CEF, 34CA8, 34C60, 34C18, 34BD1, 34B89, 34B42, 34AFB, 34AB4, 34A6D, 34A26, 349E0, 34999, 34953, 3490C, 348C6, 34880, 3483A, 347F4, 347AE, 34768, 34723, 346DD, 34698, 34652, 3460D, 345C8, 34583, 3453F, 344FA, 344B5, 34471, 3442C, 343E8, 343A4, 34360, 3431C, 342D8, 34295, 34251, 3420E, 341CA, 34187, 34144, 34101, 340BE, 3407B, 34039, 33FF6, 33FB4, 33F71, 33F2F, 33EED, 33EAB, 33E69, 33E28, 33DE6, 33DA4, 33D63, 33D22, 33CE1, 33CA0, 33C5F, 33C1E, 33BDD, 33B9D, 33B5C, 33B1C, 33ADC, 33A9C, 33A5C, 33A1C, 339DC, 3399D, 3395D, 3391E, 338DF, 3389F, 33860, 33822, 337E3, 337A4, 33766, 33727, 336E9, 336AB, 3366D, 3362F, 335F1, 335B3, 33576, 33539, 334FB, 334BE, 33481, 33444, 33407, 333CB, 3338E, 33352, 33315, 332D9, 3329D, 33261, 33225, 331E9, 331AE, 33172, 33137, 330FC, 330C1, 33086, 3304B, 33010, 32FD6, 32F9B, 32F61, 32F27, 32EED, 32EB3, 32E79, 32E3F, 32E06, 32DCC, 32D93, 32D5A, 32D21, 32CE8, 32CAF, 32C76, 32C3E, 32C05, 32BCD, 32B95, 32B5D, 32B25, 32AED, 32AB5, 32A7E, 32A46, 32A0F, 329D8, 329A1, 3296A, 32933, 328FD, 328C6, 32890, 3285A, 32824, 327EE, 327B8, 32782, 3274C, 32717, 326E2, 326AC, 32677, 32642, 3260E, 325D9, 325A4, 32570, 3253C, 32508, 324D4, 324A0, 3246C, 32438, 32405, 323D1, 3239E, 3236B, 32338, 32305, 322D3, 322A0, 3226E, 3223B, 32209, 321D7, 321A5, 32174, 32142, 32110, 320DF, 320AE, 3207D, 3204C, 3201B, 31FEA, 31FBA, 31F89, 31F59, 31F29, 31EF9, 31EC9, 31E99, 31E6A, 31E3A, 31E0B, 31DDC, 31DAD, 31D7E, 31D4F, 31D21, 31CF2, 31CC4, 31C95, 31C67, 31C39, 31C0C, 31BDE, 31BB0, 31B83, 31B56, 31B29, 31AFC, 31ACF, 31AA2, 31A75, 31A49, 31A1D, 319F0, 319C4, 31999, 3196D, 31941, 31916, 318EA, 318BF, 31894, 31869, 3183E, 31814, 317E9, 317BF, 31795, 3176B, 31741, 31717, 316ED, 316C4, 3169A, 31671, 31648, 3161F, 315F6, 315CE, 315A5, 3157D, 31555, 3152C, 31504, 314DD, 314B5, 3148D, 31466, 3143F, 31418, 313F1, 313CA, 313A3, 3137D, 31356, 31330, 3130A, 312E4, 312BE, 31298, 31273, 3124D, 31228, 31203, 311DE, 311B9, 31195, 31170, 3114C, 31127, 31103, 310DF, 310BB, 31098, 31074, 31051, 3102E, 3100B, 30FE8, 30FC5, 30FA2, 30F80, 30F5D, 30F3B, 30F19, 30EF7, 30ED5, 30EB4, 30E92, 30E71, 30E4F, 30E2E, 30E0D, 30DED, 30DCC, 30DAC, 30D8B, 30D6B, 30D4B, 30D2B, 30D0B, 30CEC, 30CCC, 30CAD, 30C8E, 30C6F, 30C50, 30C31, 30C13, 30BF4, 30BD6, 30BB8, 30B9A, 30B7C, 30B5E, 30B41, 30B23, 30B06, 30AE9, 30ACC, 30AAF, 30A92, 30A76, 30A5A, 30A3D, 30A21, 30A05, 309EA, 309CE, 309B2, 30997, 3097C, 30961, 30946, 3092B, 30911, 308F6, 308DC, 308C2, 308A8, 3088E, 30874, 3085B, 30841, 30828, 3080F, 307F6, 307DD, 307C5, 307AC, 30794, 3077B, 30763, 3074C, 30734, 3071C, 30705, 306ED, 306D6, 306BF, 306A8, 30692, 3067B, 30665, 3064E, 30638, 30622, 3060D, 305F7, 305E1, 305CC, 305B7, 305A2, 3058D, 30578, 30564, 3054F, 3053B, 30527, 30513, 304FF, 304EB, 304D8, 304C4, 304B1, 3049E, 3048B, 30478, 30466, 30453, 30441, 3042F, 3041D, 3040B, 303F9, 303E8, 303D6, 303C5, 303B4, 303A3, 30392, 30381, 30371, 30360, 30350, 30340, 30330, 30321, 30311, 30302, 302F2, 302E3, 302D4, 302C5, 302B7, 302A8, 3029A, 3028C, 3027D, 30270, 30262, 30254, 30247, 30239, 3022C, 3021F, 30212, 30206, 301F9, 301ED, 301E1, 301D5, 301C9, 301BD, 301B1, 301A6, 3019A, 3018F, 30184, 30179, 3016F, 30164, 3015A, 30150, 30146, 3013C, 30132, 30128, 3011F, 30115, 3010C, 30103, 300FA, 300F2, 300E9, 300E1, 300D8, 300D0, 300C8, 300C1, 300B9, 300B2, 300AA, 300A3, 3009C, 30095, 3008F, 30088, 30082, 3007B, 30075, 3006F, 3006A, 30064, 3005E, 30059, 30054, 3004F, 3004A, 30045, 30041, 3003C, 30038, 30034, 30030, 3002C, 30029, 30025, 30022, 3001F, 3001C, 30019, 30016, 30014, 30011, 3000F, 3000D, 3000B, 30009, 30008, 30006, 30005, 30004, 30003, 30002, 30001, 30001, 30000, 30000, 30000, 30000, 30000, 30001, 30001, 30002, 30003, 30004, 30005, 30006, 30008, 30009, 3000B, 3000D, 3000F, 30011, 30014, 30016, 30019, 3001C, 3001F, 30022, 30025, 30029, 3002C, 30030, 30034, 30038, 3003C, 30041, 30045, 3004A, 3004F, 30054, 30059, 3005E, 30064, 3006A, 3006F, 30075, 3007B, 30082, 30088, 3008F, 30095, 3009C, 300A3, 300AA, 300B2, 300B9, 300C1, 300C8, 300D0, 300D8, 300E1, 300E9, 300F2, 300FA, 30103, 3010C, 30115, 3011F, 30128, 30132, 3013C, 30146, 30150, 3015A, 30164, 3016F, 30179, 30184, 3018F, 3019A, 301A6, 301B1, 301BD, 301C9, 301D5, 301E1, 301ED, 301F9, 30206, 30212, 3021F, 3022C, 30239, 30247, 30254, 30262, 30270, 3027D, 3028C, 3029A, 302A8, 302B7, 302C5, 302D4, 302E3, 302F2, 30302, 30311, 30321, 30330, 30340, 30350, 30360, 30371, 30381, 30392, 303A3, 303B4, 303C5, 303D6, 303E8, 303F9, 3040B, 3041D, 3042F, 30441, 30453, 30466, 30478, 3048B, 3049E, 304B1, 304C4, 304D8, 304EB, 304FF, 30513, 30527, 3053B, 3054F, 30564, 30578, 3058D, 305A2, 305B7, 305CC, 305E1, 305F7, 3060D, 30622, 30638, 3064E, 30665, 3067B, 30692, 306A8, 306BF, 306D6, 306ED, 30705, 3071C, 30734, 3074C, 30763, 3077B, 30794, 307AC, 307C5, 307DD, 307F6, 3080F, 30828, 30841, 3085B, 30874, 3088E, 308A8, 308C2, 308DC, 308F6, 30911, 3092B, 30946, 30961, 3097C, 30997, 309B2, 309CE, 309EA, 30A05, 30A21, 30A3D, 30A5A, 30A76, 30A92, 30AAF, 30ACC, 30AE9, 30B06, 30B23, 30B41, 30B5E, 30B7C, 30B9A, 30BB8, 30BD6, 30BF4, 30C13, 30C31, 30C50, 30C6F, 30C8E, 30CAD, 30CCC, 30CEC, 30D0B, 30D2B, 30D4B, 30D6B, 30D8B, 30DAC, 30DCC, 30DED, 30E0D, 30E2E, 30E4F, 30E71, 30E92, 30EB4, 30ED5, 30EF7, 30F19, 30F3B, 30F5D, 30F80, 30FA2, 30FC5, 30FE8, 3100B, 3102E, 31051, 31074, 31098, 310BB, 310DF, 31103, 31127, 3114C, 31170, 31195, 311B9, 311DE, 31203, 31228, 3124D, 31273, 31298, 312BE, 312E4, 3130A, 31330, 31356, 3137D, 313A3, 313CA, 313F1, 31418, 3143F, 31466, 3148D, 314B5, 314DD, 31504, 3152C, 31555, 3157D, 315A5, 315CE, 315F6, 3161F, 31648, 31671, 3169A, 316C4, 316ED, 31717, 31741, 3176B, 31795, 317BF, 317E9, 31814, 3183E, 31869, 31894, 318BF, 318EA, 31916, 31941, 3196D, 31999, 319C4, 319F0, 31A1D, 31A49, 31A75, 31AA2, 31ACF, 31AFC, 31B29, 31B56, 31B83, 31BB0, 31BDE, 31C0C, 31C39, 31C67, 31C95, 31CC4, 31CF2, 31D21, 31D4F, 31D7E, 31DAD, 31DDC, 31E0B, 31E3A, 31E6A, 31E99, 31EC9, 31EF9, 31F29, 31F59, 31F89, 31FBA, 31FEA, 3201B, 3204C, 3207D, 320AE, 320DF, 32110, 32142, 32174, 321A5, 321D7, 32209, 3223B, 3226E, 322A0, 322D3, 32305, 32338, 3236B, 3239E, 323D1, 32405, 32438, 3246C, 324A0, 324D4, 32508, 3253C, 32570, 325A4, 325D9, 3260E, 32642, 32677, 326AC, 326E2, 32717, 3274C, 32782, 327B8, 327EE, 32824, 3285A, 32890, 328C6, 328FD, 32933, 3296A, 329A1, 329D8, 32A0F, 32A46, 32A7E, 32AB5, 32AED, 32B25, 32B5D, 32B95, 32BCD, 32C05, 32C3E, 32C76, 32CAF, 32CE8, 32D21, 32D5A, 32D93, 32DCC, 32E06, 32E3F, 32E79, 32EB3, 32EED, 32F27, 32F61, 32F9B, 32FD6, 33010, 3304B, 33086, 330C1, 330FC, 33137, 33172, 331AE, 331E9, 33225, 33261, 3329D, 332D9, 33315, 33352, 3338E, 333CB, 33407, 33444, 33481, 334BE, 334FB, 33539, 33576, 335B3, 335F1, 3362F, 3366D, 336AB, 336E9, 33727, 33766, 337A4, 337E3, 33822, 33860, 3389F, 338DF, 3391E, 3395D, 3399D, 339DC, 33A1C, 33A5C, 33A9C, 33ADC, 33B1C, 33B5C, 33B9D, 33BDD, 33C1E, 33C5F, 33CA0, 33CE1, 33D22, 33D63, 33DA4, 33DE6, 33E28, 33E69, 33EAB, 33EED, 33F2F, 33F71, 33FB4, 33FF6, 34039, 3407B, 340BE, 34101, 34144, 34187, 341CA, 3420E, 34251, 34295, 342D8, 3431C, 34360, 343A4, 343E8, 3442C, 34471, 344B5, 344FA, 3453F, 34583, 345C8, 3460D, 34652, 34698, 346DD, 34723, 34768, 347AE, 347F4, 3483A, 34880, 348C6, 3490C, 34953, 34999, 349E0, 34A26, 34A6D, 34AB4, 34AFB, 34B42, 34B89, 34BD1, 34C18, 34C60, 34CA8, 34CEF, 34D37, 34D7F, 34DC7, 34E10, 34E58, 34EA0, 34EE9, 34F32, 34F7A, 34FC3, 3500C, 35055, 3509E, 350E8, 35131, 3517B, 351C4, 3520E, 35258, 352A2, 352EC, 35336, 35380, 353CA, 35415, 3545F, 354AA, 354F5, 3553F, 3558A, 355D6, 35621, 3566C, 356B7, 35703, 3574E, 3579A, 357E6, 35832, 3587E, 358CA, 35916, 35962, 359AE, 359FB, 35A48, 35A94, 35AE1, 35B2E, 35B7B, 35BC8, 35C15, 35C62, 35CB0, 35CFD, 35D4B, 35D98, 35DE6, 35E34, 35E82, 35ED0, 35F1E, 35F6C, 35FBB, 36009, 36058, 360A6, 360F5, 36144, 36193, 361E2, 36231, 36280, 362CF, 3631F, 3636E, 363BE, 3640E, 3645D, 364AD, 364FD, 3654D, 3659D, 365EE, 3663E, 3668E, 366DF, 36730, 36780, 367D1, 36822, 36873, 368C4, 36915, 36966, 369B8, 36A09, 36A5B, 36AAC, 36AFE, 36B50, 36BA2, 36BF4, 36C46, 36C98, 36CEA, 36D3C, 36D8F, 36DE1, 36E34, 36E87, 36ED9, 36F2C, 36F7F, 36FD2, 37025, 37078, 370CC, 3711F, 37173, 371C6, 3721A, 3726D, 372C1, 37315, 37369, 373BD, 37411, 37466, 374BA, 3750E, 37563, 375B7, 3760C, 37661, 376B6, 3770A, 3775F, 377B4, 3780A, 3785F, 378B4, 37909, 3795F, 379B4, 37A0A, 37A60, 37AB6, 37B0B, 37B61, 37BB7, 37C0E, 37C64, 37CBA, 37D10, 37D67, 37DBD, 37E14, 37E6B, 37EC1, 37F18, 37F6F, 37FC6, 3801D, 38074, 380CB, 38123, 3817A, 381D1, 38229, 38281, 382D8, 38330, 38388, 383E0, 38438, 38490, 384E8, 38540, 38598, 385F0, 38649, 386A1, 386FA, 38753, 387AB, 38804, 3885D, 388B6, 3890F, 38968, 389C1, 38A1A, 38A73, 38ACD, 38B26, 38B80, 38BD9, 38C33, 38C8D, 38CE6, 38D40, 38D9A, 38DF4, 38E4E, 38EA8, 38F02, 38F5D, 38FB7, 39011, 3906C, 390C6, 39121, 3917B, 391D6, 39231, 3928C, 392E7, 39342, 3939D, 393F8, 39453, 394AE, 3950A, 39565, 395C0, 3961C, 39677, 396D3, 3972F, 3978A, 397E6, 39842, 3989E, 398FA, 39956, 399B2, 39A0E, 39A6B, 39AC7, 39B23, 39B80, 39BDC, 39C39, 39C95, 39CF2, 39D4F, 39DAC, 39E08, 39E65, 39EC2, 39F1F, 39F7C, 39FDA, 3A037, 3A094, 3A0F1, 3A14F, 3A1AC, 3A20A, 3A267, 3A2C5, 3A322, 3A380, 3A3DE, 3A43C, 3A49A, 3A4F8, 3A556, 3A5B4, 3A612, 3A670, 3A6CE, 3A72C, 3A78B, 3A7E9, 3A847, 3A8A6, 3A904, 3A963, 3A9C2, 3AA20, 3AA7F, 3AADE, 3AB3D, 3AB9C, 3ABFA, 3AC59, 3ACB8, 3AD18, 3AD77, 3ADD6, 3AE35, 3AE94, 3AEF4, 3AF53, 3AFB3, 3B012, 3B072, 3B0D1, 3B131, 3B190, 3B1F0, 3B250, 3B2B0, 3B310, 3B370, 3B3CF, 3B42F, 3B48F, 3B4F0, 3B550, 3B5B0, 3B610, 3B670, 3B6D1, 3B731, 3B791, 3B7F2, 3B852, 3B8B3, 3B914, 3B974, 3B9D5, 3BA35, 3BA96, 3BAF7, 3BB58, 3BBB9, 3BC1A, 3BC7B, 3BCDC, 3BD3D, 3BD9E, 3BDFF, 3BE60, 3BEC1, 3BF22, 3BF84, 3BFE5, 3C046, 3C0A8, 3C109, 3C16B, 3C1CC, 3C22E, 3C28F, 3C2F1, 3C352, 3C3B4, 3C416, 3C478, 3C4D9, 3C53B, 3C59D, 3C5FF, 3C661, 3C6C3, 3C725, 3C787, 3C7E9, 3C84B, 3C8AD, 3C90F, 3C972, 3C9D4, 3CA36, 3CA98, 3CAFB, 3CB5D, 3CBC0, 3CC22, 3CC84, 3CCE7, 3CD49, 3CDAC, 3CE0F, 3CE71, 3CED4, 3CF36, 3CF99, 3CFFC, 3D05F, 3D0C1, 3D124, 3D187, 3D1EA, 3D24D, 3D2B0, 3D313, 3D376, 3D3D9, 3D43C, 3D49F, 3D502, 3D565, 3D5C8, 3D62B, 3D68F, 3D6F2, 3D755, 3D7B8, 3D81C, 3D87F, 3D8E2, 3D946, 3D9A9, 3DA0C, 3DA70, 3DAD3, 3DB37, 3DB9A, 3DBFE, 3DC61, 3DCC5, 3DD29, 3DD8C, 3DDF0, 3DE53, 3DEB7, 3DF1B, 3DF7E, 3DFE2, 3E046, 3E0AA, 3E10D, 3E171, 3E1D5, 3E239, 3E29D, 3E301, 3E365, 3E3C8, 3E42C, 3E490, 3E4F4, 3E558, 3E5BC, 3E620, 3E684, 3E6E8, 3E74C, 3E7B0, 3E815, 3E879, 3E8DD, 3E941, 3E9A5, 3EA09, 3EA6D, 3EAD2, 3EB36, 3EB9A, 3EBFE, 3EC62, 3ECC7, 3ED2B, 3ED8F, 3EDF3, 3EE58, 3EEBC, 3EF20, 3EF85, 3EFE9, 3F04D, 3F0B2, 3F116, 3F17A, 3F1DF, 3F243, 3F2A7, 3F30C, 3F370, 3F3D5, 3F439, 3F49E, 3F502, 3F566, 3F5CB, 3F62F, 3F694, 3F6F8, 3F75D, 3F7C1, 3F826, 3F88A, 3F8EF, 3F953, 3F9B8, 3FA1C, 3FA81, 3FAE5, 3FB4A, 3FBAE, 3FC13, 3FC77, 3FCDC, 3FD40, 3FDA5, 3FE09, 3FE6E, 3FED2, 3FF37, 3FF9B;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_d9c93b1284ba91ff',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '8dfbcfaf16993e68edfd16e600f694b0',
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
      'core_name0' => 'bmg_33_d9c93b1284ba91ff',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '3bc58ad47e729d74dcf679eae6203eb0',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 10000, 10000, 10000, 10000, 10000, 10000, FFFF, FFFF, FFFF, FFFE, FFFE, FFFE, FFFD, FFFD, FFFC, FFFC, FFFB, FFFA, FFFA, FFF9, FFF8, FFF7, FFF7, FFF6, FFF5, FFF4, FFF3, FFF2, FFF1, FFF0, FFEF, FFED, FFEC, FFEB, FFEA, FFE8, FFE7, FFE6, FFE4, FFE3, FFE1, FFE0, FFDE, FFDC, FFDB, FFD9, FFD7, FFD5, FFD4, FFD2, FFD0, FFCE, FFCC, FFCA, FFC8, FFC6, FFC4, FFC1, FFBF, FFBD, FFBB, FFB8, FFB6, FFB4, FFB1, FFAF, FFAC, FFA9, FFA7, FFA4, FFA2, FF9F, FF9C, FF99, FF96, FF94, FF91, FF8E, FF8B, FF88, FF85, FF82, FF7E, FF7B, FF78, FF75, FF71, FF6E, FF6B, FF67, FF64, FF60, FF5D, FF59, FF56, FF52, FF4E, FF4B, FF47, FF43, FF3F, FF3B, FF38, FF34, FF30, FF2C, FF28, FF23, FF1F, FF1B, FF17, FF13, FF0E, FF0A, FF06, FF01, FEFD, FEF8, FEF4, FEEF, FEEB, FEE6, FEE1, FEDD, FED8, FED3, FECE, FEC9, FEC4, FEBF, FEBA, FEB5, FEB0, FEAB, FEA6, FEA1, FE9C, FE97, FE91, FE8C, FE87, FE81, FE7C, FE76, FE71, FE6B, FE66, FE60, FE5A, FE55, FE4F, FE49, FE43, FE3D, FE37, FE31, FE2B, FE25, FE1F, FE19, FE13, FE0D, FE07, FE01, FDFA, FDF4, FDEE, FDE7, FDE1, FDDA, FDD4, FDCD, FDC7, FDC0, FDB9, FDB3, FDAC, FDA5, FD9E, FD97, FD90, FD89, FD83, FD7C, FD74, FD6D, FD66, FD5F, FD58, FD51, FD49, FD42, FD3B, FD33, FD2C, FD24, FD1D, FD15, FD0E, FD06, FCFE, FCF7, FCEF, FCE7, FCDF, FCD8, FCD0, FCC8, FCC0, FCB8, FCB0, FCA8, FCA0, FC97, FC8F, FC87, FC7F, FC76, FC6E, FC66, FC5D, FC55, FC4C, FC44, FC3B, FC33, FC2A, FC21, FC18, FC10, FC07, FBFE, FBF5, FBEC, FBE3, FBDA, FBD1, FBC8, FBBF, FBB6, FBAD, FBA4, FB9A, FB91, FB88, FB7E, FB75, FB6B, FB62, FB58, FB4F, FB45, FB3C, FB32, FB28, FB1F, FB15, FB0B, FB01, FAF7, FAED, FAE3, FAD9, FACF, FAC5, FABB, FAB1, FAA7, FA9C, FA92, FA88, FA7D, FA73, FA69, FA5E, FA54, FA49, FA3E, FA34, FA29, FA1F, FA14, FA09, F9FE, F9F3, F9E8, F9DE, F9D3, F9C8, F9BD, F9B2, F9A6, F99B, F990, F985, F97A, F96E, F963, F958, F94C, F941, F935, F92A, F91E, F913, F907, F8FB, F8F0, F8E4, F8D8, F8CC, F8C0, F8B4, F8A9, F89D, F891, F885, F878, F86C, F860, F854, F848, F83B, F82F, F823, F816, F80A, F7FE, F7F1, F7E5, F7D8, F7CB, F7BF, F7B2, F7A5, F799, F78C, F77F, F772, F765, F758, F74B, F73E, F731, F724, F717, F70A, F6FD, F6EF, F6E2, F6D5, F6C7, F6BA, F6AD, F69F, F692, F684, F677, F669, F65B, F64E, F640, F632, F624, F616, F609, F5FB, F5ED, F5DF, F5D1, F5C3, F5B5, F5A6, F598, F58A, F57C, F56E, F55F, F551, F543, F534, F526, F517, F509, F4FA, F4EB, F4DD, F4CE, F4BF, F4B1, F4A2, F493, F484, F475, F466, F457, F448, F439, F42A, F41B, F40C, F3FD, F3ED, F3DE, F3CF, F3C0, F3B0, F3A1, F391, F382, F372, F363, F353, F343, F334, F324, F314, F304, F2F5, F2E5, F2D5, F2C5, F2B5, F2A5, F295, F285, F275, F265, F254, F244, F234, F224, F213, F203, F1F3, F1E2, F1D2, F1C1, F1B1, F1A0, F18F, F17F, F16E, F15D, F14C, F13C, F12B, F11A, F109, F0F8, F0E7, F0D6, F0C5, F0B4, F0A3, F092, F080, F06F, F05E, F04D, F03B, F02A, F018, F007, EFF5, EFE4, EFD2, EFC1, EFAF, EF9D, EF8C, EF7A, EF68, EF56, EF45, EF33, EF21, EF0F, EEFD, EEEB, EED9, EEC7, EEB4, EEA2, EE90, EE7E, EE6B, EE59, EE47, EE34, EE22, EE0F, EDFD, EDEA, EDD8, EDC5, EDB3, EDA0, ED8D, ED7A, ED68, ED55, ED42, ED2F, ED1C, ED09, ECF6, ECE3, ECD0, ECBD, ECAA, EC97, EC83, EC70, EC5D, EC4A, EC36, EC23, EC0F, EBFC, EBE8, EBD5, EBC1, EBAE, EB9A, EB86, EB73, EB5F, EB4B, EB37, EB23, EB0F, EAFC, EAE8, EAD4, EAC0, EAAB, EA97, EA83, EA6F, EA5B, EA47, EA32, EA1E, EA0A, E9F5, E9E1, E9CC, E9B8, E9A3, E98F, E97A, E966, E951, E93C, E927, E913, E8FE, E8E9, E8D4, E8BF, E8AA, E895, E880, E86B, E856, E841, E82C, E817, E801, E7EC, E7D7, E7C2, E7AC, E797, E781, E76C, E756, E741, E72B, E716, E700, E6EA, E6D5, E6BF, E6A9, E693, E67D, E667, E652, E63C, E626, E610, E5F9, E5E3, E5CD, E5B7, E5A1, E58B, E574, E55E, E548, E531, E51B, E504, E4EE, E4D7, E4C1, E4AA, E494, E47D, E466, E450, E439, E422, E40B, E3F4, E3DE, E3C7, E3B0, E399, E382, E36B, E353, E33C, E325, E30E, E2F7, E2DF, E2C8, E2B1, E299, E282, E26B, E253, E23C, E224, E20D, E1F5, E1DD, E1C6, E1AE, E196, E17E, E167, E14F, E137, E11F, E107, E0EF, E0D7, E0BF, E0A7, E08F, E077, E05E, E046, E02E, E016, DFFD, DFE5, DFCD, DFB4, DF9C, DF83, DF6B, DF52, DF39, DF21, DF08, DEF0, DED7, DEBE, DEA5, DE8C, DE74, DE5B, DE42, DE29, DE10, DDF7, DDDE, DDC5, DDAB, DD92, DD79, DD60, DD47, DD2D, DD14, DCFB, DCE1, DCC8, DCAE, DC95, DC7B, DC62, DC48, DC2F, DC15, DBFB, DBE1, DBC8, DBAE, DB94, DB7A, DB60, DB46, DB2C, DB12, DAF8, DADE, DAC4, DAAA, DA90, DA76, DA5C, DA41, DA27, DA0D, D9F2, D9D8, D9BE, D9A3, D989, D96E, D954, D939, D91E, D904, D8E9, D8CE, D8B4, D899, D87E, D863, D848, D82D, D812, D7F8, D7DC, D7C1, D7A6, D78B, D770, D755, D73A, D71F, D703, D6E8, D6CD, D6B1, D696, D67A, D65F, D644, D628, D60C, D5F1, D5D5, D5BA, D59E, D582, D566, D54B, D52F, D513, D4F7, D4DB, D4BF, D4A3, D487, D46B, D44F, D433, D417, D3FB, D3DF, D3C2, D3A6, D38A, D36D, D351, D335, D318, D2FC, D2DF, D2C3, D2A6, D28A, D26D, D250, D234, D217, D1FA, D1DE, D1C1, D1A4, D187, D16A, D14D, D130, D113, D0F6, D0D9, D0BC, D09F, D082, D065, D047, D02A, D00D, CFF0, CFD2, CFB5, CF98, CF7A, CF5D, CF3F, CF22, CF04, CEE7, CEC9, CEAB, CE8E, CE70, CE52, CE34, CE17, CDF9, CDDB, CDBD, CD9F, CD81, CD63, CD45, CD27, CD09, CCEB, CCCD, CCAE, CC90, CC72, CC54, CC35, CC17, CBF9, CBDA, CBBC, CB9E, CB7F, CB61, CB42, CB23, CB05, CAE6, CAC7, CAA9, CA8A, CA6B, CA4D, CA2E, CA0F, C9F0, C9D1, C9B2, C993, C974, C955, C936, C917, C8F8, C8D9, C8BA, C89A, C87B, C85C, C83C, C81D, C7FE, C7DE, C7BF, C7A0, C780, C761, C741, C721, C702, C6E2, C6C2, C6A3, C683, C663, C644, C624, C604, C5E4, C5C4, C5A4, C584, C564, C544, C524, C504, C4E4, C4C4, C4A4, C483, C463, C443, C423, C402, C3E2, C3C2, C3A1, C381, C360, C340, C31F, C2FF, C2DE, C2BE, C29D, C27C, C25C, C23B, C21A, C1F9, C1D8, C1B8, C197, C176, C155, C134, C113, C0F2, C0D1, C0B0, C08F, C06E, C04C, C02B, C00A, BFE9, BFC7, BFA6, BF85, BF63, BF42, BF21, BEFF, BEDE, BEBC, BE9B, BE79, BE57, BE36, BE14, BDF2, BDD1, BDAF, BD8D, BD6B, BD4A, BD28, BD06, BCE4, BCC2, BCA0, BC7E, BC5C, BC3A, BC18, BBF6, BBD4, BBB1, BB8F, BB6D, BB4B, BB28, BB06, BAE4, BAC1, BA9F, BA7D, BA5A, BA38, BA15, B9F3, B9D0, B9AE, B98B, B968, B946, B923, B900, B8DD, B8BB, B898, B875, B852, B82F, B80C, B7E9, B7C6, B7A3, B780, B75D, B73A, B717, B6F4, B6D1, B6AD, B68A, B667, B644, B620, B5FD, B5DA, B5B6, B593, B56F, B54C, B528, B505, B4E1, B4BE, B49A, B477, B453, B42F, B40B, B3E8, B3C4, B3A0, B37C, B358, B335, B311, B2ED, B2C9, B2A5, B281, B25D, B239, B215, B1F0, B1CC, B1A8, B184, B160, B13B, B117, B0F3, B0CE, B0AA, B086, B061, B03D, B018, AFF4, AFCF, AFAB, AF86, AF62, AF3D, AF18, AEF4, AECF, AEAA, AE85, AE61, AE3C, AE17, ADF2, ADCD, ADA8, AD83, AD5E, AD39, AD14, ACEF, ACCA, ACA5, AC80, AC5B, AC36, AC11, ABEB, ABC6, ABA1, AB7B, AB56, AB31, AB0B, AAE6, AAC1, AA9B, AA76, AA50, AA2A, AA05, A9DF, A9BA, A994, A96E, A949, A923, A8FD, A8D7, A8B2, A88C, A866, A840, A81A, A7F4, A7CE, A7A8, A782, A75C, A736, A710, A6EA, A6C4, A69E, A678, A652, A62B, A605, A5DF, A5B8, A592, A56C, A545, A51F, A4F9, A4D2, A4AC, A485, A45F, A438, A412, A3EB, A3C4, A39E, A377, A350, A32A, A303, A2DC, A2B5, A28E, A268, A241, A21A, A1F3, A1CC, A1A5, A17E, A157, A130, A109, A0E2, A0BB, A094, A06C, A045, A01E, 9FF7, 9FD0, 9FA8, 9F81, 9F5A, 9F32, 9F0B, 9EE3, 9EBC, 9E95, 9E6D, 9E46, 9E1E, 9DF7, 9DCF, 9DA7, 9D80, 9D58, 9D31, 9D09, 9CE1, 9CB9, 9C92, 9C6A, 9C42, 9C1A, 9BF2, 9BCA, 9BA3, 9B7B, 9B53, 9B2B, 9B03, 9ADB, 9AB3, 9A8B, 9A63, 9A3A, 9A12, 99EA, 99C2, 999A, 9972, 9949, 9921, 98F9, 98D0, 98A8, 9880, 9857, 982F, 9807, 97DE, 97B6, 978D, 9765, 973C, 9713, 96EB, 96C2, 969A, 9671, 9648, 9620, 95F7, 95CE, 95A5, 957D, 9554, 952B, 9502, 94D9, 94B0, 9487, 945E, 9435, 940C, 93E3, 93BA, 9391, 9368, 933F, 9316, 92ED, 92C4, 929A, 9271, 9248, 921F, 91F5, 91CC, 91A3, 9179, 9150, 9127, 90FD, 90D4, 90AA, 9081, 9057, 902E, 9004, 8FDB, 8FB1, 8F88, 8F5E, 8F34, 8F0B, 8EE1, 8EB7, 8E8D, 8E64, 8E3A, 8E10, 8DE6, 8DBC, 8D93, 8D69, 8D3F, 8D15, 8CEB, 8CC1, 8C97, 8C6D, 8C43, 8C19, 8BEF, 8BC5, 8B9A, 8B70, 8B46, 8B1C, 8AF2, 8AC7, 8A9D, 8A73, 8A49, 8A1E, 89F4, 89CA, 899F, 8975, 894A, 8920, 88F6, 88CB, 88A1, 8876, 884C, 8821, 87F6, 87CC, 87A1, 8777, 874C, 8721, 86F7, 86CC, 86A1, 8676, 864C, 8621, 85F6, 85CB, 85A0, 8575, 854A, 851F, 84F5, 84CA, 849F, 8474, 8449, 841D, 83F2, 83C7, 839C, 8371, 8346, 831B, 82F0, 82C4, 8299, 826E, 8243, 8217, 81EC, 81C1, 8195, 816A, 813F, 8113, 80E8, 80BC, 8091, 8066, 803A, 800F, 7FE3, 7FB7, 7F8C, 7F60, 7F35, 7F09, 7EDD, 7EB2, 7E86, 7E5A, 7E2F, 7E03, 7DD7, 7DAB, 7D7F, 7D54, 7D28, 7CFC, 7CD0, 7CA4, 7C78, 7C4C, 7C20, 7BF4, 7BC8, 7B9C, 7B70, 7B44, 7B18, 7AEC, 7AC0, 7A94, 7A68, 7A3C, 7A10, 79E3, 79B7, 798B, 795F, 7932, 7906, 78DA, 78AD, 7881, 7855, 7828, 77FC, 77D0, 77A3, 7777, 774A, 771E, 76F1, 76C5, 7698, 766C, 763F, 7612, 75E6, 75B9, 758D, 7560, 7533, 7507, 74DA, 74AD, 7480, 7454, 7427, 73FA, 73CD, 73A0, 7373, 7347, 731A, 72ED, 72C0, 7293, 7266, 7239, 720C, 71DF, 71B2, 7185, 7158, 712B, 70FE, 70D1, 70A3, 7076, 7049, 701C, 6FEF, 6FC2, 6F94, 6F67, 6F3A, 6F0D, 6EDF, 6EB2, 6E85, 6E57, 6E2A, 6DFC, 6DCF, 6DA2, 6D74, 6D47, 6D19, 6CEC, 6CBE, 6C91, 6C63, 6C36, 6C08, 6BDB, 6BAD, 6B7F, 6B52, 6B24, 6AF6, 6AC9, 6A9B, 6A6D, 6A40, 6A12, 69E4, 69B6, 6989, 695B, 692D, 68FF, 68D1, 68A3, 6876, 6848, 681A, 67EC, 67BE, 6790, 6762, 6734, 6706, 66D8, 66AA, 667C, 664E, 6620, 65F2, 65C3, 6595, 6567, 6539, 650B, 64DD, 64AE, 6480, 6452, 6424, 63F5, 63C7, 6399, 636B, 633C, 630E, 62E0, 62B1, 6283, 6254, 6226, 61F8, 61C9, 619B, 616C, 613E, 610F, 60E1, 60B2, 6084, 6055, 6026, 5FF8, 5FC9, 5F9B, 5F6C, 5F3D, 5F0F, 5EE0, 5EB1, 5E83, 5E54, 5E25, 5DF6, 5DC8, 5D99, 5D6A, 5D3B, 5D0C, 5CDE, 5CAF, 5C80, 5C51, 5C22, 5BF3, 5BC4, 5B95, 5B66, 5B37, 5B08, 5AD9, 5AAA, 5A7B, 5A4C, 5A1D, 59EE, 59BF, 5990, 5961, 5932, 5903, 58D4, 58A5, 5875, 5846, 5817, 57E8, 57B9, 5789, 575A, 572B, 56FC, 56CC, 569D, 566E, 563E, 560F, 55E0, 55B0, 5581, 5552, 5522, 54F3, 54C3, 5494, 5464, 5435, 5406, 53D6, 53A7, 5377, 5348, 5318, 52E8, 52B9, 5289, 525A, 522A, 51FB, 51CB, 519B, 516C, 513C, 510C, 50DD, 50AD, 507D, 504D, 501E, 4FEE, 4FBE, 4F8E, 4F5F, 4F2F, 4EFF, 4ECF, 4E9F, 4E70, 4E40, 4E10, 4DE0, 4DB0, 4D80, 4D50, 4D20, 4CF0, 4CC0, 4C90, 4C61, 4C31, 4C01, 4BD1, 4BA1, 4B71, 4B40, 4B10, 4AE0, 4AB0, 4A80, 4A50, 4A20, 49F0, 49C0, 4990, 495F, 492F, 48FF, 48CF, 489F, 486F, 483E, 480E, 47DE, 47AE, 477D, 474D, 471D, 46EC, 46BC, 468C, 465C, 462B, 45FB, 45CB, 459A, 456A, 4539, 4509, 44D9, 44A8, 4478, 4447, 4417, 43E6, 43B6, 4385, 4355, 4324, 42F4, 42C3, 4293, 4262, 4232, 4201, 41D1, 41A0, 416F, 413F, 410E, 40DE, 40AD, 407C, 404C, 401B, 3FEA, 3FBA, 3F89, 3F58, 3F28, 3EF7, 3EC6, 3E95, 3E65, 3E34, 3E03, 3DD2, 3DA2, 3D71, 3D40, 3D0F, 3CDE, 3CAE, 3C7D, 3C4C, 3C1B, 3BEA, 3BB9, 3B88, 3B58, 3B27, 3AF6, 3AC5, 3A94, 3A63, 3A32, 3A01, 39D0, 399F, 396E, 393D, 390C, 38DB, 38AA, 3879, 3848, 3817, 37E6, 37B5, 3784, 3753, 3722, 36F1, 36C0, 368E, 365D, 362C, 35FB, 35CA, 3599, 3568, 3536, 3505, 34D4, 34A3, 3472, 3440, 340F, 33DE, 33AD, 337C, 334A, 3319, 32E8, 32B7, 3285, 3254, 3223, 31F1, 31C0, 318F, 315E, 312C, 30FB, 30CA, 3098, 3067, 3035, 3004, 2FD3, 2FA1, 2F70, 2F3F, 2F0D, 2EDC, 2EAA, 2E79, 2E47, 2E16, 2DE5, 2DB3, 2D82, 2D50, 2D1F, 2CED, 2CBC, 2C8A, 2C59, 2C27, 2BF6, 2BC4, 2B93, 2B61, 2B30, 2AFE, 2ACC, 2A9B, 2A69, 2A38, 2A06, 29D5, 29A3, 2971, 2940, 290E, 28DD, 28AB, 2879, 2848, 2816, 27E4, 27B3, 2781, 274F, 271E, 26EC, 26BA, 2689, 2657, 2625, 25F4, 25C2, 2590, 255E, 252D, 24FB, 24C9, 2497, 2466, 2434, 2402, 23D0, 239F, 236D, 233B, 2309, 22D7, 22A6, 2274, 2242, 2210, 21DE, 21AD, 217B, 2149, 2117, 20E5, 20B3, 2082, 2050, 201E, 1FEC, 1FBA, 1F88, 1F56, 1F24, 1EF3, 1EC1, 1E8F, 1E5D, 1E2B, 1DF9, 1DC7, 1D95, 1D63, 1D31, 1CFF, 1CCD, 1C9B, 1C69, 1C38, 1C06, 1BD4, 1BA2, 1B70, 1B3E, 1B0C, 1ADA, 1AA8, 1A76, 1A44, 1A12, 19E0, 19AE, 197C, 194A, 1918, 18E6, 18B4, 1882, 1850, 181D, 17EB, 17B9, 1787, 1755, 1723, 16F1, 16BF, 168D, 165B, 1629, 15F7, 15C5, 1593, 1561, 152E, 14FC, 14CA, 1498, 1466, 1434, 1402, 13D0, 139E, 136C, 1339, 1307, 12D5, 12A3, 1271, 123F, 120D, 11DA, 11A8, 1176, 1144, 1112, 10E0, 10AE, 107B, 1049, 1017, FE5, FB3, F81, F4E, F1C, EEA, EB8, E86, E53, E21, DEF, DBD, D8B, D59, D26, CF4, CC2, C90, C5D, C2B, BF9, BC7, B95, B62, B30, AFE, ACC, A9A, A67, A35, A03, 9D1, 99E, 96C, 93A, 908, 8D5, 8A3, 871, 83F, 80D, 7DA, 7A8, 776, 744, 711, 6DF, 6AD, 67B, 648, 616, 5E4, 5B2, 57F, 54D, 51B, 4E9, 4B6, 484, 452, 420, 3ED, 3BB, 389, 356, 324, 2F2, 2C0, 28D, 25B, 229, 1F7, 1C4, 192, 160, 12E, FB, C9, 97, 65, 32;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_eb334a829612c406',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '353d61ac12e5848d102581c8ce555c97',
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
      'core_name0' => 'bmg_33_eb334a829612c406',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 3FFCE, 3FF9B, 3FF69, 3FF37, 3FF05, 3FED2, 3FEA0, 3FE6E, 3FE3C, 3FE09, 3FDD7, 3FDA5, 3FD73, 3FD40, 3FD0E, 3FCDC, 3FCAA, 3FC77, 3FC45, 3FC13, 3FBE0, 3FBAE, 3FB7C, 3FB4A, 3FB17, 3FAE5, 3FAB3, 3FA81, 3FA4E, 3FA1C, 3F9EA, 3F9B8, 3F985, 3F953, 3F921, 3F8EF, 3F8BC, 3F88A, 3F858, 3F826, 3F7F3, 3F7C1, 3F78F, 3F75D, 3F72B, 3F6F8, 3F6C6, 3F694, 3F662, 3F62F, 3F5FD, 3F5CB, 3F599, 3F566, 3F534, 3F502, 3F4D0, 3F49E, 3F46B, 3F439, 3F407, 3F3D5, 3F3A3, 3F370, 3F33E, 3F30C, 3F2DA, 3F2A7, 3F275, 3F243, 3F211, 3F1DF, 3F1AD, 3F17A, 3F148, 3F116, 3F0E4, 3F0B2, 3F07F, 3F04D, 3F01B, 3EFE9, 3EFB7, 3EF85, 3EF52, 3EF20, 3EEEE, 3EEBC, 3EE8A, 3EE58, 3EE26, 3EDF3, 3EDC1, 3ED8F, 3ED5D, 3ED2B, 3ECF9, 3ECC7, 3EC94, 3EC62, 3EC30, 3EBFE, 3EBCC, 3EB9A, 3EB68, 3EB36, 3EB04, 3EAD2, 3EA9F, 3EA6D, 3EA3B, 3EA09, 3E9D7, 3E9A5, 3E973, 3E941, 3E90F, 3E8DD, 3E8AB, 3E879, 3E847, 3E815, 3E7E3, 3E7B0, 3E77E, 3E74C, 3E71A, 3E6E8, 3E6B6, 3E684, 3E652, 3E620, 3E5EE, 3E5BC, 3E58A, 3E558, 3E526, 3E4F4, 3E4C2, 3E490, 3E45E, 3E42C, 3E3FA, 3E3C8, 3E397, 3E365, 3E333, 3E301, 3E2CF, 3E29D, 3E26B, 3E239, 3E207, 3E1D5, 3E1A3, 3E171, 3E13F, 3E10D, 3E0DC, 3E0AA, 3E078, 3E046, 3E014, 3DFE2, 3DFB0, 3DF7E, 3DF4D, 3DF1B, 3DEE9, 3DEB7, 3DE85, 3DE53, 3DE22, 3DDF0, 3DDBE, 3DD8C, 3DD5A, 3DD29, 3DCF7, 3DCC5, 3DC93, 3DC61, 3DC30, 3DBFE, 3DBCC, 3DB9A, 3DB69, 3DB37, 3DB05, 3DAD3, 3DAA2, 3DA70, 3DA3E, 3DA0C, 3D9DB, 3D9A9, 3D977, 3D946, 3D914, 3D8E2, 3D8B1, 3D87F, 3D84D, 3D81C, 3D7EA, 3D7B8, 3D787, 3D755, 3D723, 3D6F2, 3D6C0, 3D68F, 3D65D, 3D62B, 3D5FA, 3D5C8, 3D597, 3D565, 3D534, 3D502, 3D4D0, 3D49F, 3D46D, 3D43C, 3D40A, 3D3D9, 3D3A7, 3D376, 3D344, 3D313, 3D2E1, 3D2B0, 3D27E, 3D24D, 3D21B, 3D1EA, 3D1B9, 3D187, 3D156, 3D124, 3D0F3, 3D0C1, 3D090, 3D05F, 3D02D, 3CFFC, 3CFCB, 3CF99, 3CF68, 3CF36, 3CF05, 3CED4, 3CEA2, 3CE71, 3CE40, 3CE0F, 3CDDD, 3CDAC, 3CD7B, 3CD49, 3CD18, 3CCE7, 3CCB6, 3CC84, 3CC53, 3CC22, 3CBF1, 3CBC0, 3CB8E, 3CB5D, 3CB2C, 3CAFB, 3CACA, 3CA98, 3CA67, 3CA36, 3CA05, 3C9D4, 3C9A3, 3C972, 3C940, 3C90F, 3C8DE, 3C8AD, 3C87C, 3C84B, 3C81A, 3C7E9, 3C7B8, 3C787, 3C756, 3C725, 3C6F4, 3C6C3, 3C692, 3C661, 3C630, 3C5FF, 3C5CE, 3C59D, 3C56C, 3C53B, 3C50A, 3C4D9, 3C4A8, 3C478, 3C447, 3C416, 3C3E5, 3C3B4, 3C383, 3C352, 3C322, 3C2F1, 3C2C0, 3C28F, 3C25E, 3C22E, 3C1FD, 3C1CC, 3C19B, 3C16B, 3C13A, 3C109, 3C0D8, 3C0A8, 3C077, 3C046, 3C016, 3BFE5, 3BFB4, 3BF84, 3BF53, 3BF22, 3BEF2, 3BEC1, 3BE91, 3BE60, 3BE2F, 3BDFF, 3BDCE, 3BD9E, 3BD6D, 3BD3D, 3BD0C, 3BCDC, 3BCAB, 3BC7B, 3BC4A, 3BC1A, 3BBE9, 3BBB9, 3BB88, 3BB58, 3BB27, 3BAF7, 3BAC7, 3BA96, 3BA66, 3BA35, 3BA05, 3B9D5, 3B9A4, 3B974, 3B944, 3B914, 3B8E3, 3B8B3, 3B883, 3B852, 3B822, 3B7F2, 3B7C2, 3B791, 3B761, 3B731, 3B701, 3B6D1, 3B6A1, 3B670, 3B640, 3B610, 3B5E0, 3B5B0, 3B580, 3B550, 3B520, 3B4F0, 3B4C0, 3B48F, 3B45F, 3B42F, 3B3FF, 3B3CF, 3B39F, 3B370, 3B340, 3B310, 3B2E0, 3B2B0, 3B280, 3B250, 3B220, 3B1F0, 3B1C0, 3B190, 3B161, 3B131, 3B101, 3B0D1, 3B0A1, 3B072, 3B042, 3B012, 3AFE2, 3AFB3, 3AF83, 3AF53, 3AF23, 3AEF4, 3AEC4, 3AE94, 3AE65, 3AE35, 3AE05, 3ADD6, 3ADA6, 3AD77, 3AD47, 3AD18, 3ACE8, 3ACB8, 3AC89, 3AC59, 3AC2A, 3ABFA, 3ABCB, 3AB9C, 3AB6C, 3AB3D, 3AB0D, 3AADE, 3AAAE, 3AA7F, 3AA50, 3AA20, 3A9F1, 3A9C2, 3A992, 3A963, 3A934, 3A904, 3A8D5, 3A8A6, 3A877, 3A847, 3A818, 3A7E9, 3A7BA, 3A78B, 3A75B, 3A72C, 3A6FD, 3A6CE, 3A69F, 3A670, 3A641, 3A612, 3A5E3, 3A5B4, 3A585, 3A556, 3A527, 3A4F8, 3A4C9, 3A49A, 3A46B, 3A43C, 3A40D, 3A3DE, 3A3AF, 3A380, 3A351, 3A322, 3A2F4, 3A2C5, 3A296, 3A267, 3A238, 3A20A, 3A1DB, 3A1AC, 3A17D, 3A14F, 3A120, 3A0F1, 3A0C3, 3A094, 3A065, 3A037, 3A008, 39FDA, 39FAB, 39F7C, 39F4E, 39F1F, 39EF1, 39EC2, 39E94, 39E65, 39E37, 39E08, 39DDA, 39DAC, 39D7D, 39D4F, 39D20, 39CF2, 39CC4, 39C95, 39C67, 39C39, 39C0B, 39BDC, 39BAE, 39B80, 39B52, 39B23, 39AF5, 39AC7, 39A99, 39A6B, 39A3D, 39A0E, 399E0, 399B2, 39984, 39956, 39928, 398FA, 398CC, 3989E, 39870, 39842, 39814, 397E6, 397B8, 3978A, 3975D, 3972F, 39701, 396D3, 396A5, 39677, 3964A, 3961C, 395EE, 395C0, 39593, 39565, 39537, 3950A, 394DC, 394AE, 39481, 39453, 39425, 393F8, 393CA, 3939D, 3936F, 39342, 39314, 392E7, 392B9, 3928C, 3925E, 39231, 39204, 391D6, 391A9, 3917B, 3914E, 39121, 390F3, 390C6, 39099, 3906C, 3903E, 39011, 38FE4, 38FB7, 38F8A, 38F5D, 38F2F, 38F02, 38ED5, 38EA8, 38E7B, 38E4E, 38E21, 38DF4, 38DC7, 38D9A, 38D6D, 38D40, 38D13, 38CE6, 38CB9, 38C8D, 38C60, 38C33, 38C06, 38BD9, 38BAC, 38B80, 38B53, 38B26, 38AF9, 38ACD, 38AA0, 38A73, 38A47, 38A1A, 389EE, 389C1, 38994, 38968, 3893B, 3890F, 388E2, 388B6, 38889, 3885D, 38830, 38804, 387D8, 387AB, 3877F, 38753, 38726, 386FA, 386CE, 386A1, 38675, 38649, 3861D, 385F0, 385C4, 38598, 3856C, 38540, 38514, 384E8, 384BC, 38490, 38464, 38438, 3840C, 383E0, 383B4, 38388, 3835C, 38330, 38304, 382D8, 382AC, 38281, 38255, 38229, 381FD, 381D1, 381A6, 3817A, 3814E, 38123, 380F7, 380CB, 380A0, 38074, 38049, 3801D, 37FF1, 37FC6, 37F9A, 37F6F, 37F44, 37F18, 37EED, 37EC1, 37E96, 37E6B, 37E3F, 37E14, 37DE9, 37DBD, 37D92, 37D67, 37D3C, 37D10, 37CE5, 37CBA, 37C8F, 37C64, 37C39, 37C0E, 37BE3, 37BB7, 37B8C, 37B61, 37B36, 37B0B, 37AE1, 37AB6, 37A8B, 37A60, 37A35, 37A0A, 379DF, 379B4, 3798A, 3795F, 37934, 37909, 378DF, 378B4, 37889, 3785F, 37834, 3780A, 377DF, 377B4, 3778A, 3775F, 37735, 3770A, 376E0, 376B6, 3768B, 37661, 37636, 3760C, 375E2, 375B7, 3758D, 37563, 37539, 3750E, 374E4, 374BA, 37490, 37466, 3743B, 37411, 373E7, 373BD, 37393, 37369, 3733F, 37315, 372EB, 372C1, 37297, 3726D, 37244, 3721A, 371F0, 371C6, 3719C, 37173, 37149, 3711F, 370F5, 370CC, 370A2, 37078, 3704F, 37025, 36FFC, 36FD2, 36FA9, 36F7F, 36F56, 36F2C, 36F03, 36ED9, 36EB0, 36E87, 36E5D, 36E34, 36E0B, 36DE1, 36DB8, 36D8F, 36D66, 36D3C, 36D13, 36CEA, 36CC1, 36C98, 36C6F, 36C46, 36C1D, 36BF4, 36BCB, 36BA2, 36B79, 36B50, 36B27, 36AFE, 36AD5, 36AAC, 36A83, 36A5B, 36A32, 36A09, 369E0, 369B8, 3698F, 36966, 3693E, 36915, 368ED, 368C4, 3689B, 36873, 3684A, 36822, 367F9, 367D1, 367A9, 36780, 36758, 36730, 36707, 366DF, 366B7, 3668E, 36666, 3663E, 36616, 365EE, 365C6, 3659D, 36575, 3654D, 36525, 364FD, 364D5, 364AD, 36485, 3645D, 36436, 3640E, 363E6, 363BE, 36396, 3636E, 36347, 3631F, 362F7, 362CF, 362A8, 36280, 36259, 36231, 36209, 361E2, 361BA, 36193, 3616B, 36144, 3611D, 360F5, 360CE, 360A6, 3607F, 36058, 36030, 36009, 35FE2, 35FBB, 35F94, 35F6C, 35F45, 35F1E, 35EF7, 35ED0, 35EA9, 35E82, 35E5B, 35E34, 35E0D, 35DE6, 35DBF, 35D98, 35D72, 35D4B, 35D24, 35CFD, 35CD6, 35CB0, 35C89, 35C62, 35C3C, 35C15, 35BEE, 35BC8, 35BA1, 35B7B, 35B54, 35B2E, 35B07, 35AE1, 35ABB, 35A94, 35A6E, 35A48, 35A21, 359FB, 359D5, 359AE, 35988, 35962, 3593C, 35916, 358F0, 358CA, 358A4, 3587E, 35858, 35832, 3580C, 357E6, 357C0, 3579A, 35774, 3574E, 35729, 35703, 356DD, 356B7, 35692, 3566C, 35646, 35621, 355FB, 355D6, 355B0, 3558A, 35565, 3553F, 3551A, 354F5, 354CF, 354AA, 35485, 3545F, 3543A, 35415, 353EF, 353CA, 353A5, 35380, 3535B, 35336, 35311, 352EC, 352C7, 352A2, 3527D, 35258, 35233, 3520E, 351E9, 351C4, 3519F, 3517B, 35156, 35131, 3510C, 350E8, 350C3, 3509E, 3507A, 35055, 35031, 3500C, 34FE8, 34FC3, 34F9F, 34F7A, 34F56, 34F32, 34F0D, 34EE9, 34EC5, 34EA0, 34E7C, 34E58, 34E34, 34E10, 34DEB, 34DC7, 34DA3, 34D7F, 34D5B, 34D37, 34D13, 34CEF, 34CCB, 34CA8, 34C84, 34C60, 34C3C, 34C18, 34BF5, 34BD1, 34BAD, 34B89, 34B66, 34B42, 34B1F, 34AFB, 34AD8, 34AB4, 34A91, 34A6D, 34A4A, 34A26, 34A03, 349E0, 349BC, 34999, 34976, 34953, 3492F, 3490C, 348E9, 348C6, 348A3, 34880, 3485D, 3483A, 34817, 347F4, 347D1, 347AE, 3478B, 34768, 34745, 34723, 34700, 346DD, 346BA, 34698, 34675, 34652, 34630, 3460D, 345EB, 345C8, 345A6, 34583, 34561, 3453F, 3451C, 344FA, 344D8, 344B5, 34493, 34471, 3444F, 3442C, 3440A, 343E8, 343C6, 343A4, 34382, 34360, 3433E, 3431C, 342FA, 342D8, 342B6, 34295, 34273, 34251, 3422F, 3420E, 341EC, 341CA, 341A9, 34187, 34165, 34144, 34122, 34101, 340DF, 340BE, 3409D, 3407B, 3405A, 34039, 34017, 33FF6, 33FD5, 33FB4, 33F92, 33F71, 33F50, 33F2F, 33F0E, 33EED, 33ECC, 33EAB, 33E8A, 33E69, 33E48, 33E28, 33E07, 33DE6, 33DC5, 33DA4, 33D84, 33D63, 33D42, 33D22, 33D01, 33CE1, 33CC0, 33CA0, 33C7F, 33C5F, 33C3E, 33C1E, 33BFE, 33BDD, 33BBD, 33B9D, 33B7D, 33B5C, 33B3C, 33B1C, 33AFC, 33ADC, 33ABC, 33A9C, 33A7C, 33A5C, 33A3C, 33A1C, 339FC, 339DC, 339BC, 3399D, 3397D, 3395D, 3393E, 3391E, 338FE, 338DF, 338BF, 3389F, 33880, 33860, 33841, 33822, 33802, 337E3, 337C4, 337A4, 33785, 33766, 33746, 33727, 33708, 336E9, 336CA, 336AB, 3368C, 3366D, 3364E, 3362F, 33610, 335F1, 335D2, 335B3, 33595, 33576, 33557, 33539, 3351A, 334FB, 334DD, 334BE, 3349F, 33481, 33462, 33444, 33426, 33407, 333E9, 333CB, 333AC, 3338E, 33370, 33352, 33333, 33315, 332F7, 332D9, 332BB, 3329D, 3327F, 33261, 33243, 33225, 33207, 331E9, 331CC, 331AE, 33190, 33172, 33155, 33137, 33119, 330FC, 330DE, 330C1, 330A3, 33086, 33068, 3304B, 3302E, 33010, 32FF3, 32FD6, 32FB9, 32F9B, 32F7E, 32F61, 32F44, 32F27, 32F0A, 32EED, 32ED0, 32EB3, 32E96, 32E79, 32E5C, 32E3F, 32E22, 32E06, 32DE9, 32DCC, 32DB0, 32D93, 32D76, 32D5A, 32D3D, 32D21, 32D04, 32CE8, 32CCB, 32CAF, 32C93, 32C76, 32C5A, 32C3E, 32C21, 32C05, 32BE9, 32BCD, 32BB1, 32B95, 32B79, 32B5D, 32B41, 32B25, 32B09, 32AED, 32AD1, 32AB5, 32A9A, 32A7E, 32A62, 32A46, 32A2B, 32A0F, 329F4, 329D8, 329BC, 329A1, 32986, 3296A, 3294F, 32933, 32918, 328FD, 328E1, 328C6, 328AB, 32890, 32875, 3285A, 3283F, 32824, 32808, 327EE, 327D3, 327B8, 3279D, 32782, 32767, 3274C, 32732, 32717, 326FC, 326E2, 326C7, 326AC, 32692, 32677, 3265D, 32642, 32628, 3260E, 325F3, 325D9, 325BF, 325A4, 3258A, 32570, 32556, 3253C, 32522, 32508, 324EE, 324D4, 324BA, 324A0, 32486, 3246C, 32452, 32438, 3241F, 32405, 323EB, 323D1, 323B8, 3239E, 32385, 3236B, 32352, 32338, 3231F, 32305, 322EC, 322D3, 322B9, 322A0, 32287, 3226E, 32255, 3223B, 32222, 32209, 321F0, 321D7, 321BE, 321A5, 3218C, 32174, 3215B, 32142, 32129, 32110, 320F8, 320DF, 320C7, 320AE, 32095, 3207D, 32064, 3204C, 32033, 3201B, 32003, 31FEA, 31FD2, 31FBA, 31FA2, 31F89, 31F71, 31F59, 31F41, 31F29, 31F11, 31EF9, 31EE1, 31EC9, 31EB1, 31E99, 31E82, 31E6A, 31E52, 31E3A, 31E23, 31E0B, 31DF3, 31DDC, 31DC4, 31DAD, 31D95, 31D7E, 31D67, 31D4F, 31D38, 31D21, 31D09, 31CF2, 31CDB, 31CC4, 31CAD, 31C95, 31C7E, 31C67, 31C50, 31C39, 31C22, 31C0C, 31BF5, 31BDE, 31BC7, 31BB0, 31B9A, 31B83, 31B6C, 31B56, 31B3F, 31B29, 31B12, 31AFC, 31AE5, 31ACF, 31AB8, 31AA2, 31A8C, 31A75, 31A5F, 31A49, 31A33, 31A1D, 31A07, 319F0, 319DA, 319C4, 319AE, 31999, 31983, 3196D, 31957, 31941, 3192B, 31916, 31900, 318EA, 318D5, 318BF, 318AA, 31894, 3187F, 31869, 31854, 3183E, 31829, 31814, 317FF, 317E9, 317D4, 317BF, 317AA, 31795, 31780, 3176B, 31756, 31741, 3172C, 31717, 31702, 316ED, 316D9, 316C4, 316AF, 3169A, 31686, 31671, 3165D, 31648, 31634, 3161F, 3160B, 315F6, 315E2, 315CE, 315B9, 315A5, 31591, 3157D, 31569, 31555, 31540, 3152C, 31518, 31504, 314F1, 314DD, 314C9, 314B5, 314A1, 3148D, 3147A, 31466, 31452, 3143F, 3142B, 31418, 31404, 313F1, 313DD, 313CA, 313B6, 313A3, 31390, 3137D, 31369, 31356, 31343, 31330, 3131D, 3130A, 312F7, 312E4, 312D1, 312BE, 312AB, 31298, 31286, 31273, 31260, 3124D, 3123B, 31228, 31216, 31203, 311F1, 311DE, 311CC, 311B9, 311A7, 31195, 31182, 31170, 3115E, 3114C, 31139, 31127, 31115, 31103, 310F1, 310DF, 310CD, 310BB, 310AA, 31098, 31086, 31074, 31063, 31051, 3103F, 3102E, 3101C, 3100B, 30FF9, 30FE8, 30FD6, 30FC5, 30FB3, 30FA2, 30F91, 30F80, 30F6E, 30F5D, 30F4C, 30F3B, 30F2A, 30F19, 30F08, 30EF7, 30EE6, 30ED5, 30EC4, 30EB4, 30EA3, 30E92, 30E81, 30E71, 30E60, 30E4F, 30E3F, 30E2E, 30E1E, 30E0D, 30DFD, 30DED, 30DDC, 30DCC, 30DBC, 30DAC, 30D9B, 30D8B, 30D7B, 30D6B, 30D5B, 30D4B, 30D3B, 30D2B, 30D1B, 30D0B, 30CFC, 30CEC, 30CDC, 30CCC, 30CBD, 30CAD, 30C9D, 30C8E, 30C7E, 30C6F, 30C5F, 30C50, 30C40, 30C31, 30C22, 30C13, 30C03, 30BF4, 30BE5, 30BD6, 30BC7, 30BB8, 30BA9, 30B9A, 30B8B, 30B7C, 30B6D, 30B5E, 30B4F, 30B41, 30B32, 30B23, 30B15, 30B06, 30AF7, 30AE9, 30ADA, 30ACC, 30ABD, 30AAF, 30AA1, 30A92, 30A84, 30A76, 30A68, 30A5A, 30A4B, 30A3D, 30A2F, 30A21, 30A13, 30A05, 309F7, 309EA, 309DC, 309CE, 309C0, 309B2, 309A5, 30997, 30989, 3097C, 3096E, 30961, 30953, 30946, 30939, 3092B, 3091E, 30911, 30903, 308F6, 308E9, 308DC, 308CF, 308C2, 308B5, 308A8, 3089B, 3088E, 30881, 30874, 30867, 3085B, 3084E, 30841, 30835, 30828, 3081B, 3080F, 30802, 307F6, 307EA, 307DD, 307D1, 307C5, 307B8, 307AC, 307A0, 30794, 30788, 3077B, 3076F, 30763, 30757, 3074C, 30740, 30734, 30728, 3071C, 30710, 30705, 306F9, 306ED, 306E2, 306D6, 306CB, 306BF, 306B4, 306A8, 3069D, 30692, 30686, 3067B, 30670, 30665, 3065A, 3064E, 30643, 30638, 3062D, 30622, 30618, 3060D, 30602, 305F7, 305EC, 305E1, 305D7, 305CC, 305C2, 305B7, 305AC, 305A2, 30597, 3058D, 30583, 30578, 3056E, 30564, 30559, 3054F, 30545, 3053B, 30531, 30527, 3051D, 30513, 30509, 304FF, 304F5, 304EB, 304E1, 304D8, 304CE, 304C4, 304BB, 304B1, 304A8, 3049E, 30495, 3048B, 30482, 30478, 3046F, 30466, 3045C, 30453, 3044A, 30441, 30438, 3042F, 30426, 3041D, 30414, 3040B, 30402, 303F9, 303F0, 303E8, 303DF, 303D6, 303CD, 303C5, 303BC, 303B4, 303AB, 303A3, 3039A, 30392, 3038A, 30381, 30379, 30371, 30369, 30360, 30358, 30350, 30348, 30340, 30338, 30330, 30328, 30321, 30319, 30311, 30309, 30302, 302FA, 302F2, 302EB, 302E3, 302DC, 302D4, 302CD, 302C5, 302BE, 302B7, 302AF, 302A8, 302A1, 3029A, 30293, 3028C, 30284, 3027D, 30277, 30270, 30269, 30262, 3025B, 30254, 3024D, 30247, 30240, 30239, 30233, 3022C, 30226, 3021F, 30219, 30212, 3020C, 30206, 301FF, 301F9, 301F3, 301ED, 301E7, 301E1, 301DB, 301D5, 301CF, 301C9, 301C3, 301BD, 301B7, 301B1, 301AB, 301A6, 301A0, 3019A, 30195, 3018F, 3018A, 30184, 3017F, 30179, 30174, 3016F, 30169, 30164, 3015F, 3015A, 30155, 30150, 3014B, 30146, 30141, 3013C, 30137, 30132, 3012D, 30128, 30123, 3011F, 3011A, 30115, 30111, 3010C, 30108, 30103, 300FF, 300FA, 300F6, 300F2, 300ED, 300E9, 300E5, 300E1, 300DD, 300D8, 300D4, 300D0, 300CC, 300C8, 300C5, 300C1, 300BD, 300B9, 300B5, 300B2, 300AE, 300AA, 300A7, 300A3, 300A0, 3009C, 30099, 30095, 30092, 3008F, 3008B, 30088, 30085, 30082, 3007E, 3007B, 30078, 30075, 30072, 3006F, 3006C, 3006A, 30067, 30064, 30061, 3005E, 3005C, 30059, 30057, 30054, 30051, 3004F, 3004C, 3004A, 30048, 30045, 30043, 30041, 3003F, 3003C, 3003A, 30038, 30036, 30034, 30032, 30030, 3002E, 3002C, 3002B, 30029, 30027, 30025, 30024, 30022, 30020, 3001F, 3001D, 3001C, 3001A, 30019, 30018, 30016, 30015, 30014, 30013, 30011, 30010, 3000F, 3000E, 3000D, 3000C, 3000B, 3000A, 30009, 30009, 30008, 30007, 30006, 30006, 30005, 30004, 30004, 30003, 30003, 30002, 30002, 30002, 30001, 30001, 30001, 30000, 30000, 30000, 30000, 30000;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_11bc2c3f0146b817',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'caeabf0fd813771251ad52b7e9ddd4a9',
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
      'core_name0' => 'bmg_33_11bc2c3f0146b817',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 30000, 30000, 30000, 30000, 30000, 30000, 30001, 30001, 30001, 30002, 30002, 30002, 30003, 30003, 30004, 30004, 30005, 30006, 30006, 30007, 30008, 30009, 30009, 3000A, 3000B, 3000C, 3000D, 3000E, 3000F, 30010, 30011, 30013, 30014, 30015, 30016, 30018, 30019, 3001A, 3001C, 3001D, 3001F, 30020, 30022, 30024, 30025, 30027, 30029, 3002B, 3002C, 3002E, 30030, 30032, 30034, 30036, 30038, 3003A, 3003C, 3003F, 30041, 30043, 30045, 30048, 3004A, 3004C, 3004F, 30051, 30054, 30057, 30059, 3005C, 3005E, 30061, 30064, 30067, 3006A, 3006C, 3006F, 30072, 30075, 30078, 3007B, 3007E, 30082, 30085, 30088, 3008B, 3008F, 30092, 30095, 30099, 3009C, 300A0, 300A3, 300A7, 300AA, 300AE, 300B2, 300B5, 300B9, 300BD, 300C1, 300C5, 300C8, 300CC, 300D0, 300D4, 300D8, 300DD, 300E1, 300E5, 300E9, 300ED, 300F2, 300F6, 300FA, 300FF, 30103, 30108, 3010C, 30111, 30115, 3011A, 3011F, 30123, 30128, 3012D, 30132, 30137, 3013C, 30141, 30146, 3014B, 30150, 30155, 3015A, 3015F, 30164, 30169, 3016F, 30174, 30179, 3017F, 30184, 3018A, 3018F, 30195, 3019A, 301A0, 301A6, 301AB, 301B1, 301B7, 301BD, 301C3, 301C9, 301CF, 301D5, 301DB, 301E1, 301E7, 301ED, 301F3, 301F9, 301FF, 30206, 3020C, 30212, 30219, 3021F, 30226, 3022C, 30233, 30239, 30240, 30247, 3024D, 30254, 3025B, 30262, 30269, 30270, 30277, 3027D, 30284, 3028C, 30293, 3029A, 302A1, 302A8, 302AF, 302B7, 302BE, 302C5, 302CD, 302D4, 302DC, 302E3, 302EB, 302F2, 302FA, 30302, 30309, 30311, 30319, 30321, 30328, 30330, 30338, 30340, 30348, 30350, 30358, 30360, 30369, 30371, 30379, 30381, 3038A, 30392, 3039A, 303A3, 303AB, 303B4, 303BC, 303C5, 303CD, 303D6, 303DF, 303E8, 303F0, 303F9, 30402, 3040B, 30414, 3041D, 30426, 3042F, 30438, 30441, 3044A, 30453, 3045C, 30466, 3046F, 30478, 30482, 3048B, 30495, 3049E, 304A8, 304B1, 304BB, 304C4, 304CE, 304D8, 304E1, 304EB, 304F5, 304FF, 30509, 30513, 3051D, 30527, 30531, 3053B, 30545, 3054F, 30559, 30564, 3056E, 30578, 30583, 3058D, 30597, 305A2, 305AC, 305B7, 305C2, 305CC, 305D7, 305E1, 305EC, 305F7, 30602, 3060D, 30618, 30622, 3062D, 30638, 30643, 3064E, 3065A, 30665, 30670, 3067B, 30686, 30692, 3069D, 306A8, 306B4, 306BF, 306CB, 306D6, 306E2, 306ED, 306F9, 30705, 30710, 3071C, 30728, 30734, 30740, 3074C, 30757, 30763, 3076F, 3077B, 30788, 30794, 307A0, 307AC, 307B8, 307C5, 307D1, 307DD, 307EA, 307F6, 30802, 3080F, 3081B, 30828, 30835, 30841, 3084E, 3085B, 30867, 30874, 30881, 3088E, 3089B, 308A8, 308B5, 308C2, 308CF, 308DC, 308E9, 308F6, 30903, 30911, 3091E, 3092B, 30939, 30946, 30953, 30961, 3096E, 3097C, 30989, 30997, 309A5, 309B2, 309C0, 309CE, 309DC, 309EA, 309F7, 30A05, 30A13, 30A21, 30A2F, 30A3D, 30A4B, 30A5A, 30A68, 30A76, 30A84, 30A92, 30AA1, 30AAF, 30ABD, 30ACC, 30ADA, 30AE9, 30AF7, 30B06, 30B15, 30B23, 30B32, 30B41, 30B4F, 30B5E, 30B6D, 30B7C, 30B8B, 30B9A, 30BA9, 30BB8, 30BC7, 30BD6, 30BE5, 30BF4, 30C03, 30C13, 30C22, 30C31, 30C40, 30C50, 30C5F, 30C6F, 30C7E, 30C8E, 30C9D, 30CAD, 30CBD, 30CCC, 30CDC, 30CEC, 30CFC, 30D0B, 30D1B, 30D2B, 30D3B, 30D4B, 30D5B, 30D6B, 30D7B, 30D8B, 30D9B, 30DAC, 30DBC, 30DCC, 30DDC, 30DED, 30DFD, 30E0D, 30E1E, 30E2E, 30E3F, 30E4F, 30E60, 30E71, 30E81, 30E92, 30EA3, 30EB4, 30EC4, 30ED5, 30EE6, 30EF7, 30F08, 30F19, 30F2A, 30F3B, 30F4C, 30F5D, 30F6E, 30F80, 30F91, 30FA2, 30FB3, 30FC5, 30FD6, 30FE8, 30FF9, 3100B, 3101C, 3102E, 3103F, 31051, 31063, 31074, 31086, 31098, 310AA, 310BB, 310CD, 310DF, 310F1, 31103, 31115, 31127, 31139, 3114C, 3115E, 31170, 31182, 31195, 311A7, 311B9, 311CC, 311DE, 311F1, 31203, 31216, 31228, 3123B, 3124D, 31260, 31273, 31286, 31298, 312AB, 312BE, 312D1, 312E4, 312F7, 3130A, 3131D, 31330, 31343, 31356, 31369, 3137D, 31390, 313A3, 313B6, 313CA, 313DD, 313F1, 31404, 31418, 3142B, 3143F, 31452, 31466, 3147A, 3148D, 314A1, 314B5, 314C9, 314DD, 314F1, 31504, 31518, 3152C, 31540, 31555, 31569, 3157D, 31591, 315A5, 315B9, 315CE, 315E2, 315F6, 3160B, 3161F, 31634, 31648, 3165D, 31671, 31686, 3169A, 316AF, 316C4, 316D9, 316ED, 31702, 31717, 3172C, 31741, 31756, 3176B, 31780, 31795, 317AA, 317BF, 317D4, 317E9, 317FF, 31814, 31829, 3183E, 31854, 31869, 3187F, 31894, 318AA, 318BF, 318D5, 318EA, 31900, 31916, 3192B, 31941, 31957, 3196D, 31983, 31999, 319AE, 319C4, 319DA, 319F0, 31A07, 31A1D, 31A33, 31A49, 31A5F, 31A75, 31A8C, 31AA2, 31AB8, 31ACF, 31AE5, 31AFC, 31B12, 31B29, 31B3F, 31B56, 31B6C, 31B83, 31B9A, 31BB0, 31BC7, 31BDE, 31BF5, 31C0C, 31C22, 31C39, 31C50, 31C67, 31C7E, 31C95, 31CAD, 31CC4, 31CDB, 31CF2, 31D09, 31D21, 31D38, 31D4F, 31D67, 31D7E, 31D95, 31DAD, 31DC4, 31DDC, 31DF3, 31E0B, 31E23, 31E3A, 31E52, 31E6A, 31E82, 31E99, 31EB1, 31EC9, 31EE1, 31EF9, 31F11, 31F29, 31F41, 31F59, 31F71, 31F89, 31FA2, 31FBA, 31FD2, 31FEA, 32003, 3201B, 32033, 3204C, 32064, 3207D, 32095, 320AE, 320C7, 320DF, 320F8, 32110, 32129, 32142, 3215B, 32174, 3218C, 321A5, 321BE, 321D7, 321F0, 32209, 32222, 3223B, 32255, 3226E, 32287, 322A0, 322B9, 322D3, 322EC, 32305, 3231F, 32338, 32352, 3236B, 32385, 3239E, 323B8, 323D1, 323EB, 32405, 3241F, 32438, 32452, 3246C, 32486, 324A0, 324BA, 324D4, 324EE, 32508, 32522, 3253C, 32556, 32570, 3258A, 325A4, 325BF, 325D9, 325F3, 3260E, 32628, 32642, 3265D, 32677, 32692, 326AC, 326C7, 326E2, 326FC, 32717, 32732, 3274C, 32767, 32782, 3279D, 327B8, 327D3, 327EE, 32808, 32824, 3283F, 3285A, 32875, 32890, 328AB, 328C6, 328E1, 328FD, 32918, 32933, 3294F, 3296A, 32986, 329A1, 329BC, 329D8, 329F4, 32A0F, 32A2B, 32A46, 32A62, 32A7E, 32A9A, 32AB5, 32AD1, 32AED, 32B09, 32B25, 32B41, 32B5D, 32B79, 32B95, 32BB1, 32BCD, 32BE9, 32C05, 32C21, 32C3E, 32C5A, 32C76, 32C93, 32CAF, 32CCB, 32CE8, 32D04, 32D21, 32D3D, 32D5A, 32D76, 32D93, 32DB0, 32DCC, 32DE9, 32E06, 32E22, 32E3F, 32E5C, 32E79, 32E96, 32EB3, 32ED0, 32EED, 32F0A, 32F27, 32F44, 32F61, 32F7E, 32F9B, 32FB9, 32FD6, 32FF3, 33010, 3302E, 3304B, 33068, 33086, 330A3, 330C1, 330DE, 330FC, 33119, 33137, 33155, 33172, 33190, 331AE, 331CC, 331E9, 33207, 33225, 33243, 33261, 3327F, 3329D, 332BB, 332D9, 332F7, 33315, 33333, 33352, 33370, 3338E, 333AC, 333CB, 333E9, 33407, 33426, 33444, 33462, 33481, 3349F, 334BE, 334DD, 334FB, 3351A, 33539, 33557, 33576, 33595, 335B3, 335D2, 335F1, 33610, 3362F, 3364E, 3366D, 3368C, 336AB, 336CA, 336E9, 33708, 33727, 33746, 33766, 33785, 337A4, 337C4, 337E3, 33802, 33822, 33841, 33860, 33880, 3389F, 338BF, 338DF, 338FE, 3391E, 3393E, 3395D, 3397D, 3399D, 339BC, 339DC, 339FC, 33A1C, 33A3C, 33A5C, 33A7C, 33A9C, 33ABC, 33ADC, 33AFC, 33B1C, 33B3C, 33B5C, 33B7D, 33B9D, 33BBD, 33BDD, 33BFE, 33C1E, 33C3E, 33C5F, 33C7F, 33CA0, 33CC0, 33CE1, 33D01, 33D22, 33D42, 33D63, 33D84, 33DA4, 33DC5, 33DE6, 33E07, 33E28, 33E48, 33E69, 33E8A, 33EAB, 33ECC, 33EED, 33F0E, 33F2F, 33F50, 33F71, 33F92, 33FB4, 33FD5, 33FF6, 34017, 34039, 3405A, 3407B, 3409D, 340BE, 340DF, 34101, 34122, 34144, 34165, 34187, 341A9, 341CA, 341EC, 3420E, 3422F, 34251, 34273, 34295, 342B6, 342D8, 342FA, 3431C, 3433E, 34360, 34382, 343A4, 343C6, 343E8, 3440A, 3442C, 3444F, 34471, 34493, 344B5, 344D8, 344FA, 3451C, 3453F, 34561, 34583, 345A6, 345C8, 345EB, 3460D, 34630, 34652, 34675, 34698, 346BA, 346DD, 34700, 34723, 34745, 34768, 3478B, 347AE, 347D1, 347F4, 34817, 3483A, 3485D, 34880, 348A3, 348C6, 348E9, 3490C, 3492F, 34953, 34976, 34999, 349BC, 349E0, 34A03, 34A26, 34A4A, 34A6D, 34A91, 34AB4, 34AD8, 34AFB, 34B1F, 34B42, 34B66, 34B89, 34BAD, 34BD1, 34BF5, 34C18, 34C3C, 34C60, 34C84, 34CA8, 34CCB, 34CEF, 34D13, 34D37, 34D5B, 34D7F, 34DA3, 34DC7, 34DEB, 34E10, 34E34, 34E58, 34E7C, 34EA0, 34EC5, 34EE9, 34F0D, 34F32, 34F56, 34F7A, 34F9F, 34FC3, 34FE8, 3500C, 35031, 35055, 3507A, 3509E, 350C3, 350E8, 3510C, 35131, 35156, 3517B, 3519F, 351C4, 351E9, 3520E, 35233, 35258, 3527D, 352A2, 352C7, 352EC, 35311, 35336, 3535B, 35380, 353A5, 353CA, 353EF, 35415, 3543A, 3545F, 35485, 354AA, 354CF, 354F5, 3551A, 3553F, 35565, 3558A, 355B0, 355D6, 355FB, 35621, 35646, 3566C, 35692, 356B7, 356DD, 35703, 35729, 3574E, 35774, 3579A, 357C0, 357E6, 3580C, 35832, 35858, 3587E, 358A4, 358CA, 358F0, 35916, 3593C, 35962, 35988, 359AE, 359D5, 359FB, 35A21, 35A48, 35A6E, 35A94, 35ABB, 35AE1, 35B07, 35B2E, 35B54, 35B7B, 35BA1, 35BC8, 35BEE, 35C15, 35C3C, 35C62, 35C89, 35CB0, 35CD6, 35CFD, 35D24, 35D4B, 35D72, 35D98, 35DBF, 35DE6, 35E0D, 35E34, 35E5B, 35E82, 35EA9, 35ED0, 35EF7, 35F1E, 35F45, 35F6C, 35F94, 35FBB, 35FE2, 36009, 36030, 36058, 3607F, 360A6, 360CE, 360F5, 3611D, 36144, 3616B, 36193, 361BA, 361E2, 36209, 36231, 36259, 36280, 362A8, 362CF, 362F7, 3631F, 36347, 3636E, 36396, 363BE, 363E6, 3640E, 36436, 3645D, 36485, 364AD, 364D5, 364FD, 36525, 3654D, 36575, 3659D, 365C6, 365EE, 36616, 3663E, 36666, 3668E, 366B7, 366DF, 36707, 36730, 36758, 36780, 367A9, 367D1, 367F9, 36822, 3684A, 36873, 3689B, 368C4, 368ED, 36915, 3693E, 36966, 3698F, 369B8, 369E0, 36A09, 36A32, 36A5B, 36A83, 36AAC, 36AD5, 36AFE, 36B27, 36B50, 36B79, 36BA2, 36BCB, 36BF4, 36C1D, 36C46, 36C6F, 36C98, 36CC1, 36CEA, 36D13, 36D3C, 36D66, 36D8F, 36DB8, 36DE1, 36E0B, 36E34, 36E5D, 36E87, 36EB0, 36ED9, 36F03, 36F2C, 36F56, 36F7F, 36FA9, 36FD2, 36FFC, 37025, 3704F, 37078, 370A2, 370CC, 370F5, 3711F, 37149, 37173, 3719C, 371C6, 371F0, 3721A, 37244, 3726D, 37297, 372C1, 372EB, 37315, 3733F, 37369, 37393, 373BD, 373E7, 37411, 3743B, 37466, 37490, 374BA, 374E4, 3750E, 37539, 37563, 3758D, 375B7, 375E2, 3760C, 37636, 37661, 3768B, 376B6, 376E0, 3770A, 37735, 3775F, 3778A, 377B4, 377DF, 3780A, 37834, 3785F, 37889, 378B4, 378DF, 37909, 37934, 3795F, 3798A, 379B4, 379DF, 37A0A, 37A35, 37A60, 37A8B, 37AB6, 37AE1, 37B0B, 37B36, 37B61, 37B8C, 37BB7, 37BE3, 37C0E, 37C39, 37C64, 37C8F, 37CBA, 37CE5, 37D10, 37D3C, 37D67, 37D92, 37DBD, 37DE9, 37E14, 37E3F, 37E6B, 37E96, 37EC1, 37EED, 37F18, 37F44, 37F6F, 37F9A, 37FC6, 37FF1, 3801D, 38049, 38074, 380A0, 380CB, 380F7, 38123, 3814E, 3817A, 381A6, 381D1, 381FD, 38229, 38255, 38281, 382AC, 382D8, 38304, 38330, 3835C, 38388, 383B4, 383E0, 3840C, 38438, 38464, 38490, 384BC, 384E8, 38514, 38540, 3856C, 38598, 385C4, 385F0, 3861D, 38649, 38675, 386A1, 386CE, 386FA, 38726, 38753, 3877F, 387AB, 387D8, 38804, 38830, 3885D, 38889, 388B6, 388E2, 3890F, 3893B, 38968, 38994, 389C1, 389EE, 38A1A, 38A47, 38A73, 38AA0, 38ACD, 38AF9, 38B26, 38B53, 38B80, 38BAC, 38BD9, 38C06, 38C33, 38C60, 38C8D, 38CB9, 38CE6, 38D13, 38D40, 38D6D, 38D9A, 38DC7, 38DF4, 38E21, 38E4E, 38E7B, 38EA8, 38ED5, 38F02, 38F2F, 38F5D, 38F8A, 38FB7, 38FE4, 39011, 3903E, 3906C, 39099, 390C6, 390F3, 39121, 3914E, 3917B, 391A9, 391D6, 39204, 39231, 3925E, 3928C, 392B9, 392E7, 39314, 39342, 3936F, 3939D, 393CA, 393F8, 39425, 39453, 39481, 394AE, 394DC, 3950A, 39537, 39565, 39593, 395C0, 395EE, 3961C, 3964A, 39677, 396A5, 396D3, 39701, 3972F, 3975D, 3978A, 397B8, 397E6, 39814, 39842, 39870, 3989E, 398CC, 398FA, 39928, 39956, 39984, 399B2, 399E0, 39A0E, 39A3D, 39A6B, 39A99, 39AC7, 39AF5, 39B23, 39B52, 39B80, 39BAE, 39BDC, 39C0B, 39C39, 39C67, 39C95, 39CC4, 39CF2, 39D20, 39D4F, 39D7D, 39DAC, 39DDA, 39E08, 39E37, 39E65, 39E94, 39EC2, 39EF1, 39F1F, 39F4E, 39F7C, 39FAB, 39FDA, 3A008, 3A037, 3A065, 3A094, 3A0C3, 3A0F1, 3A120, 3A14F, 3A17D, 3A1AC, 3A1DB, 3A20A, 3A238, 3A267, 3A296, 3A2C5, 3A2F4, 3A322, 3A351, 3A380, 3A3AF, 3A3DE, 3A40D, 3A43C, 3A46B, 3A49A, 3A4C9, 3A4F8, 3A527, 3A556, 3A585, 3A5B4, 3A5E3, 3A612, 3A641, 3A670, 3A69F, 3A6CE, 3A6FD, 3A72C, 3A75B, 3A78B, 3A7BA, 3A7E9, 3A818, 3A847, 3A877, 3A8A6, 3A8D5, 3A904, 3A934, 3A963, 3A992, 3A9C2, 3A9F1, 3AA20, 3AA50, 3AA7F, 3AAAE, 3AADE, 3AB0D, 3AB3D, 3AB6C, 3AB9C, 3ABCB, 3ABFA, 3AC2A, 3AC59, 3AC89, 3ACB8, 3ACE8, 3AD18, 3AD47, 3AD77, 3ADA6, 3ADD6, 3AE05, 3AE35, 3AE65, 3AE94, 3AEC4, 3AEF4, 3AF23, 3AF53, 3AF83, 3AFB3, 3AFE2, 3B012, 3B042, 3B072, 3B0A1, 3B0D1, 3B101, 3B131, 3B161, 3B190, 3B1C0, 3B1F0, 3B220, 3B250, 3B280, 3B2B0, 3B2E0, 3B310, 3B340, 3B370, 3B39F, 3B3CF, 3B3FF, 3B42F, 3B45F, 3B48F, 3B4C0, 3B4F0, 3B520, 3B550, 3B580, 3B5B0, 3B5E0, 3B610, 3B640, 3B670, 3B6A1, 3B6D1, 3B701, 3B731, 3B761, 3B791, 3B7C2, 3B7F2, 3B822, 3B852, 3B883, 3B8B3, 3B8E3, 3B914, 3B944, 3B974, 3B9A4, 3B9D5, 3BA05, 3BA35, 3BA66, 3BA96, 3BAC7, 3BAF7, 3BB27, 3BB58, 3BB88, 3BBB9, 3BBE9, 3BC1A, 3BC4A, 3BC7B, 3BCAB, 3BCDC, 3BD0C, 3BD3D, 3BD6D, 3BD9E, 3BDCE, 3BDFF, 3BE2F, 3BE60, 3BE91, 3BEC1, 3BEF2, 3BF22, 3BF53, 3BF84, 3BFB4, 3BFE5, 3C016, 3C046, 3C077, 3C0A8, 3C0D8, 3C109, 3C13A, 3C16B, 3C19B, 3C1CC, 3C1FD, 3C22E, 3C25E, 3C28F, 3C2C0, 3C2F1, 3C322, 3C352, 3C383, 3C3B4, 3C3E5, 3C416, 3C447, 3C478, 3C4A8, 3C4D9, 3C50A, 3C53B, 3C56C, 3C59D, 3C5CE, 3C5FF, 3C630, 3C661, 3C692, 3C6C3, 3C6F4, 3C725, 3C756, 3C787, 3C7B8, 3C7E9, 3C81A, 3C84B, 3C87C, 3C8AD, 3C8DE, 3C90F, 3C940, 3C972, 3C9A3, 3C9D4, 3CA05, 3CA36, 3CA67, 3CA98, 3CACA, 3CAFB, 3CB2C, 3CB5D, 3CB8E, 3CBC0, 3CBF1, 3CC22, 3CC53, 3CC84, 3CCB6, 3CCE7, 3CD18, 3CD49, 3CD7B, 3CDAC, 3CDDD, 3CE0F, 3CE40, 3CE71, 3CEA2, 3CED4, 3CF05, 3CF36, 3CF68, 3CF99, 3CFCB, 3CFFC, 3D02D, 3D05F, 3D090, 3D0C1, 3D0F3, 3D124, 3D156, 3D187, 3D1B9, 3D1EA, 3D21B, 3D24D, 3D27E, 3D2B0, 3D2E1, 3D313, 3D344, 3D376, 3D3A7, 3D3D9, 3D40A, 3D43C, 3D46D, 3D49F, 3D4D0, 3D502, 3D534, 3D565, 3D597, 3D5C8, 3D5FA, 3D62B, 3D65D, 3D68F, 3D6C0, 3D6F2, 3D723, 3D755, 3D787, 3D7B8, 3D7EA, 3D81C, 3D84D, 3D87F, 3D8B1, 3D8E2, 3D914, 3D946, 3D977, 3D9A9, 3D9DB, 3DA0C, 3DA3E, 3DA70, 3DAA2, 3DAD3, 3DB05, 3DB37, 3DB69, 3DB9A, 3DBCC, 3DBFE, 3DC30, 3DC61, 3DC93, 3DCC5, 3DCF7, 3DD29, 3DD5A, 3DD8C, 3DDBE, 3DDF0, 3DE22, 3DE53, 3DE85, 3DEB7, 3DEE9, 3DF1B, 3DF4D, 3DF7E, 3DFB0, 3DFE2, 3E014, 3E046, 3E078, 3E0AA, 3E0DC, 3E10D, 3E13F, 3E171, 3E1A3, 3E1D5, 3E207, 3E239, 3E26B, 3E29D, 3E2CF, 3E301, 3E333, 3E365, 3E397, 3E3C8, 3E3FA, 3E42C, 3E45E, 3E490, 3E4C2, 3E4F4, 3E526, 3E558, 3E58A, 3E5BC, 3E5EE, 3E620, 3E652, 3E684, 3E6B6, 3E6E8, 3E71A, 3E74C, 3E77E, 3E7B0, 3E7E3, 3E815, 3E847, 3E879, 3E8AB, 3E8DD, 3E90F, 3E941, 3E973, 3E9A5, 3E9D7, 3EA09, 3EA3B, 3EA6D, 3EA9F, 3EAD2, 3EB04, 3EB36, 3EB68, 3EB9A, 3EBCC, 3EBFE, 3EC30, 3EC62, 3EC94, 3ECC7, 3ECF9, 3ED2B, 3ED5D, 3ED8F, 3EDC1, 3EDF3, 3EE26, 3EE58, 3EE8A, 3EEBC, 3EEEE, 3EF20, 3EF52, 3EF85, 3EFB7, 3EFE9, 3F01B, 3F04D, 3F07F, 3F0B2, 3F0E4, 3F116, 3F148, 3F17A, 3F1AD, 3F1DF, 3F211, 3F243, 3F275, 3F2A7, 3F2DA, 3F30C, 3F33E, 3F370, 3F3A3, 3F3D5, 3F407, 3F439, 3F46B, 3F49E, 3F4D0, 3F502, 3F534, 3F566, 3F599, 3F5CB, 3F5FD, 3F62F, 3F662, 3F694, 3F6C6, 3F6F8, 3F72B, 3F75D, 3F78F, 3F7C1, 3F7F3, 3F826, 3F858, 3F88A, 3F8BC, 3F8EF, 3F921, 3F953, 3F985, 3F9B8, 3F9EA, 3FA1C, 3FA4E, 3FA81, 3FAB3, 3FAE5, 3FB17, 3FB4A, 3FB7C, 3FBAE, 3FBE0, 3FC13, 3FC45, 3FC77, 3FCAA, 3FCDC, 3FD0E, 3FD40, 3FD73, 3FDA5, 3FDD7, 3FE09, 3FE3C, 3FE6E, 3FEA0, 3FED2, 3FF05, 3FF37, 3FF69, 3FF9B, 3FFCE;',
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
    'CSET read_width_a = 18',
    'CSET read_width_b = 18',
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
    'CSET write_width_a = 18',
    'CSET write_width_b = 18',
    'CSET component_name = bmg_33_21ca4c06e10fd7d0',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a4d0d43f39d1ea41af74c45d69232e91',
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
      'core_name0' => 'bmg_33_21ca4c06e10fd7d0',
      'entity_name.0' => 'xlsprom',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '012f03e3db46f8743fa02fcab523c8ba',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((36 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((36 - 1) downto 0);
    q : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_0c0a0420a6',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '910ef0d09de23661520f500f24debe9d',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
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
    '# 11.4',
    '# DEVICE virtex6',
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
    'CSET component_name = cntr_11_0_95fe48a82a6ccee1',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '972eec159b599e272d7920be0fc9ec56',
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
      'core_name0' => 'cntr_11_0_95fe48a82a6ccee1',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
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
  $instrs = [
    'SELECT Binary_Counter virtex6 Xilinx,_Inc. 11.0',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 15',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_da6de9acc3dc0967',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd6b6f762bf34952c2072d7977366b6a6',
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
      'core_name0' => 'cntr_11_0_da6de9acc3dc0967',
      'entity_name.0' => 'xlcounter_limit',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '34305b2ec4e9a55fb6d472f33841d51a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((4 - 1) downto 0);
  signal d0_1_24: std_logic_vector((11 - 1) downto 0);
  signal d1_1_27: std_logic_vector((11 - 1) downto 0);
  signal d2_1_30: std_logic_vector((11 - 1) downto 0);
  signal d3_1_33: std_logic_vector((11 - 1) downto 0);
  signal d4_1_36: std_logic_vector((11 - 1) downto 0);
  signal d5_1_39: std_logic_vector((11 - 1) downto 0);
  signal d6_1_42: std_logic_vector((11 - 1) downto 0);
  signal d7_1_45: std_logic_vector((11 - 1) downto 0);
  signal d8_1_48: std_logic_vector((11 - 1) downto 0);
  signal d9_1_51: std_logic_vector((11 - 1) downto 0);
  signal d10_1_54: std_logic_vector((11 - 1) downto 0);
  type array_type_pipe_34_22 is array (0 to (1 - 1)) of std_logic_vector((11 - 1) downto 0);
  signal pipe_34_22: array_type_pipe_34_22 := (
    0 => "00000000000");
  signal pipe_34_22_front_din: std_logic_vector((11 - 1) downto 0);
  signal pipe_34_22_back: std_logic_vector((11 - 1) downto 0);
  signal pipe_34_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((11 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  d4_1_36 <= d4;
  d5_1_39 <= d5;
  d6_1_42 <= d6;
  d7_1_45 <= d7;
  d8_1_48 <= d8;
  d9_1_51 <= d9;
  d10_1_54 <= d10;
  pipe_34_22_back <= pipe_34_22(0);
  proc_pipe_34_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (pipe_34_22_push_front_pop_back_en = \'1\')) then
        pipe_34_22(0) <= pipe_34_22_front_din;
      end if;
    end if;
  end process proc_pipe_34_22;
  proc_switch_6_1: process (d0_1_24, d10_1_54, d1_1_27, d2_1_30, d3_1_33, d4_1_36, d5_1_39, d6_1_42, d7_1_45, d8_1_48, d9_1_51, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0000" =>
        unregy_join_6_1 <= d0_1_24;
      when "0001" =>
        unregy_join_6_1 <= d1_1_27;
      when "0010" =>
        unregy_join_6_1 <= d2_1_30;
      when "0011" =>
        unregy_join_6_1 <= d3_1_33;
      when "0100" =>
        unregy_join_6_1 <= d4_1_36;
      when "0101" =>
        unregy_join_6_1 <= d5_1_39;
      when "0110" =>
        unregy_join_6_1 <= d6_1_42;
      when "0111" =>
        unregy_join_6_1 <= d7_1_45;
      when "1000" =>
        unregy_join_6_1 <= d8_1_48;
      when "1001" =>
        unregy_join_6_1 <= d9_1_51;
      when others =>
        unregy_join_6_1 <= d10_1_54;
    end case;
  end process proc_switch_6_1;
  pipe_34_22_front_din <= unregy_join_6_1;
  pipe_34_22_push_front_pop_back_en <= \'1\';
  y <= pipe_34_22_back;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((4 - 1) downto 0);
    d0 : in std_logic_vector((11 - 1) downto 0);
    d1 : in std_logic_vector((11 - 1) downto 0);
    d2 : in std_logic_vector((11 - 1) downto 0);
    d3 : in std_logic_vector((11 - 1) downto 0);
    d4 : in std_logic_vector((11 - 1) downto 0);
    d5 : in std_logic_vector((11 - 1) downto 0);
    d6 : in std_logic_vector((11 - 1) downto 0);
    d7 : in std_logic_vector((11 - 1) downto 0);
    d8 : in std_logic_vector((11 - 1) downto 0);
    d9 : in std_logic_vector((11 - 1) downto 0);
    d10 : in std_logic_vector((11 - 1) downto 0);
    y : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_9447359c10',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b91d5f8ec36e7ed2c53c159a079bc56b',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'a5688d1c9602568c45df4e7b93ada043',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Block_Memory_Generator virtex6 Xilinx,_Inc. 3.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET algorithm = Minimum_Area',
    'CSET assume_synchronous_clk = false',
    'CSET byte_size = 9',
    'CSET coe_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;',
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
    'CSET read_width_a = 36',
    'CSET read_width_b = 36',
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
    'CSET write_width_a = 36',
    'CSET write_width_b = 36',
    'CSET component_name = bmg_33_ccbad9e7653c37d5',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '82baba509baf7ee354885e53830de3e9',
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
      'core_name0' => 'bmg_33_ccbad9e7653c37d5',
      'entity_name.0' => 'xlspram',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0f6954198856abf7bcac71dba26d7f50',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '87a5e194037f3305ad2cd7c19c8ec9e1',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '9c0343a8bbc9ee978bc9509d268edc82',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f949d87b4b53da1e73a842bcbe9cb437',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d_1_22: std_logic_vector((11 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end',
      'crippled_entity' => 'is
  port (
    d : in std_logic_vector((11 - 1) downto 0);
    q : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'delay_895cbeca91',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4239e5995d474d758baabf1bb1ebe896',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'c07a7723982bdcace0dcbcbf1c631605',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ee8261b8203f432bab1be985cb214464',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '19710426be3a747649ef1c488bd16674',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '497890a58381026d67ca673fb72c3b01',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '97941a13e04e5c70c8e4f15844073d83',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd4583296b1a5c3e61d5b40bddfbfb1c5',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '37ae39444d0361465f133da6ddef4e77',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f1b5558761d18ada8d3a0a814f0a3c67',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd59330fa3ce6b3e18e671053583dd626',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Distributed_Memory_Generator virtex6 Xilinx,_Inc. 4.3',
    '# 11.4',
    '# DEVICE virtex6',
    'CSET ce_overrides = sync_controls_overrides_ce',
    'CSET coefficient_file = [
',
    '  MEMORY_INITIALIZATION_RADIX = 16;',
    '  MEMORY_INITIALIZATION_VECTOR = 0, 2, 4, 6, 8, A, C, E, 10, 12, 14, 16, 18, 1A, 1C, 1E, 20, 22, 24, 26, 28, 2A, 2C, 2E, 30, 32, 34, 36, 38, 3A, 3C, 3E, 40, 42, 44, 46, 48, 4A, 4C, 4E, 50, 52, 54, 56, 58, 5A, 5C, 5E, 60, 62, 64, 66, 68, 6A, 6C, 6E, 70, 72, 74, 76, 78, 7A, 7C, 7E, 80, 82, 84, 86, 88, 8A, 8C, 8E, 90, 92, 94, 96, 98, 9A, 9C, 9E, A0, A2, A4, A6, A8, AA, AC, AE, B0, B2, B4, B6, B8, BA, BC, BE, C0, C2, C4, C6, C8, CA, CC, CE, D0, D2, D4, D6, D8, DA, DC, DE, E0, E2, E4, E6, E8, EA, EC, EE, F0, F2, F4, F6, F8, FA, FC, FE, 100, 102, 104, 106, 108, 10A, 10C, 10E, 110, 112, 114, 116, 118, 11A, 11C, 11E, 120, 122, 124, 126, 128, 12A, 12C, 12E, 130, 132, 134, 136, 138, 13A, 13C, 13E, 140, 142, 144, 146, 148, 14A, 14C, 14E, 150, 152, 154, 156, 158, 15A, 15C, 15E, 160, 162, 164, 166, 168, 16A, 16C, 16E, 170, 172, 174, 176, 178, 17A, 17C, 17E, 180, 182, 184, 186, 188, 18A, 18C, 18E, 190, 192, 194, 196, 198, 19A, 19C, 19E, 1A0, 1A2, 1A4, 1A6, 1A8, 1AA, 1AC, 1AE, 1B0, 1B2, 1B4, 1B6, 1B8, 1BA, 1BC, 1BE, 1C0, 1C2, 1C4, 1C6, 1C8, 1CA, 1CC, 1CE, 1D0, 1D2, 1D4, 1D6, 1D8, 1DA, 1DC, 1DE, 1E0, 1E2, 1E4, 1E6, 1E8, 1EA, 1EC, 1EE, 1F0, 1F2, 1F4, 1F6, 1F8, 1FA, 1FC, 1FE, 200, 202, 204, 206, 208, 20A, 20C, 20E, 210, 212, 214, 216, 218, 21A, 21C, 21E, 220, 222, 224, 226, 228, 22A, 22C, 22E, 230, 232, 234, 236, 238, 23A, 23C, 23E, 240, 242, 244, 246, 248, 24A, 24C, 24E, 250, 252, 254, 256, 258, 25A, 25C, 25E, 260, 262, 264, 266, 268, 26A, 26C, 26E, 270, 272, 274, 276, 278, 27A, 27C, 27E, 280, 282, 284, 286, 288, 28A, 28C, 28E, 290, 292, 294, 296, 298, 29A, 29C, 29E, 2A0, 2A2, 2A4, 2A6, 2A8, 2AA, 2AC, 2AE, 2B0, 2B2, 2B4, 2B6, 2B8, 2BA, 2BC, 2BE, 2C0, 2C2, 2C4, 2C6, 2C8, 2CA, 2CC, 2CE, 2D0, 2D2, 2D4, 2D6, 2D8, 2DA, 2DC, 2DE, 2E0, 2E2, 2E4, 2E6, 2E8, 2EA, 2EC, 2EE, 2F0, 2F2, 2F4, 2F6, 2F8, 2FA, 2FC, 2FE, 300, 302, 304, 306, 308, 30A, 30C, 30E, 310, 312, 314, 316, 318, 31A, 31C, 31E, 320, 322, 324, 326, 328, 32A, 32C, 32E, 330, 332, 334, 336, 338, 33A, 33C, 33E, 340, 342, 344, 346, 348, 34A, 34C, 34E, 350, 352, 354, 356, 358, 35A, 35C, 35E, 360, 362, 364, 366, 368, 36A, 36C, 36E, 370, 372, 374, 376, 378, 37A, 37C, 37E, 380, 382, 384, 386, 388, 38A, 38C, 38E, 390, 392, 394, 396, 398, 39A, 39C, 39E, 3A0, 3A2, 3A4, 3A6, 3A8, 3AA, 3AC, 3AE, 3B0, 3B2, 3B4, 3B6, 3B8, 3BA, 3BC, 3BE, 3C0, 3C2, 3C4, 3C6, 3C8, 3CA, 3CC, 3CE, 3D0, 3D2, 3D4, 3D6, 3D8, 3DA, 3DC, 3DE, 3E0, 3E2, 3E4, 3E6, 3E8, 3EA, 3EC, 3EE, 3F0, 3F2, 3F4, 3F6, 3F8, 3FA, 3FC, 3FE, 400, 402, 404, 406, 408, 40A, 40C, 40E, 410, 412, 414, 416, 418, 41A, 41C, 41E, 420, 422, 424, 426, 428, 42A, 42C, 42E, 430, 432, 434, 436, 438, 43A, 43C, 43E, 440, 442, 444, 446, 448, 44A, 44C, 44E, 450, 452, 454, 456, 458, 45A, 45C, 45E, 460, 462, 464, 466, 468, 46A, 46C, 46E, 470, 472, 474, 476, 478, 47A, 47C, 47E, 480, 482, 484, 486, 488, 48A, 48C, 48E, 490, 492, 494, 496, 498, 49A, 49C, 49E, 4A0, 4A2, 4A4, 4A6, 4A8, 4AA, 4AC, 4AE, 4B0, 4B2, 4B4, 4B6, 4B8, 4BA, 4BC, 4BE, 4C0, 4C2, 4C4, 4C6, 4C8, 4CA, 4CC, 4CE, 4D0, 4D2, 4D4, 4D6, 4D8, 4DA, 4DC, 4DE, 4E0, 4E2, 4E4, 4E6, 4E8, 4EA, 4EC, 4EE, 4F0, 4F2, 4F4, 4F6, 4F8, 4FA, 4FC, 4FE, 500, 502, 504, 506, 508, 50A, 50C, 50E, 510, 512, 514, 516, 518, 51A, 51C, 51E, 520, 522, 524, 526, 528, 52A, 52C, 52E, 530, 532, 534, 536, 538, 53A, 53C, 53E, 540, 542, 544, 546, 548, 54A, 54C, 54E, 550, 552, 554, 556, 558, 55A, 55C, 55E, 560, 562, 564, 566, 568, 56A, 56C, 56E, 570, 572, 574, 576, 578, 57A, 57C, 57E, 580, 582, 584, 586, 588, 58A, 58C, 58E, 590, 592, 594, 596, 598, 59A, 59C, 59E, 5A0, 5A2, 5A4, 5A6, 5A8, 5AA, 5AC, 5AE, 5B0, 5B2, 5B4, 5B6, 5B8, 5BA, 5BC, 5BE, 5C0, 5C2, 5C4, 5C6, 5C8, 5CA, 5CC, 5CE, 5D0, 5D2, 5D4, 5D6, 5D8, 5DA, 5DC, 5DE, 5E0, 5E2, 5E4, 5E6, 5E8, 5EA, 5EC, 5EE, 5F0, 5F2, 5F4, 5F6, 5F8, 5FA, 5FC, 5FE, 600, 602, 604, 606, 608, 60A, 60C, 60E, 610, 612, 614, 616, 618, 61A, 61C, 61E, 620, 622, 624, 626, 628, 62A, 62C, 62E, 630, 632, 634, 636, 638, 63A, 63C, 63E, 640, 642, 644, 646, 648, 64A, 64C, 64E, 650, 652, 654, 656, 658, 65A, 65C, 65E, 660, 662, 664, 666, 668, 66A, 66C, 66E, 670, 672, 674, 676, 678, 67A, 67C, 67E, 680, 682, 684, 686, 688, 68A, 68C, 68E, 690, 692, 694, 696, 698, 69A, 69C, 69E, 6A0, 6A2, 6A4, 6A6, 6A8, 6AA, 6AC, 6AE, 6B0, 6B2, 6B4, 6B6, 6B8, 6BA, 6BC, 6BE, 6C0, 6C2, 6C4, 6C6, 6C8, 6CA, 6CC, 6CE, 6D0, 6D2, 6D4, 6D6, 6D8, 6DA, 6DC, 6DE, 6E0, 6E2, 6E4, 6E6, 6E8, 6EA, 6EC, 6EE, 6F0, 6F2, 6F4, 6F6, 6F8, 6FA, 6FC, 6FE, 700, 702, 704, 706, 708, 70A, 70C, 70E, 710, 712, 714, 716, 718, 71A, 71C, 71E, 720, 722, 724, 726, 728, 72A, 72C, 72E, 730, 732, 734, 736, 738, 73A, 73C, 73E, 740, 742, 744, 746, 748, 74A, 74C, 74E, 750, 752, 754, 756, 758, 75A, 75C, 75E, 760, 762, 764, 766, 768, 76A, 76C, 76E, 770, 772, 774, 776, 778, 77A, 77C, 77E, 780, 782, 784, 786, 788, 78A, 78C, 78E, 790, 792, 794, 796, 798, 79A, 79C, 79E, 7A0, 7A2, 7A4, 7A6, 7A8, 7AA, 7AC, 7AE, 7B0, 7B2, 7B4, 7B6, 7B8, 7BA, 7BC, 7BE, 7C0, 7C2, 7C4, 7C6, 7C8, 7CA, 7CC, 7CE, 7D0, 7D2, 7D4, 7D6, 7D8, 7DA, 7DC, 7DE, 7E0, 7E2, 7E4, 7E6, 7E8, 7EA, 7EC, 7EE, 7F0, 7F2, 7F4, 7F6, 7F8, 7FA, 7FC, 7FE, 1, 3, 5, 7, 9, B, D, F, 11, 13, 15, 17, 19, 1B, 1D, 1F, 21, 23, 25, 27, 29, 2B, 2D, 2F, 31, 33, 35, 37, 39, 3B, 3D, 3F, 41, 43, 45, 47, 49, 4B, 4D, 4F, 51, 53, 55, 57, 59, 5B, 5D, 5F, 61, 63, 65, 67, 69, 6B, 6D, 6F, 71, 73, 75, 77, 79, 7B, 7D, 7F, 81, 83, 85, 87, 89, 8B, 8D, 8F, 91, 93, 95, 97, 99, 9B, 9D, 9F, A1, A3, A5, A7, A9, AB, AD, AF, B1, B3, B5, B7, B9, BB, BD, BF, C1, C3, C5, C7, C9, CB, CD, CF, D1, D3, D5, D7, D9, DB, DD, DF, E1, E3, E5, E7, E9, EB, ED, EF, F1, F3, F5, F7, F9, FB, FD, FF, 101, 103, 105, 107, 109, 10B, 10D, 10F, 111, 113, 115, 117, 119, 11B, 11D, 11F, 121, 123, 125, 127, 129, 12B, 12D, 12F, 131, 133, 135, 137, 139, 13B, 13D, 13F, 141, 143, 145, 147, 149, 14B, 14D, 14F, 151, 153, 155, 157, 159, 15B, 15D, 15F, 161, 163, 165, 167, 169, 16B, 16D, 16F, 171, 173, 175, 177, 179, 17B, 17D, 17F, 181, 183, 185, 187, 189, 18B, 18D, 18F, 191, 193, 195, 197, 199, 19B, 19D, 19F, 1A1, 1A3, 1A5, 1A7, 1A9, 1AB, 1AD, 1AF, 1B1, 1B3, 1B5, 1B7, 1B9, 1BB, 1BD, 1BF, 1C1, 1C3, 1C5, 1C7, 1C9, 1CB, 1CD, 1CF, 1D1, 1D3, 1D5, 1D7, 1D9, 1DB, 1DD, 1DF, 1E1, 1E3, 1E5, 1E7, 1E9, 1EB, 1ED, 1EF, 1F1, 1F3, 1F5, 1F7, 1F9, 1FB, 1FD, 1FF, 201, 203, 205, 207, 209, 20B, 20D, 20F, 211, 213, 215, 217, 219, 21B, 21D, 21F, 221, 223, 225, 227, 229, 22B, 22D, 22F, 231, 233, 235, 237, 239, 23B, 23D, 23F, 241, 243, 245, 247, 249, 24B, 24D, 24F, 251, 253, 255, 257, 259, 25B, 25D, 25F, 261, 263, 265, 267, 269, 26B, 26D, 26F, 271, 273, 275, 277, 279, 27B, 27D, 27F, 281, 283, 285, 287, 289, 28B, 28D, 28F, 291, 293, 295, 297, 299, 29B, 29D, 29F, 2A1, 2A3, 2A5, 2A7, 2A9, 2AB, 2AD, 2AF, 2B1, 2B3, 2B5, 2B7, 2B9, 2BB, 2BD, 2BF, 2C1, 2C3, 2C5, 2C7, 2C9, 2CB, 2CD, 2CF, 2D1, 2D3, 2D5, 2D7, 2D9, 2DB, 2DD, 2DF, 2E1, 2E3, 2E5, 2E7, 2E9, 2EB, 2ED, 2EF, 2F1, 2F3, 2F5, 2F7, 2F9, 2FB, 2FD, 2FF, 301, 303, 305, 307, 309, 30B, 30D, 30F, 311, 313, 315, 317, 319, 31B, 31D, 31F, 321, 323, 325, 327, 329, 32B, 32D, 32F, 331, 333, 335, 337, 339, 33B, 33D, 33F, 341, 343, 345, 347, 349, 34B, 34D, 34F, 351, 353, 355, 357, 359, 35B, 35D, 35F, 361, 363, 365, 367, 369, 36B, 36D, 36F, 371, 373, 375, 377, 379, 37B, 37D, 37F, 381, 383, 385, 387, 389, 38B, 38D, 38F, 391, 393, 395, 397, 399, 39B, 39D, 39F, 3A1, 3A3, 3A5, 3A7, 3A9, 3AB, 3AD, 3AF, 3B1, 3B3, 3B5, 3B7, 3B9, 3BB, 3BD, 3BF, 3C1, 3C3, 3C5, 3C7, 3C9, 3CB, 3CD, 3CF, 3D1, 3D3, 3D5, 3D7, 3D9, 3DB, 3DD, 3DF, 3E1, 3E3, 3E5, 3E7, 3E9, 3EB, 3ED, 3EF, 3F1, 3F3, 3F5, 3F7, 3F9, 3FB, 3FD, 3FF, 401, 403, 405, 407, 409, 40B, 40D, 40F, 411, 413, 415, 417, 419, 41B, 41D, 41F, 421, 423, 425, 427, 429, 42B, 42D, 42F, 431, 433, 435, 437, 439, 43B, 43D, 43F, 441, 443, 445, 447, 449, 44B, 44D, 44F, 451, 453, 455, 457, 459, 45B, 45D, 45F, 461, 463, 465, 467, 469, 46B, 46D, 46F, 471, 473, 475, 477, 479, 47B, 47D, 47F, 481, 483, 485, 487, 489, 48B, 48D, 48F, 491, 493, 495, 497, 499, 49B, 49D, 49F, 4A1, 4A3, 4A5, 4A7, 4A9, 4AB, 4AD, 4AF, 4B1, 4B3, 4B5, 4B7, 4B9, 4BB, 4BD, 4BF, 4C1, 4C3, 4C5, 4C7, 4C9, 4CB, 4CD, 4CF, 4D1, 4D3, 4D5, 4D7, 4D9, 4DB, 4DD, 4DF, 4E1, 4E3, 4E5, 4E7, 4E9, 4EB, 4ED, 4EF, 4F1, 4F3, 4F5, 4F7, 4F9, 4FB, 4FD, 4FF, 501, 503, 505, 507, 509, 50B, 50D, 50F, 511, 513, 515, 517, 519, 51B, 51D, 51F, 521, 523, 525, 527, 529, 52B, 52D, 52F, 531, 533, 535, 537, 539, 53B, 53D, 53F, 541, 543, 545, 547, 549, 54B, 54D, 54F, 551, 553, 555, 557, 559, 55B, 55D, 55F, 561, 563, 565, 567, 569, 56B, 56D, 56F, 571, 573, 575, 577, 579, 57B, 57D, 57F, 581, 583, 585, 587, 589, 58B, 58D, 58F, 591, 593, 595, 597, 599, 59B, 59D, 59F, 5A1, 5A3, 5A5, 5A7, 5A9, 5AB, 5AD, 5AF, 5B1, 5B3, 5B5, 5B7, 5B9, 5BB, 5BD, 5BF, 5C1, 5C3, 5C5, 5C7, 5C9, 5CB, 5CD, 5CF, 5D1, 5D3, 5D5, 5D7, 5D9, 5DB, 5DD, 5DF, 5E1, 5E3, 5E5, 5E7, 5E9, 5EB, 5ED, 5EF, 5F1, 5F3, 5F5, 5F7, 5F9, 5FB, 5FD, 5FF, 601, 603, 605, 607, 609, 60B, 60D, 60F, 611, 613, 615, 617, 619, 61B, 61D, 61F, 621, 623, 625, 627, 629, 62B, 62D, 62F, 631, 633, 635, 637, 639, 63B, 63D, 63F, 641, 643, 645, 647, 649, 64B, 64D, 64F, 651, 653, 655, 657, 659, 65B, 65D, 65F, 661, 663, 665, 667, 669, 66B, 66D, 66F, 671, 673, 675, 677, 679, 67B, 67D, 67F, 681, 683, 685, 687, 689, 68B, 68D, 68F, 691, 693, 695, 697, 699, 69B, 69D, 69F, 6A1, 6A3, 6A5, 6A7, 6A9, 6AB, 6AD, 6AF, 6B1, 6B3, 6B5, 6B7, 6B9, 6BB, 6BD, 6BF, 6C1, 6C3, 6C5, 6C7, 6C9, 6CB, 6CD, 6CF, 6D1, 6D3, 6D5, 6D7, 6D9, 6DB, 6DD, 6DF, 6E1, 6E3, 6E5, 6E7, 6E9, 6EB, 6ED, 6EF, 6F1, 6F3, 6F5, 6F7, 6F9, 6FB, 6FD, 6FF, 701, 703, 705, 707, 709, 70B, 70D, 70F, 711, 713, 715, 717, 719, 71B, 71D, 71F, 721, 723, 725, 727, 729, 72B, 72D, 72F, 731, 733, 735, 737, 739, 73B, 73D, 73F, 741, 743, 745, 747, 749, 74B, 74D, 74F, 751, 753, 755, 757, 759, 75B, 75D, 75F, 761, 763, 765, 767, 769, 76B, 76D, 76F, 771, 773, 775, 777, 779, 77B, 77D, 77F, 781, 783, 785, 787, 789, 78B, 78D, 78F, 791, 793, 795, 797, 799, 79B, 79D, 79F, 7A1, 7A3, 7A5, 7A7, 7A9, 7AB, 7AD, 7AF, 7B1, 7B3, 7B5, 7B7, 7B9, 7BB, 7BD, 7BF, 7C1, 7C3, 7C5, 7C7, 7C9, 7CB, 7CD, 7CF, 7D1, 7D3, 7D5, 7D7, 7D9, 7DB, 7DD, 7DF, 7E1, 7E3, 7E5, 7E7, 7E9, 7EB, 7ED, 7EF, 7F1, 7F3, 7F5, 7F7, 7F9, 7FB, 7FD, 7FF;',
    '
]',
    'CSET common_output_ce = false',
    'CSET common_output_clk = false',
    'CSET data_width = 11',
    'CSET default_data = 0',
    'CSET default_data_radix = 16',
    'CSET depth = 2048',
    'CSET dual_port_address = non_registered',
    'CSET dual_port_output_clock_enable = false',
    'CSET input_clock_enable = false',
    'CSET input_options = non_registered',
    'CSET memory_type = rom',
    'CSET output_options = registered',
    'CSET qualify_we_with_i_ce = false',
    'CSET reset_qdpo = false',
    'CSET reset_qspo = false',
    'CSET single_port_output_clock_enable = true',
    'CSET sync_reset_qdpo = false',
    'CSET sync_reset_qspo = false',
    'CSET component_name = dmg_43_2390721a2deaa625',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'e33a8fa7d1f9f24a056dc4e4ea3b0b82',
    'sourceFile' => 'hdl/xlsprom_dist.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      a: in std_logic_vector(c_address_width - 1 downto 0);
      clk: in std_logic;
      qspo_ce: in std_logic;
      qspo: out std_logic_vector(c_width - 1 downto 0)',
      'core_instance_text' => '        a => core_addr,
        clk => clk,
        qspo_ce => core_ce,
        qspo => core_data_out',
      'core_name0' => 'dmg_43_2390721a2deaa625',
      'entity_name.0' => 'xlsprom_dist',
      'needs_core' => 1,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '290abf6b584e1a1d01ec272cc18bccc8',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: signed((3 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (count_reg_20_23_rst = \'1\')) then
        count_reg_20_23 <= "0";
      elsif (ce = \'1\') then 
        count_reg_20_23 <= count_reg_20_23 - std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= \'1\';
    else 
      count_reg_join_44_1_rst <= \'0\';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end',
      'crippled_entity' => 'is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'counter_0009e314f5',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd4aa90275259664afd66d3f74cdd9ada',
    'sourceFile' => '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen/hdl/xlslice.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = '/opt/Xilinx/11.1/DSP_Tools/lin64/sysgen';
  open(RESULTS, '> /home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/script_results1759625761792963514') || 
    croak 'couldn\'t open /home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/script_results1759625761792963514';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/script_results1759625761792963514';
};

if ($@) {
  open(RESULTS, '> /home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/script_results1759625761792963514') || 
    croak 'couldn\'t open /home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/script_results1759625761792963514';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing /home/observer/projects/eovsa/src/fft_wideband_real_core/sysgen/script_results1759625761792963514';
  exit(1);
}

exit(0);

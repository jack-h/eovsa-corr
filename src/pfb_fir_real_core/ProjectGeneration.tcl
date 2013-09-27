#
# Created by System Generator     Tue Sep 24 17:53:16 2013
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {pfb_fir_real_core_cw}
    set DSPFamily {Virtex6}
    set DSPDevice {xc6vsx475t}
    set DSPPackage {ff1759}
    set DSPSpeed {-1}
    set HDLLanguage {vhdl}
    set SynthesisTool {XST}
    set Simulator {Modelsim-SE}
    set ReadCores {False}
    set MapEffortLevel {High}
    set ParEffortLevel {High}
    set Frequency {200}
    set CreateInterfaceDocument {off}
    set NewXSTParser {1}
	if { [ string equal $Compilation {IP Packager} ] == 1 } {
		set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
		set IP_Library_Text {SysGen}
		set IP_Vendor_Text {Xilinx}
		set IP_Version_Text {1.0}
		set IP_Categories_Text {System Generator for DSP}
		set IP_Common_Repos {0}
		set IP_Dir {}
		set IP_LifeCycle_Menu {1}
		set IP_Description    {}
		
	}
    set ProjectFiles {
        {{pfb_fir_real_core_cw.vhd} -view All}
        {{pfb_fir_real_core.vhd} -view All}
        {{pfb_fir_real_core_cw.ucf}}
        {{pfb_fir_real_core_cw.xdc}}
        {{bmg_72_967630e6b2a5c300.mif}}
        {{bmg_72_9be7d465d5eaaba3.mif}}
        {{bmg_72_48aecbcc669a19be.mif}}
        {{bmg_72_2e28d8b7ce374e24.mif}}
        {{bmg_72_0ebe52f0796e6018.mif}}
        {{bmg_72_2eec44623d367658.mif}}
        {{bmg_72_3fc848ca6f2fb3e5.mif}}
        {{bmg_72_912f853d170eb76f.mif}}
        {{bmg_72_0982e05b26d41eef.mif}}
        {{bmg_72_e0b3efafc42ce43e.mif}}
        {{bmg_72_c7aab016f93a6382.mif}}
        {{bmg_72_3e05483b044fa88c.mif}}
        {{bmg_72_9628accf375c9240.mif}}
        {{bmg_72_b69451ed038a8d73.mif}}
        {{bmg_72_95650c95bb98bfbd.mif}}
        {{bmg_72_246e222abe66c216.mif}}
        {{bmg_72_654583903c8e8194.mif}}
        {{/home/observer/projects/eovsa-corr/src/pfb_fir_real_core.mdl}}
    }
    set TopLevelModule {pfb_fir_real_core_cw}
    set SynthesisConstraintsFile {pfb_fir_real_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create

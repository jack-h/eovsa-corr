#
# Created by System Generator     Tue Sep 24 19:05:48 2013
#
# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator.
#

namespace eval ::xilinx::dsptool::iseproject::param {
    set SynthStrategyName {XST Defaults*}
    set ImplStrategyName {ISE Defaults*}
    set Compilation {NGC Netlist}
    set Project {xeng_core_cw}
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
        {{xeng_core_cw.vhd} -view All}
        {{xeng_core.vhd} -view All}
        {{xeng_core_cw.ucf}}
        {{xeng_core_cw.xdc}}
        {{bmg_72_24d0754b1ef55a90.mif}}
        {{bmg_72_bf890e4806a4306d.mif}}
        {{bmg_72_4fcfcc7deb4cdf86.mif}}
        {{/home/observer/projects/eovsa-corr/src/xeng_core.mdl}}
    }
    set TopLevelModule {xeng_core_cw}
    set SynthesisConstraintsFile {xeng_core_cw.xcf}
    set ImplementationStopView {Structural}
    set ProjectGenerator {SysgenDSP}
}
    source SgIseProject.tcl
    ::xilinx::dsptool::iseproject::create

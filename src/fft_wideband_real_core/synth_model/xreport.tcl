if {[file exists {fft_wideband_real_core.ise}] && [file exists {fft_wideband_real_core.xise}] && [file exists {fft_wideband_real_core.gise}]} {
    project open {fft_wideband_real_core}
} else {
    file delete {fft_wideband_real_core.ise} {fft_wideband_real_core.xise} {fft_wideband_real_core.gise}
    project new {fft_wideband_real_core}
}
project set "Enable Enhanced Design Summary" true
project set "Enable Message Filtering" true
project set "Display Incremental Messages" true
project set "Message Filter File" {../filter.filter}
project close

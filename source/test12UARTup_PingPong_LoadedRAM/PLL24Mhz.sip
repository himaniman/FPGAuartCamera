set_global_assignment -entity "PLL24Mhz" -library "lib_PLL24Mhz" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "PLL24Mhz" -library "lib_PLL24Mhz" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "PLL24Mhz" -library "lib_PLL24Mhz" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_PLL24Mhz" -name SPD_FILE [file join $::quartus(sip_path) "PLL24Mhz.spd"]

set_global_assignment -library "lib_PLL24Mhz" -name MISC_FILE [file join $::quartus(sip_path) "PLL24Mhz_sim/PLL24Mhz.vo"]

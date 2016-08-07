set_global_assignment -entity "MyPll24Mhz" -library "lib_MyPll24Mhz" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "MyPll24Mhz" -library "lib_MyPll24Mhz" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "MyPll24Mhz" -library "lib_MyPll24Mhz" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_MyPll24Mhz" -name SPD_FILE [file join $::quartus(sip_path) "MyPll24Mhz.spd"]

set_global_assignment -library "lib_MyPll24Mhz" -name MISC_FILE [file join $::quartus(sip_path) "MyPll24Mhz_sim/MyPll24Mhz.vo"]

# 100MHz clock
create_clock -period 10.000 -name clk_100 -waveform {0.000 5.000} [get_ports CLK_100M]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_100M]
set_property PACKAGE_PIN N15 [get_ports CLK_100M]

# reset button
set_property PACKAGE_PIN J2 [get_ports RESET]
set_property IOSTANDARD LVCMOS25 [get_ports RESET]

#HDMI Signals
set_property -dict { PACKAGE_PIN V17   IOSTANDARD TMDS_33 } [get_ports {hdmi_tmds_clk_n}]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD TMDS_33 } [get_ports {hdmi_tmds_clk_p}]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD TMDS_33  } [get_ports {hdmi_tmds_data_n[0]}]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD TMDS_33  } [get_ports {hdmi_tmds_data_n[1]}]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD TMDS_33  } [get_ports {hdmi_tmds_data_n[2]}]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD TMDS_33  } [get_ports {hdmi_tmds_data_p[0]}]
set_property -dict { PACKAGE_PIN R16   IOSTANDARD TMDS_33  } [get_ports {hdmi_tmds_data_p[1]}]
set_property -dict { PACKAGE_PIN R14   IOSTANDARD TMDS_33  } [get_ports {hdmi_tmds_data_p[2]}]

## User LEDs
# LED_USER (Mapping to an FPGA pin)
set_property PACKAGE_PIN C13 [get_ports LED_USER]
set_property IOSTANDARD LVCMOS33 [get_ports LED_USER]

# LED_POWER (Mapping to two FPGA pins)
set_property PACKAGE_PIN C14 [get_ports LED_POWER[0]]
set_property PACKAGE_PIN D14 [get_ports LED_POWER[1]]
set_property IOSTANDARD LVCMOS33 [get_ports LED_POWER]

# LED_DISK (Mapping to two FPGA pins)
set_property PACKAGE_PIN D15 [get_ports LED_DISK[0]]
set_property PACKAGE_PIN D16 [get_ports LED_DISK[1]]
set_property IOSTANDARD LVCMOS33 [get_ports LED_DISK]

## Buttons (Mapping to two FPGA pins)
set_property PACKAGE_PIN J1 [get_ports BUTTONS[0]]
set_property PACKAGE_PIN G2 [get_ports BUTTONS[1]]
set_property IOSTANDARD LVCMOS25 [get_ports BUTTONS]

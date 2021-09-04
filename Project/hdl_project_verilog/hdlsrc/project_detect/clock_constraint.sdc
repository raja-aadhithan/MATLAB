
# Timing Specification Constraints

create_clock -name clk -period 5.000000ns -waveform {0.0ns 2.500000ns} [get_ports {clk}]
derive_pll_clocks
derive_clock_uncertainty

OUT_DIR = $(abspath .)/out
V_DIR = $(abspath .)/v

NAME = dsp_1

IMPL_FILE = $(V_DIR)/$(NAME).v

TIME_FILE = $(OUT_DIR)/$(NAME)_time.txt
UTIL_FILE = $(OUT_DIR)/$(NAME)_util.txt
DCP_FILE = $(OUT_DIR)/$(NAME).dcp
NETLIST_FILE = $(OUT_DIR)/$(NAME)_netlist.v
XDC_FILE = $(abspath .)/tcl/constraint.xdc

default: impl

.PHONY: impl
impl: | $(OUT_DIR)
	vivado -mode batch -source tcl/vivado.tcl -tclargs $(NAME) $(IMPL_FILE) $(UTIL_FILE) $(TIME_FILE) $(DCP_FILE) $(NETLIST_FILE) $(XDC_FILE)

$(OUT_DIR):
	mkdir -p $@

sim:
	xvlog $(XILINX_VIVADO)/data/verilog/src/glbl.v $(PWD)/v/test_all.v $(PWD)/v/test_dot.v $(PWD)/v/dot.v
	xelab -L unisims_ver -R --timescale 1ps/1ps -O3 glbl test_all

clean:
	-rm -rf *.log *.wdb *.jou *.dir *.pb $(OUT_DIR) hd_visual xsim.dir

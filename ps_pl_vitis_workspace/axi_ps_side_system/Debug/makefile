#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf



#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = C:/PS_PL_accelerator/ps_pl_vitis_workspace/ps_pl_system_wrapper/export/ps_pl_system_wrapper/ps_pl_system_wrapper.xpfm
SYS_CONFIG = ps_pl_system_wrapper
DOMAINS = domain_psu_cortexa53_0
BIF_PATH = C:/PS_PL_accelerator/ps_pl_vitis_workspace/axi_ps_side_system/Debug/system.bif

BITSTREAM_PATH = C:/PS_PL_accelerator/ps_pl_vitis_workspace/axi_ps_side/_ide/bitstream/ps_pl_system_wrapper.bit
SD_FILES = --elf C:/PS_PL_accelerator/ps_pl_vitis_workspace/axi_ps_side/Debug/axi_ps_side.elf,psu_cortexa53_0

#
# primary build targets
#

all: package

package:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 63283 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} package
	${RM} system.bif

.PHONY: all package clean



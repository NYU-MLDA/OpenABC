export DESIGN_NICKNAME = picosoc
export DESIGN_NAME = picosoc
export PLATFORM    = nangate45

#export VERILOG_FILES = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export VERILOG_FILES = ./designs/src/$(DESIGN_NICKNAME)/picosoc.v ./designs/src/$(DESIGN_NICKNAME)/picorv32.v ./designs/src/$(DESIGN_NICKNAME)/simpleuart.v ./designs/src/$(DESIGN_NICKNAME)/spimemio.v
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# These values must be multiples of placement site
# x=0.19 y=1.4
export DIE_AREA    = 0 0 450.17 450
export CORE_AREA   = 10.07 11.2 440.29 440.2


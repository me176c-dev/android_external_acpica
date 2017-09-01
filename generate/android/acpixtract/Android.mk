#
# acpixtract - extract binary ACPI tables from acpidump text output
#
include $(CLEAR_VARS)
LOCAL_MODULE := acpixtract
LOCAL_SRC_FILES := \
	$(ACPIXTRACT)/acpixtract.c\
	$(ACPIXTRACT)/axmain.c\
	$(ACPIXTRACT)/axutils.c\
	$(ACPICA_COMMON)/getopt.c\
	$(ACPICA_OSL)/osunixxf.c\
	$(ACPICA_UTILITIES)/utascii.c\
	$(ACPICA_UTILITIES)/utdebug.c\
	$(ACPICA_UTILITIES)/utexcep.c\
	$(ACPICA_UTILITIES)/utglobal.c\
	$(ACPICA_UTILITIES)/uthex.c\
	$(ACPICA_UTILITIES)/utmath.c\
	$(ACPICA_UTILITIES)/utnonansi.c\
	$(ACPICA_UTILITIES)/utxferror.c

#
# Flags specific to acpixtract
#
LOCAL_CFLAGS += \
	-DACPI_XTRACT_APP

#
# Common Rules
#
include $(ACPICA_BUILD)

#
# acpidump - ACPI table dump utility (binary to ascii hex)
#
include $(CLEAR_VARS)
LOCAL_MODULE := acpidump
LOCAL_SRC_FILES := \
	$(ACPIDUMP)/apdump.c\
	$(ACPIDUMP)/apfiles.c\
	$(ACPIDUMP)/apmain.c\
	$(ACPICA_COMMON)/cmfsize.c\
	$(ACPICA_COMMON)/getopt.c\
	$(ACPICA_OSL)/osunixdir.c\
	$(ACPICA_OSL)/osunixmap.c\
	$(ACPICA_OSL)/osunixxf.c\
	$(ACPICA_TABLES)/tbprint.c\
	$(ACPICA_TABLES)/tbxfroot.c\
	$(ACPICA_UTILITIES)/utascii.c\
	$(ACPICA_UTILITIES)/utbuffer.c\
	$(ACPICA_UTILITIES)/utdebug.c\
	$(ACPICA_UTILITIES)/utexcep.c\
	$(ACPICA_UTILITIES)/utglobal.c\
	$(ACPICA_UTILITIES)/uthex.c\
	$(ACPICA_UTILITIES)/utmath.c\
	$(ACPICA_UTILITIES)/utnonansi.c\
	$(ACPICA_UTILITIES)/utstring.c\
	$(ACPICA_UTILITIES)/utstrsuppt.c\
	$(ACPICA_UTILITIES)/utstrtoul64.c\
	$(ACPICA_UTILITIES)/utxferror.c\
	$(ACPICA_OSL)/oslinuxtbl.c

#
# Flags specific to acpidump
#
LOCAL_CFLAGS += \
	-DACPI_DUMP_APP

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/$(ACPIDUMP)

#
# Common Rules
#
include $(ACPICA_BUILD)

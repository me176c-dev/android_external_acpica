#
# acpisrc - ACPICA source code conversion utility
#
include $(CLEAR_VARS)
LOCAL_MODULE := acpisrc
LOCAL_SRC_FILES := \
	$(ACPISRC)/ascase.c\
	$(ACPISRC)/asconvrt.c\
	$(ACPISRC)/asfile.c\
	$(ACPISRC)/asmain.c\
	$(ACPISRC)/asremove.c\
	$(ACPISRC)/astable.c\
	$(ACPISRC)/asutils.c\
	$(ACPICA_COMMON)/cmfsize.c\
	$(ACPICA_COMMON)/getopt.c \
	$(ACPICA_OSL)/osunixdir.c\
	$(ACPICA_OSL)/osunixxf.c\
	$(ACPICA_UTILITIES)/utascii.c\
	$(ACPICA_UTILITIES)/utdebug.c\
	$(ACPICA_UTILITIES)/utexcep.c\
	$(ACPICA_UTILITIES)/utglobal.c\
	$(ACPICA_UTILITIES)/uthex.c\
	$(ACPICA_UTILITIES)/utmath.c\
	$(ACPICA_UTILITIES)/utnonansi.c\
	$(ACPICA_UTILITIES)/utstring.c\
	$(ACPICA_UTILITIES)/utxferror.c

#
# Compile flags specific to acpisrc
#
LOCAL_CFLAGS += \
	-DACPI_SRC_APP

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/$(ACPISRC)

#
# Common Rules
#
include $(ACPICA_BUILD)

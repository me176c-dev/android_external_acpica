#
# acpibin - Binary ACPI table utility
#
include $(CLEAR_VARS)
LOCAL_MODULE := acpibin
LOCAL_SRC_FILES := \
	$(ACPIBIN)/abcompare.c\
	$(ACPIBIN)/abmain.c\
	$(ACPICA_COMMON)/cmfsize.c\
	$(ACPICA_COMMON)/getopt.c\
	$(ACPICA_UTILITIES)/utalloc.c\
	$(ACPICA_UTILITIES)/utascii.c\
	$(ACPICA_UTILITIES)/utbuffer.c\
	$(ACPICA_UTILITIES)/utcache.c\
	$(ACPICA_UTILITIES)/utdebug.c\
	$(ACPICA_UTILITIES)/utdecode.c\
	$(ACPICA_UTILITIES)/utexcep.c\
	$(ACPICA_UTILITIES)/utglobal.c\
	$(ACPICA_UTILITIES)/utlock.c\
	$(ACPICA_UTILITIES)/utmath.c\
	$(ACPICA_UTILITIES)/utmisc.c\
	$(ACPICA_UTILITIES)/utmutex.c\
	$(ACPICA_UTILITIES)/utstate.c\
	$(ACPICA_UTILITIES)/utstring.c\
	$(ACPICA_UTILITIES)/utxferror.c\
	$(ACPICA_OSL)/osunixxf.c

#
# Flags specific to acpibin
#
LOCAL_CFLAGS += \
	-DACPI_BIN_APP

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/$(ACPIBIN)

#
# Common Rules
#
include $(ACPICA_BUILD)

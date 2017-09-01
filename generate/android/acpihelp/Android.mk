#
# acpihelp - ACPI Help utility. Displays ASL operator syntax and
# information about ACPI predefined names.
#
include $(CLEAR_VARS)
LOCAL_MODULE := acpihelp
LOCAL_SRC_FILES := \
	$(ACPIHELP)/ahaml.c\
	$(ACPIHELP)/ahamlops.c\
	$(ACPIHELP)/ahasl.c\
	$(ACPIHELP)/ahaslkey.c\
	$(ACPIHELP)/ahaslops.c\
	$(ACPIHELP)/ahdecode.c\
	$(ACPIHELP)/ahgrammar.c\
	$(ACPICA_COMMON)/ahids.c\
	$(ACPICA_COMMON)/ahpredef.c\
	$(ACPIHELP)/ahmain.c\
	$(ACPICA_COMMON)/ahtable.c\
	$(ACPICA_COMMON)/ahuuids.c\
	$(ACPICA_COMMON)/getopt.c\
	$(ACPICA_OSL)/osunixxf.c\
	$(ACPICA_UTILITIES)/utdebug.c\
	$(ACPICA_UTILITIES)/utexcep.c\
	$(ACPICA_UTILITIES)/utglobal.c\
	$(ACPICA_UTILITIES)/uthex.c\
	$(ACPICA_UTILITIES)/utmath.c\
	$(ACPICA_UTILITIES)/utnonansi.c\
	$(ACPICA_UTILITIES)/utpredef.c\
	$(ACPICA_UTILITIES)/utuuid.c

#
# Flags specific to acpihelp
#
LOCAL_CFLAGS += \
	-DACPI_HELP_APP\

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/$(ACPIHELP)

#
# Common Rules
#
include $(ACPICA_BUILD)

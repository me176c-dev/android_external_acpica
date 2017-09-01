LOCAL_PATH := $(ACPICA_ROOT)

#
# Main ACPICA source directories
#
ACPICA_SRC :=            source
ACPICA_COMMON :=         $(ACPICA_SRC)/common
ACPICA_TOOLS :=          $(ACPICA_SRC)/tools
ACPICA_OSL :=            $(ACPICA_SRC)/os_specific/service_layers
ACPICA_CORE :=           $(ACPICA_SRC)/components
ACPICA_INCLUDE :=        $(ACPICA_SRC)/include
ACPICA_DEBUGGER :=       $(ACPICA_CORE)/debugger
ACPICA_DISASSEMBLER :=   $(ACPICA_CORE)/disassembler
ACPICA_DISPATCHER :=     $(ACPICA_CORE)/dispatcher
ACPICA_EVENTS :=         $(ACPICA_CORE)/events
ACPICA_EXECUTER :=       $(ACPICA_CORE)/executer
ACPICA_HARDWARE :=       $(ACPICA_CORE)/hardware
ACPICA_NAMESPACE :=      $(ACPICA_CORE)/namespace
ACPICA_PARSER :=         $(ACPICA_CORE)/parser
ACPICA_RESOURCES :=      $(ACPICA_CORE)/resources
ACPICA_TABLES :=         $(ACPICA_CORE)/tables
ACPICA_UTILITIES :=      $(ACPICA_CORE)/utilities

#
# ACPICA tool and utility source directories
#
ACPIBIN :=               $(ACPICA_TOOLS)/acpibin
ACPIDUMP :=              $(ACPICA_TOOLS)/acpidump
ACPIEXAMPLES :=          $(ACPICA_TOOLS)/examples
ACPIEXEC :=              $(ACPICA_TOOLS)/acpiexec
ACPIHELP :=              $(ACPICA_TOOLS)/acpihelp
ACPINAMES :=             $(ACPICA_TOOLS)/acpinames
ACPISRC :=               $(ACPICA_TOOLS)/acpisrc
ACPIXTRACT :=            $(ACPICA_TOOLS)/acpixtract
ASL_COMPILER :=          $(ACPICA_SRC)/compiler

ACPICA_BUILD := $(call my-dir)/Android.common.mk
include $(call all-makefiles-under, $(call my-dir))

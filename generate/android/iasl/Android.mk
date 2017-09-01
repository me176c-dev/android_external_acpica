#
# iASL compiler/disassembler
#
include $(CLEAR_VARS)
LOCAL_MODULE := iasl
LOCAL_IS_HOST_MODULE := true
LOCAL_MODULE_CLASS := EXECUTABLES

LOCAL_SRC_FILES := \
	$(ACPICA_COMMON)/acfileio.c\
	$(ACPICA_COMMON)/adfile.c\
	$(ACPICA_COMMON)/adisasm.c\
	$(ACPICA_COMMON)/adwalk.c\
	$(ACPICA_COMMON)/ahids.c\
	$(ACPICA_COMMON)/ahpredef.c\
	$(ACPICA_COMMON)/ahtable.c\
	$(ACPICA_COMMON)/ahuuids.c\
	$(ASL_COMPILER)/aslanalyze.c\
	$(ASL_COMPILER)/aslascii.c\
	$(ASL_COMPILER)/aslbtypes.c\
	$(ASL_COMPILER)/aslcodegen.c\
	$(ASL_COMPILER)/aslcompile.c\
	$(ASL_COMPILER)/asldebug.c\
	$(ASL_COMPILER)/aslerror.c\
	$(ASL_COMPILER)/aslexternal.c\
	$(ASL_COMPILER)/aslfiles.c\
	$(ASL_COMPILER)/aslfileio.c\
	$(ASL_COMPILER)/aslfold.c\
	$(ASL_COMPILER)/aslhelp.c\
	$(ASL_COMPILER)/aslhex.c\
	$(ASL_COMPILER)/asllength.c\
	$(ASL_COMPILER)/asllisting.c\
	$(ASL_COMPILER)/asllistsup.c\
	$(ASL_COMPILER)/aslload.c\
	$(ASL_COMPILER)/asllookup.c\
	$(ASL_COMPILER)/aslmain.c\
	$(ASL_COMPILER)/aslmap.c\
	$(ASL_COMPILER)/aslmapenter.c\
	$(ASL_COMPILER)/aslmapoutput.c\
	$(ASL_COMPILER)/aslmaputils.c\
	$(ASL_COMPILER)/aslmessages.c\
	$(ASL_COMPILER)/aslmethod.c\
	$(ASL_COMPILER)/aslnamesp.c\
	$(ASL_COMPILER)/asloffset.c\
	$(ASL_COMPILER)/aslopcodes.c\
	$(ASL_COMPILER)/asloperands.c\
	$(ASL_COMPILER)/aslopt.c\
	$(ASL_COMPILER)/asloptions.c\
	$(ASL_COMPILER)/aslparseop.c\
	$(ASL_COMPILER)/aslpredef.c\
	$(ASL_COMPILER)/aslprepkg.c\
	$(ASL_COMPILER)/aslprintf.c\
	$(ASL_COMPILER)/aslprune.c\
	$(ASL_COMPILER)/aslresource.c\
	$(ASL_COMPILER)/aslrestype1.c\
	$(ASL_COMPILER)/aslrestype1i.c\
	$(ASL_COMPILER)/aslrestype2.c\
	$(ASL_COMPILER)/aslrestype2d.c\
	$(ASL_COMPILER)/aslrestype2e.c\
	$(ASL_COMPILER)/aslrestype2q.c\
	$(ASL_COMPILER)/aslrestype2s.c\
	$(ASL_COMPILER)/aslrestype2w.c\
	$(ASL_COMPILER)/aslstartup.c\
	$(ASL_COMPILER)/aslstubs.c\
	$(ASL_COMPILER)/aslpld.c\
	$(ASL_COMPILER)/asltransform.c\
	$(ASL_COMPILER)/asltree.c\
	$(ASL_COMPILER)/aslutils.c\
	$(ASL_COMPILER)/asluuid.c\
	$(ASL_COMPILER)/aslwalks.c\
	$(ASL_COMPILER)/aslxref.c\
	$(ASL_COMPILER)/aslxrefout.c\
	$(ASL_COMPILER)/cvcompiler.c\
	$(ASL_COMPILER)/cvdisasm.c\
	$(ASL_COMPILER)/cvparser.c\
	$(ACPICA_COMMON)/cmfsize.c\
	$(ACPICA_DEBUGGER)/dbfileio.c\
	$(ACPICA_DISASSEMBLER)/dmbuffer.c\
	$(ACPICA_DISASSEMBLER)/dmcstyle.c\
	$(ACPICA_DISASSEMBLER)/dmdeferred.c\
	$(ACPICA_COMMON)/dmextern.c\
	$(ACPICA_DISASSEMBLER)/dmnames.c\
	$(ACPICA_DISASSEMBLER)/dmopcode.c\
	$(ACPICA_DISASSEMBLER)/dmresrc.c\
	$(ACPICA_DISASSEMBLER)/dmresrcl.c\
	$(ACPICA_DISASSEMBLER)/dmresrcl2.c\
	$(ACPICA_DISASSEMBLER)/dmresrcs.c\
	$(ACPICA_COMMON)/dmrestag.c\
	$(ACPICA_COMMON)/dmswitch.c\
	$(ACPICA_COMMON)/dmtable.c\
	$(ACPICA_COMMON)/dmtables.c\
	$(ACPICA_COMMON)/dmtbdump.c\
	$(ACPICA_COMMON)/dmtbinfo.c\
	$(ACPICA_DISASSEMBLER)/dmutils.c\
	$(ACPICA_DISASSEMBLER)/dmwalk.c\
	$(ACPICA_DISPATCHER)/dsargs.c\
	$(ACPICA_DISPATCHER)/dscontrol.c\
	$(ACPICA_DISPATCHER)/dsfield.c\
	$(ACPICA_DISPATCHER)/dsobject.c\
	$(ACPICA_DISPATCHER)/dsopcode.c\
	$(ACPICA_DISPATCHER)/dspkginit.c\
	$(ACPICA_DISPATCHER)/dsutils.c\
	$(ACPICA_DISPATCHER)/dswexec.c\
	$(ACPICA_DISPATCHER)/dswload.c\
	$(ACPICA_DISPATCHER)/dswload2.c\
	$(ACPICA_DISPATCHER)/dswscope.c\
	$(ACPICA_DISPATCHER)/dswstate.c\
	$(ASL_COMPILER)/dtcompile.c\
	$(ASL_COMPILER)/dtexpress.c\
	$(ASL_COMPILER)/dtfield.c\
	$(ASL_COMPILER)/dtio.c\
	$(ASL_COMPILER)/dtsubtable.c\
	$(ASL_COMPILER)/dttable.c\
	$(ASL_COMPILER)/dttable1.c\
	$(ASL_COMPILER)/dttable2.c\
	$(ASL_COMPILER)/dttemplate.c\
	$(ASL_COMPILER)/dtutils.c\
	$(ACPICA_EXECUTER)/exconcat.c\
	$(ACPICA_EXECUTER)/exconvrt.c\
	$(ACPICA_EXECUTER)/excreate.c\
	$(ACPICA_EXECUTER)/exdump.c\
	$(ACPICA_EXECUTER)/exmisc.c\
	$(ACPICA_EXECUTER)/exmutex.c\
	$(ACPICA_EXECUTER)/exnames.c\
	$(ACPICA_EXECUTER)/exoparg1.c\
	$(ACPICA_EXECUTER)/exoparg2.c\
	$(ACPICA_EXECUTER)/exoparg3.c\
	$(ACPICA_EXECUTER)/exoparg6.c\
	$(ACPICA_EXECUTER)/exprep.c\
	$(ACPICA_EXECUTER)/exregion.c\
	$(ACPICA_EXECUTER)/exresnte.c\
	$(ACPICA_EXECUTER)/exresolv.c\
	$(ACPICA_EXECUTER)/exresop.c\
	$(ACPICA_EXECUTER)/exstore.c\
	$(ACPICA_EXECUTER)/exstoren.c\
	$(ACPICA_EXECUTER)/exstorob.c\
	$(ACPICA_EXECUTER)/exsystem.c\
	$(ACPICA_EXECUTER)/exutils.c\
	$(ACPICA_COMMON)/getopt.c\
	$(ACPICA_NAMESPACE)/nsaccess.c\
	$(ACPICA_NAMESPACE)/nsalloc.c\
	$(ACPICA_NAMESPACE)/nsdump.c\
	$(ACPICA_NAMESPACE)/nsnames.c\
	$(ACPICA_NAMESPACE)/nsobject.c\
	$(ACPICA_NAMESPACE)/nsparse.c\
	$(ACPICA_NAMESPACE)/nssearch.c\
	$(ACPICA_NAMESPACE)/nsutils.c\
	$(ACPICA_NAMESPACE)/nswalk.c\
	$(ACPICA_NAMESPACE)/nsxfobj.c\
	$(ACPICA_OSL)/osunixxf.c\
	$(ASL_COMPILER)/prexpress.c\
	$(ASL_COMPILER)/prmacros.c\
	$(ASL_COMPILER)/prscan.c\
	$(ASL_COMPILER)/prutils.c\
	$(ACPICA_PARSER)/psargs.c\
	$(ACPICA_PARSER)/psloop.c\
	$(ACPICA_PARSER)/psobject.c\
	$(ACPICA_PARSER)/psopcode.c\
	$(ACPICA_PARSER)/psopinfo.c\
	$(ACPICA_PARSER)/psparse.c\
	$(ACPICA_PARSER)/psscope.c\
	$(ACPICA_PARSER)/pstree.c\
	$(ACPICA_PARSER)/psutils.c\
	$(ACPICA_PARSER)/pswalk.c\
	$(ACPICA_TABLES)/tbdata.c\
	$(ACPICA_TABLES)/tbfadt.c\
	$(ACPICA_TABLES)/tbinstal.c\
	$(ACPICA_TABLES)/tbprint.c\
	$(ACPICA_TABLES)/tbutils.c\
	$(ACPICA_TABLES)/tbxface.c\
	$(ACPICA_TABLES)/tbxfload.c\
	$(ACPICA_UTILITIES)/utaddress.c\
	$(ACPICA_UTILITIES)/utalloc.c\
	$(ACPICA_UTILITIES)/utascii.c\
	$(ACPICA_UTILITIES)/utbuffer.c\
	$(ACPICA_UTILITIES)/utcache.c\
	$(ACPICA_UTILITIES)/utcopy.c\
	$(ACPICA_UTILITIES)/utdebug.c\
	$(ACPICA_UTILITIES)/utdecode.c\
	$(ACPICA_UTILITIES)/utdelete.c\
	$(ACPICA_UTILITIES)/uterror.c\
	$(ACPICA_UTILITIES)/utexcep.c\
	$(ACPICA_UTILITIES)/utglobal.c\
	$(ACPICA_UTILITIES)/uthex.c\
	$(ACPICA_UTILITIES)/utinit.c\
	$(ACPICA_UTILITIES)/utlock.c\
	$(ACPICA_UTILITIES)/utmath.c\
	$(ACPICA_UTILITIES)/utmisc.c\
	$(ACPICA_UTILITIES)/utmutex.c\
	$(ACPICA_UTILITIES)/utnonansi.c\
	$(ACPICA_UTILITIES)/utobject.c\
	$(ACPICA_UTILITIES)/utownerid.c\
	$(ACPICA_UTILITIES)/utpredef.c\
	$(ACPICA_UTILITIES)/utresdecode.c\
	$(ACPICA_UTILITIES)/utresrc.c\
	$(ACPICA_UTILITIES)/utstate.c\
	$(ACPICA_UTILITIES)/utstrtoul64.c\
	$(ACPICA_UTILITIES)/utstrsuppt.c\
	$(ACPICA_UTILITIES)/utstring.c\
	$(ACPICA_UTILITIES)/utuuid.c\
	$(ACPICA_UTILITIES)/utxface.c\
	$(ACPICA_UTILITIES)/utxferror.c

intermediates := $(call local-generated-sources-dir)

lex_parser_sources := \
	aslcompiler \
	dtparser \
	prparser

LOCAL_GENERATED_SOURCES := $(addprefix $(intermediates)/, \
	$(addsuffix parser.c, $(lex_parser_sources)) \
	$(addsuffix lex.c, $(lex_parser_sources)))

#
# Flags specific to iASL compiler
#
LOCAL_CFLAGS += \
	-DACPI_ASL_COMPILER

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/$(ASL_COMPILER) \
	$(intermediates)

#
# Macro processing for iASL .y files
#
MACROPROC  := m4
MACROFLAGS := -P -I$(LOCAL_PATH)/$(ASL_COMPILER)

$(intermediates)/aslcompiler.y: $(LOCAL_PATH)/$(ASL_COMPILER)/aslparser.y
	@echo "$(MACROPROC): $(LOCAL_MODULE) <= $<"
	@$(MACROPROC) $(MACROFLAGS) $< > $@

#
# Parser and Lexer - intermediate C files
#
define acpica-transform-y-to-c
@echo "Yacc: $(PRIVATE_MODULE) <= $<"
@mkdir -p $(dir $@)
$(YACC) -y -d -p$(1) --defines=$(dir $@)/$(notdir $<).h -o $@ $<
endef

define acpica-transform-l-to-c
@echo "Lex: $(PRIVATE_MODULE) <= $<"
@mkdir -p $(dir $@)
$(hide) $(LEX) -i -s -P$(1) -o$@ $<
endef

$(intermediates)/aslcompilerparser.c: $(intermediates)/aslcompiler.y
	$(call acpica-transform-y-to-c,AslCompiler)
$(intermediates)/dtparserparser.c: $(LOCAL_PATH)/$(ASL_COMPILER)/dtparser.y
	$(call acpica-transform-y-to-c,DtParser)
$(intermediates)/prparserparser.c: $(LOCAL_PATH)/$(ASL_COMPILER)/prparser.y
	$(call acpica-transform-y-to-c,PrParser)

$(intermediates)/aslcompilerlex.c: $(LOCAL_PATH)/$(ASL_COMPILER)/aslcompiler.l
	$(call acpica-transform-l-to-c,AslCompiler)
$(intermediates)/dtparserlex.c: $(LOCAL_PATH)/$(ASL_COMPILER)/dtparser.l
	$(call acpica-transform-l-to-c,DtParser)
$(intermediates)/prparserlex.c: $(LOCAL_PATH)/$(ASL_COMPILER)/prparser.l
	$(call acpica-transform-l-to-c,PrParser)

#
# Common Rules
#
include $(ACPICA_BUILD)

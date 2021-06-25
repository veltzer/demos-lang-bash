##############
# PARAMETERS #
##############
# do you want to see the commands executed ?
DO_MKDBG:=0
# do you want to check bash syntax?
DO_CHECK_SYNTAX:=1

########
# CODE #
########
# silent stuff
ifeq ($(DO_MKDBG),1)
Q:=
# we are not silent in this branch
else # DO_MKDBG
Q:=@
#.SILENT:
endif # DO_MKDBG

ALL_DEP=Makefile

ALL:=
ALL_SH:=$(shell find src -name "*.bash")
ALL_STAMP:=$(addprefix out/, $(addsuffix .stamp, $(ALL_SH)))

ifeq ($(DO_CHECK_SYNTAX),1)
ALL+=$(ALL_STAMP)
endif # DO_CHECK_SYNTAX

#########
# RULES #
#########
.DEFAULT_GOAL=all
.PHONY: all
all: $(ALL)

tools.stamp: config/deps.py
	$(info doing [$@])
	@pymakehelper touch_mkdir $@

.PHONY: check
check:
	$(info doing [$@])
	@git grep "<<" src | grep -v "'COMMENT'" | grep -v "<<<" | grep -v multi_line_comment.bash || exit 0

.PHONY: debug
debug:
	$(info ALL_SH is $(ALL_SH))
	$(info ALL_STAMP is $(ALL_STAMP))

.PHONY: first_line_stats
first_line_stats:
	$(Q)head -1 -q $(ALL_SH) | sort | uniq -c

.PHONY: clean
clean:
	$(Q)rm -f $(ALL_STAMP)

.PHONY: clean_hard
clean_hard:
	$(Q)git clean -qffxd

############
# patterns #
############
$(ALL_STAMP): out/%.stamp: % .shellcheckrc $(ALL_DEP)
	$(info doing [$@])
	$(Q)mkdir -p $(dir $@)
	$(Q)shellcheck --severity=error --shell=bash --external-sources --source-path="$$HOME" $<
	$(Q)touch $@

#
# makefile
#

# $@ target filename 
# $% target member's name, if the rule's target is an archive
# $< first prerequisite filename
# $^ prerequisites filenames
# $? prerequisites files which have changes
# $* target filename without suffix

.PHONY: all clean

all: test.map

test.map: test1.c test2.c test3.c
	@echo $@
	@echo $%
	@echo $<
	@echo $^
	@echo $?
	@echo $*

clean:
	@echo CLEAN


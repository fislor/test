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

CC = gcc

# all c sources
SRCS = $(wildcard *.c)

# substitute *.c with *.o
OBJS = $(SRCS:%.c=%.o)

# file.c turns into file.c.o
OBJS_LONG = $(SRCS:%=%.o)

# string substitution (suffix version without %)
DEPS = $(OBJS:.o=.d)

# source file name, without suffix (just for example)
FILES = $(SRCS:.c=)

all: $(OBJS)
	@echo $(CC) $(OBJS) -o main
	@echo $(OBJS_LONG)
	@echo $(DEPS)
	@echo $(FILES)

%.o: %.c
	@echo $(CC) $^ -c $@
	@echo $(CC) -c -o $@ $<
	@echo "[cc]" $<
	@echo ""

clean:
	@echo CLEAN


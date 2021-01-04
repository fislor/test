#
# makefile
#


# $@ File name of the rule's target
# $% The target member's name, if the rule's target is an archive
# $< File name of the first prerequisite
# $^ List of all prerequisites
# $? List of all prerequisites that are newer than the target
# $* The "stem" of an implicit or pattern rule

# $@ - outputs the target
# $? - outputs all prerequisites older than the target
# $^ - outputs all prerequisites

CC = gcc

all: test

test: test1 test2 test3 test4 test5 test6 test7 test8

test1: test?.c
	echo "test1: " $?

test2: [t]*.c
	echo "test2: " $?

test3: *.c
	echo test3: $?

test4: $(wildcard *.c)
	echo test4: $?

test5: ~
	echo test5: $?

test6:
	@echo test6: $(CC) $@

test7: test1.c test2.c test3.c
	echo test7: $@

test8: test1.c test2.c test3.c
	echo test8: $^

test9: 
	

clean:
	@echo CLEAN


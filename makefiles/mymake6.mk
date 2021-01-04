#
# makefile
#


all: subsys1 subsys2 subsys3

subsys1:
	cd dir1 && $(MAKE)

subsys2:
	$(MAKE) -C dir2

subsys3:
	$(MAKE) -C dir3 MAKEFLAGS=i

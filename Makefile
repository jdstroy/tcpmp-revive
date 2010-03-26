# Makefile - tcpmp_vs2008.dsw

.PHONY: all
all: \
	aac \
	ac3

.PHONY: aac
aac:
	$(MAKE) -C aac -f aac.mak

.PHONY: ac3
ac3:
	$(MAKE) -C ac3 -f ac3.mak

.PHONY: clean
clean:
	$(MAKE) -C aac -f aac.mak clean
	$(MAKE) -C ac3 -f ac3.mak clean

.PHONY: depends
depends:
	$(MAKE) -C aac -f aac.mak depends
	$(MAKE) -C ac3 -f ac3.mak depends


SHELL	 = /bin/sh
CXX	 = g++
CXXFLAGS = -Wall -ansi
CC	 = g++
CCFLAGS  = -Wall -ansi
BINDIR   = /usr/local/bin 

all: esrtool

esrtool: Patcher.cpp esrtool.c

.PHONY: static
static:
	$(CXX) $(CXXFLAGS) -static esrtool.c Patcher.cpp -o esrtool-static

install:
	install esrtool $(BINDIR)/esrtool

uninstall:
	-rm $(BINDIR)/esrtool

clean:
	rm -f esrtool esrtool-static

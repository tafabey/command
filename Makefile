CXX = g++
CFLAGS = -Wall -Wextra -Werror
OBJS = command.o
TARGET = libcommand.so
PREFIX ?= /usr/local

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -shared $(OBJS) -o $(TARGET)

command.o: command.cpp command.cpp
	$(CXX) $(CFLAGS) -fPIC -c command.cpp -o command.o

install: $(TARGET)
	mkdir -p $(PREFIX)/lib
	mkdir -p $(PREFIX)/include
	install -m 755 $(TARGET) $(PREFIX)/lib/
	install -m 644 command.hpp $(PREFIX)/include/

uninstall:
	rm -f $(PREFIX)/lib/$(TARGET)
	rm -f $(PREFIX)/include/command.hpp

clean:
	rm -f $(TARGET) $(OBJS)

.PHONY: all clean install uninstall

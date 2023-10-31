CC = gcc
CFLAGS = -Wno-implicit-function-declaration

.PHONY: all clean

all: final

final: main.c io/file_reader.c io/file_reader.h
	echo "Compiling and linking to produce final application"
	$(CC) $(CFLAGS) main.c io/file_reader.c -o $@
	@echo "This is executed, but not shown"
	@chmod +x $@

clean:
	echo "Removing the final application"
	rm -f final
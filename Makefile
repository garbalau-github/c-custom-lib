CC = gcc
CFLAGS = -Wno-implicit-function-declaration

.PHONY: all clean

all: final

final: main.o file_reader.o
	echo "Linking and producing final application"
	$(CC) $(CFLAGS) $^ -o $@
	@echo "This is executed, but not shown"
	@chmod +x $@

main.o: main.c file_reader.h
	echo "Compiling $<"
	$(CC) $(CFLAGS) -c $< -o $@

file_reader.o: file_reader.c file_reader.h
	echo "Compiling $<"
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	echo "Removing everything but the source files"
	rm main.o file_reader.o final

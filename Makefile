# Compilation flags
CFLAGS = -Wno-implicit-function-declaration

# Keywords for compilation
all: final

final: main.o hello.o
	echo "Linking and producing final application"
	gcc $(CFLAGS) main.o hello.o -o final
	@echo "This is executed, but not shown"
	@chmod +x final

main.o: main.c
	echo "Compiling main.c file"
	gcc $(CFLAGS) -c main.c

hello.o: hello.c
	echo "Compiling hello.c file"
	gcc $(CFLAGS) -c hello.c

clean:
	echo "Removing everything but the source files"
	rm main.o hello.o final
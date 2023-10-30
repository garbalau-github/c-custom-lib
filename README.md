# why-c-make-file

If we make changes in current files we have to re-compile them each time and also do not forget to link them together

```
gcc -Wno-implicit-function-declaration -c main.c
gcc -Wno-implicit-function-declaration -c hello.c
gcc -Wno-implicit-function-declaration main.o hello.o -o final
./final
```

The idea of Makefile is that we can automate all of that by using certain commands

Remove compiled files
```
make clean
```

Compile all
```
make all
```
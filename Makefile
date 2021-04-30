hello: hello.o
	clang -arch arm64 -o hello hello.o

hello.o: hello.s
	clang -arch arm64 -o hello.o -c hello.S

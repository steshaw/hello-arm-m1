hello: hello.o
	ld -macosx_version_min 11.0.0 -o hello hello.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64

hello.o: hello.s
	as -arch arm64 -o hello.o hello.s

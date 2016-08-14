# a half ass crappy Makefile

all:
	echo "#define FOR_PC" > platform.h
	$(CC) mpgame.c -c `sdl-config --cflags`
	$(CC) start.c -c `sdl-config --cflags`
	$(CC) mpx2.c -c `sdl-config --cflags`
	$(CC) mxfont.c -c `sdl-config --cflags`
	$(CC) pixelbuffer.c -c `sdl-config --cflags`
	$(CC) pixelbuffer.o mxfont.o mpx2.o mpgame.o start.o `sdl-config --libs` -o mpx2
	echo "" > platform.h
clean:
	rm -f *.o mpx2

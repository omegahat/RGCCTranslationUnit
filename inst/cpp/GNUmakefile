CFLAGS=-I/home2/duncan/gcc-4.1.0/libcpp/include -I/home2/duncan/gcc-4.1.0/libcpp -I/home2/duncan/gcc-4.1.0/include
LDFLAGS=-L/home2/duncan/gcc-4.1.0/libcpp -lcpp -L/home2/duncan/gcc-4.1.0/libiberty  -lcpp -liberty

defs: cpp.c
	$(CC) -g -o $@ $^ $(CFLAGS) $(LDFLAGS)

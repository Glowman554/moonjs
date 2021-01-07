CFLAGS=-O1
DEPS = yaAGC.h agc_engine.h agc_symtab.h queue.h

SRC = $(shell find -name '*.c')
OBJS = $(addsuffix .o,$(basename $(SRC)))

all: agc.js

%.o: %.c
	emcc -c -o $@ $< $(CFLAGS)

core.bin:
	cp ../core.bin core.bin

agc.js: $(OBJS) core.bin
	emcc -o $@ $(OBJS) $(CFLAGS) -s EXPORTED_FUNCTIONS="['_main','_advance', '_sendPort', '_scanPort']" --preload-file core.bin

clean:
	rm $(OBJS) agc.data agc.js agc.wasm core.bin

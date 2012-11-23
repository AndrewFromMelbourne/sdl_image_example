CFLAGS=-g -O2 -Wall $(shell sdl-config --cflags)
LDFLAGS=-g -O2 -Wall $(shell sdl-config --libs) -lSDL_image

PROGRAMS=$(basename $(wildcard *.c))

all: $(PROGRAMS)

clean:
	rm -f $(PROGRAMS) *.o

new: clean all

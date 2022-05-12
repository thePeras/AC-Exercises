LIBOBJS = sum_v.o

ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif
LSTFLGS =

LDFLAGS = -lSystem -lc -e main -arch arm64

%.o: %.s
	as $() $(LSTFLGS) $< -o $@

sum_v:
	clang -o sum_v sum_v.c sum_v.s

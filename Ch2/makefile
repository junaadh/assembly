ifdef DEBUG
DEBUGFLGS = -g
else
DEBUGFLGS =
endif

LDFLAGS = -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start

%.o : %.s
	as $(DEBUGFLGS) $< -o $@

all: movexamps movexamps1

movexamps: movexamps.o
	ld -o movexamps $(LDFLAGS) movexamps.o

movexamps1: movexamps1.o
	ld -o movexamps1 $(LDFLAGS) movexamps1.o

movexamps2: movexamps2.o
	ld -o movexamps2 $(LDFLAGS) movexamps2.o

clean:
	rm *.o

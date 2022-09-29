CC = g++
CCFLAGS = -Wall

all: output

output: main.o game.o
	$(CC) $(CCFLAGS) main.o game.o -o output

main.o: play/main.cpp
	$(CC) $(CCFLAGS) -c play/main.cpp

game.o: game/game.cpp game/game.h
	$(CC) $(CCFLAGS) -c game/game.cpp

clean:
	del *.o output *.exe
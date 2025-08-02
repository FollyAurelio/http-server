CC = gcc
CCFLAGS = -g -Wall

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c=.o)
BIN = bin

all:dirs run

dirs:
	mkdir -p ./$(BIN)

program:$(OBJ)
	$(CC) -o $(BIN)/program $^ $(CCFLAGS)

%.o:%.c
	$(CC) -o $@ -c $< $(CCFLAGS)

run:program
	$(BIN)/program

clean:
	rm -rf $(BIN) $(OBJ)


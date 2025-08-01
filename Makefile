CC = gcc
CCFLAGS = -g -Wall

SRC = $(wildcard src/*.c)
OBJ = $(SRC:.c = .o)
BIN = bin

all:run

dirs:
	mkdir -p ./$(BIN)

program:$(OBJ)
	$(CC) -o $(BIN)/program $^

%.o:%.c %.h
	$(CC) -o $@ -c $< $(CCFLAGS)

run:program
	$(BIN)/program

clean:
	rm -rf $(BIN) $(OBJ)


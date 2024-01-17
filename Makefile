CC = cc 
CFLAGS = -Wall -Wextra -pedantic -Wpedantic
LIBS = -lcurses -lm
SRC = src/
OUT = build/

cano: $(SRC)main.c
	@mkdir -p $(OUT) 
	$(CC) $^ $(LIBS) -o $(OUT)cano $(CFLAGS)

debug: $(SRC)main.c
	@mkdir -p $(OUT) 
	$(CC) $^ $(LIBS) -o $(OUT)debug $(CFLAGS) -ggdb2 

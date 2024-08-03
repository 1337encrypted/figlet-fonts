# -*- MakeFile -*-

CC = gcc
SRC = src/
INC = include/

all: figlet

figlet: figlet.o crc.o inflate.o utf8.o zipio.o
	$(CC) figlet.o crc.o inflate.o utf8.o zipio.o -o figlet; tree

crc.o: $(SRC)crc.c $(INC)crc.h
	$(CC) -c $(SRC)crc.c

inflate.o: $(SRC)inflate.c $(INC)inflate.h
	$(CC) -c $(SRC)inflate.c

utf8.o: $(SRC)utf8.c $(INC)utf8.h
	$(CC) -c $(SRC)utf8.c

zipio.o: $(SRC)zipio.c $(INC)inflate.h $(INC)crc.h $(INC)zipio.h
	$(CC) -c $(SRC)zipio.c

figlet.o: $(SRC)figlet.c $(INC)utf8.h $(INC)zipio.h
	$(CC) -c $(SRC)figlet.c

clean: *.o
	rm *.o figlet; tree

# Makefile for ZIGGURAT
# Run
# % make
# to run the test

default: test

ziggurat.o: ziggurat.c ziggurat.h
	$(CC) -c ziggurat.c -o ziggurat.o

ziggurat_prb: ziggurat.o ziggurat_prb.c
	$(CC) ziggurat.o ziggurat_prb.c -o ziggurat_prb -lm

test: ziggurat_prb
	./ziggurat_prb



#LINUX
COMMON=-O2 -I$(HOME)/dev/mujoco-2.3.5/include -L$(HOME)/dev/mujoco-2.3.5/lib -pthread -Wl,-no-as-needed -Wl,-rpath,'$$ORIGIN'$(HOME)/dev/mujoco-2.3.5/lib
LIBS = -lmujoco -lglfw
CC = gcc

ROOT = main

all:
	$(CC) $(COMMON) main.c $(LIBS) -o $(ROOT)

main.o:
	$(CC) $(COMMON) -c main.c

clean:
	rm *.o $(ROOT)

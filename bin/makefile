CC=gcc
INC_DIR_PATH =-I../include
SHARED = libwd.so
CFILES = ../src/watch_dog.c ../src/ssemaphore.c ../src/scheduler.c ../src/uid.c ../src/pqueue.c ../src/task.c ../src/sorted_list.c ../src/dlist.c
OFILES = watch_dog.o ssemaphore.o scheduler.o uid.o pqueue.o task.o sorted_list.o dlist.o

.PHONY: fpic
fpic:
	$(CC) -c -Wall -Werror -fpic $(CFILES) $(INC_DIR_PATH)
	$(CC) -shared -o $(SHARED) $(OFILES)

.PHONY: clean
clean:
	rm *.o
	rm *.so
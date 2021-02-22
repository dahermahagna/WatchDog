CC=gcc
INC_DIR_PATH =-I./include
CFLAGS=-ansi -pedantic-errors -Wall -Wextra -g $(INC_DIR_PATH)
DEPS = watch_dog.h include/scheduler.h
TARGET = watch_dog.out
ARCHIVE = lib.ar
OBJ = test/watch_dog_test.o src/watch_dog.o src/ssemaphore.o src/scheduler.o src/uid.o src/pqueue.o src/task.o src/sorted_list.o src/dlist.o
AR=ar

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

$(TARGET): $(OBJ)
	$(CC) -o $@ $^ -lpthread

.PHONY: clean
clean:
	rm *.out
	rm src/*.o

.PHONY: wd
wd:
	make -C wd_app


.PHONY: run
run:
	./$(TARGET)

.PHONY: vlg
vlg:
	valgrind --leak-check=yes --track-origins=yes ./$(TARGET)
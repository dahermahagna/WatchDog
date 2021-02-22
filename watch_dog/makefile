CC=gcc
CFLAGS=-ansi -pedantic-errors -Wall -Wextra -g
INC_DIR_PATH = -I/include
DEPS = watch_dog.h include/scheduler.h
TARGET = watch_dog.out
ARCHIVE = lib.ar
OBJ = watch_dog_test.o include/watch_dog.o include/ssemaphore.o include/scheduler.o include/uid.o include/pqueue.o include/task.o include/sorted_list.o include/dlist.o
AR=ar

%%.o: %%.c $(DEPS)

	$(CC) -c -o $@ $< $(CFLAGS) $(INC_DIR_PATH)

$(TARGET): $(OBJ)
	$(CC)  -o $@ $^ -lpthread

	ar r $(ARCHIVE) $(OBJ)
	rm *.o
	rm include/*.o

.PHONY: clean
clean:
	rm *.out
	rm *.ar

.PHONY: wd
wd:
	make -C include/wd_app


.PHONY: run
run:
	./$(TARGET)

.PHONY: vlg
vlg:
	valgrind --leak-check=yes --track-origins=yes ./$(TARGET)
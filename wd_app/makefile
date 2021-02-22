CC=gcc
INC_DIR_PATH = -I../include
CFLAGS=-ansi -pedantic-errors -Wall -Wextra -g $(INC_DIR_PATH)
DEPS = watch_dog.h
TARGET = ../watch_dog_app.out
ARCHIVE = lib.ar
OBJ =  watch_dog_app.o ../src/ssemaphore.o ../src/scheduler.o ../src/uid.o ../src/pqueue.o ../src/task.o ../src/sorted_list.o ../src/dlist.o
AR=ar

%%.o: %%.c $(DEPS)

	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJ)
	$(CC)  -o $@ $^ -lpthread
	#ar r $(ARCHIVE) $(OBJ)


.PHONY: clean
clean:
	rm *.out
	rm *.ar

.PHONY: run
run:
	./$(TARGET)

.PHONY: vlg
vlg:
	valgrind --leak-check=yes --track-origins=yes ./$(TARGET)
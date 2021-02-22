CC=gcc
CFLAGS=-ansi -pedantic-errors -Wall -Wextra -g -I.
DEPS = watch_dog.h ../scheduler.h
TARGET = ../../watch_dog_app.out
ARCHIVE = lib.ar
OBJ =  watch_dog_app.o ../ssemaphore.o ../scheduler.o ../uid.o ../pqueue.o ../task.o ../sorted_list.o ../dlist.o
AR=ar

%%.o: %%.c $(DEPS)

	$(CC) -c -o $@ $< $(CFLAGS)

$(TARGET): $(OBJ)
	$(CC)  -o $@ $^ -lpthread

	ar r $(ARCHIVE) $(OBJ)
	rm *.o
	rm ../*.o

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
CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=basicMath.o power.o
FLAGS=-Wall -g

all: mymaths mymathd mains maind 	
mains: $(OBJECTS_MAIN) libmyMath.a
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
mymathd: basicMath.o power.o 
	 $(CC) -shared -o libmyMath.so basicMath.o power.o
mymaths: $(OBJECTS_LIB)
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB)	
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 
basicMath.o: basicMath.c myMath.h  
	$(CC) $(FLAGS) -c basicMath.c 
power.o: power.c myMath.h  
	$(CC) $(FLAGS) -fPIC -c power.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind

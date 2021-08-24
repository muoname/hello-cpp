all: hello
	
greetings.o: greetings.h greetings.cpp
	g++ -c greetings.cpp 
	
main.o: main.cpp
	g++ -c main.cpp

hello: greetings.o main.o 
	g++ -o hello greetings.o main.o 

test: 
	./hello > test.out
clean:
	rm -rf hello *.o
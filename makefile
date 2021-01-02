all : speed
CXX : g++

speed:
	${CXX} -o speed -std=c++11 -I./include ./src/main.cpp ./src/socket.cpp -I./include -std=c++11

clean:
	-rm speed *.o

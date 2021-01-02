all : speed
CXX = g++
CXXFLAGS += -std=c++11
CXXFLAGS += -DVERBOSE
speed:
	${CXX} -o speed -I./include ./src/main.cpp ./src/socket.cpp -I./include ${CXXFLAGS} 

clean:
	-rm speed

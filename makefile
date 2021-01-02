all : speed
CXX = g++
OBJS := $(notdir $(patsubst %.cpp, %.o, $(wildcard *.cpp ./src/*))) 
CXXFLAGS += -std=c++11
CXXFLAGS += -DVERBOSE
CXXFLAGS += -I./include
vpath %.cpp ./src

speed : ${OBJS}
	@echo "build $@"
	${CXX} -o $@ $^

.PHONY : clean
clean:
	@echo "clean speed ${OBJS}"
	-rm speed ${OBJS}

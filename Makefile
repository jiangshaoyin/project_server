INC_DIR:= ./include/
SRCS:=$(wildcard ./src/*.cc) 
OBJS:= $(patsubst %.cc, %.o, $(SRCS))
LIBS:= -lpthread
CXX:=g++

CXXFLAGS:= -w -g -std=c++11 $(addprefix -I, $(INC_DIR)) $(LIBS)
EXE:=./server.exe

$(EXE):$(OBJS)
	$(CXX) -o $(EXE) $(OBJS) $(CXXFLAGS)

clean:
	rm -rf $(OBJS)
	rm -rf $(EXE)


.SUFFIXES:
.SUFFIXES:  .o .C

SRCS :=$(wildcard *.C)
OBJS_SRC=$(SRCS:.C=.o)
OBJS := $(notdir $(OBJS_SRC))

CXX=icpc
LDFLAGS=-qopenmp
CXXFLAGS=-qopenmp

BIN=evc

$(BIN): $(OBJS)
	$(CXX) $(OBJS) $(LDFLAGS) -o $(BIN)

.C.o:
	$(CXX) -o $@ $(CXXFLAGS) -c $<

clean:
	rm -f *.o  $(BIN)

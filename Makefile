TARGET=	dbdbd
OBJS=	dbdbd.o

SHELL=	/bin/sh
CXX=	c++
CXXFLAGS=\
	-O2 -std=c++17
RM=	rm -f

.PNONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS)

clean:
	$(RM) $(TARGET) $(OBJS)

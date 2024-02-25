TARGET=	dbdbd
OBJS=	dbdbd.o

SHELL=	/bin/sh
CXX=	c++
CXXFLAGS=\
	-O2 -std=c++17
RM=	rm -f

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS)

.PNONY: clean
clean:
	$(RM) $(TARGET) $(OBJS)

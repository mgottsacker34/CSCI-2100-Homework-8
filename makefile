CROSS=

CC=g++
CFLAGS=-g -Wall $(CROSS)
LFLAGS=$(CROSS)
OBJS=TestBST.o

all:  TestBST

# rule for building the executable
TestBST: $(OBJS)
	$(CC) -o TestBST $(LFLAGS) $(OBJS)

# redundant rules for other common "make ____" commands
# that might be typed by a student
BST: TestBST

# list of file dependencies
TestBST.o: TestBST.cpp BinarySearchTree.h

# the following rule is used to compile .cpp files to .o
.cpp.o:
	$(CC) $(CFLAGS) -c $<


# the following removes all .o files, but leaves the executable
clean:
	rm -f *.o

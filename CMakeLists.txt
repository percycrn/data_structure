cmake_minimum_required(VERSION 3.8)
project(c)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES exp1/SequenceList.c.bak exp1/LinkedList.c.bak exp2/StackArray.c.bak exp2/LinkQueue.c.bak exp2/StackLink.c.bak exp1/homework.c.bak exp3/BinaryTree.c exp2/RoundRobinQueue.c.bak exp4/AdjacencyMatrix.c.bak zzl/ZZLLinkedList.c.bak zzl/LinkedStack.c.bak zzl/LinkedQueue.c.bak exp5/Search.c.bak exp6/Sort.c.bak msx/DeleteNumber.c.bak exp4/AdjacencyTable.c.bak exp5/BinarySearch.c.bak)
add_executable(c ${SOURCE_FILES})
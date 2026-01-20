CXX = g++
TARGET = testcommand
$(TARGET): testcommand.cpp
	$(CXX) testcommand.cpp -o $(TARGET)
run:
	./$(TARGET)

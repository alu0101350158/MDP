CXX = g++
CXXFLAGS = -std=c++17 -g -Wall
DEPS = file-loader.h point.h problem.h greedy.h solution.h
OBJ = main.o file-loader.o point.o problem.o greedy.o solution.o


%.o: %.cc $(DEPS)
	$(CXX) -c -o $@ $< $(CXXFLAGS)

main: $(OBJ)
	$(CXX) -o $@ $^ $(CXXFLAGS)

.PHONY: clean
clean:
	rm main *.o
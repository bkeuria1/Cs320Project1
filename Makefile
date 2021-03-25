predictor: main.o predictor.o
	g++ -o predictor main.o predictor.o
main.o: main.cpp predictor.h
	g++ -c main.cpp
predictor.o: predictor.cpp predictor.h
	g++ -c predictor.cpp
clean:
	rm predictor main.o predictor.o

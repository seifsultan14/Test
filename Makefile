main.exe: main_obj.o
	g++ main_obj.o -o main.exe
 
main_pp.cpp: main.cpp
	g++ -E main.cpp -o main_pp.cpp
main_asm.s: main_pp.cpp
	g++ -S main_pp.cpp -o main_asm.s
main_obj.o: main_asm.s
	g++ -c main_asm.s -o main_obj.o

clean:
	rm main_pp.cpp main_asm.s main_obj.o main.exe 

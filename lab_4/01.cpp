#include <iostream>
#include <new>
using namespace std;
void statyczna() {

	cout << "statyczna" ;
	double T[1000000];
	for (int i = 0; i < 1000000; i++) {
		T[i] = 2.0;
	}
	cin.get();
}

void dynamiczna() {

	cout << "dynamiczna" ;
	double *T = new double[1000000];
	for (int i = 0; i < 1000000; i++) {
		T[i] = 3.0;
	}
	cin.get();
	delete[] T;
}


int main() {
	cin.get();
	statyczna();	
	cout << "koniec" ;
	
	cin.get();
	dynamiczna();
	cout << "koniec" ;

	cin.get();
}

#include <stdio.h>
#include <ctime>
#include <iostream>
#include <unistd.h>


using namespace std;

int main() {
    printf("Hello, I'am another program\n");
    cout << getpid() << "\n";
    getchar();
    return 0;
}
#include <stdio.h>
#include <ctime>
#include <unistd.h>
#include <iostream>

using namespace std;

int main() {
    printf("Hello, I'am fake another program\n");
    cout << getpid() << "\n";
    getchar();
    execvp("another",NULL);    
    return 0;
}

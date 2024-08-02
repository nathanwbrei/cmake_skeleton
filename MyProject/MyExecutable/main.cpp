#include <iostream>
#include <mylibrary.h>

int main() {
    std::cout << "Hello from executable! Calling into library:" << std::endl;
    say_hello_from_library();
}

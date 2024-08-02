#include <iostream>
#include <mylibrary.hpp>

int main() {
    std::cout << "Hello from executable! Calling into library:" << std::endl;
    say_hello_from_library();
}

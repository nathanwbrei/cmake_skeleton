
#include <mylibrary.hpp>
#include <iostream>

extern "C" 
void say_hello() {
    std::cout << "Hello from plugin c!" << std::endl;
    say_hello_from_library();
}


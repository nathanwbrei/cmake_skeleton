#include "plugina.hpp"
#include <iostream>

void say_hello_from_plugina() {
    std::cout << "Hello from plugin a" << std::endl;
}

void say_hello() {
    say_hello_from_plugina();
}

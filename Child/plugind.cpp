
#include "plugind.hpp"

#include <mylibrary.hpp>
#include <pluginb.hpp>
#include <plugina.hpp> // Found transitively!

#include <iostream>

extern "C" 
void say_hello() {
    say_hello_from_plugind();
}

void say_hello_from_plugind() {
    std::cout << "Hello from plugin d. Calling plugin a..." << std::endl;
    say_hello_from_plugina();

    std::cout << "Hello from plugin d. Calling plugin b..." << std::endl;
    say_hello_from_pluginb();
}


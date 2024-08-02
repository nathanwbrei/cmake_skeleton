
#include <mylibrary.hpp>
#include <pluginb.hpp>
#include <plugina.hpp> // Found transitively!

#include <iostream>

extern "C" 
void say_hello() {
    std::cout << "Hello from user plugin. Calling plugin a..." << std::endl;
    say_hello_from_plugina();

    std::cout << "Hello from user plugin. Calling plugin b..." << std::endl;
    say_hello_from_pluginb();
}



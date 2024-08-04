
#include "plugina.hpp"
#include "pluginb.hpp"
#include <iostream>

void say_hello_from_pluginb() {
    std::cout << "Hello from plugin b. Calling into plugin a..." << std::endl;
    say_hello_from_plugina();
}

void say_hello() {
    say_hello_from_pluginb();
}

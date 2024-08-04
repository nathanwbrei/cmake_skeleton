#include "plugind.hpp"
#include <mylibrary.hpp>
#include <iostream>
#include <test_framework.hpp>

int main() {
    std::cout << "Testing PluginD!!!" << std::endl;
    say_hello_from_plugind();
    say_hello_from_library();
    say_hello_from_testfw();
}


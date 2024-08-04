#include "userplugin.hpp"
#include <mylibrary.hpp>
#include <iostream>
#include <test_framework.hpp>

int main() {
    std::cout << "Testing UserPlugin!!!" << std::endl;
    say_hello_from_userplugin();
    say_hello_from_library();
    say_hello_from_testfw();
}


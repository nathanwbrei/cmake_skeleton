#include <plugina.hpp>
#include <mylibrary.hpp>
#include <iostream>
#include <test_framework.hpp>

int main() {
    std::cout << "Testing plugin A!!!" << std::endl;
    say_hello_from_plugina();
    say_hello_from_library();
    say_hello_from_testfw();
}


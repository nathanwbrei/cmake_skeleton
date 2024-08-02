
#include <mylibrary.h>
#include <iostream>

extern "C" void init() {
    // Plugin initialization code
    std::cout << "Hello from user plugin" << std::endl;
}

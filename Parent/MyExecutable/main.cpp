#include <mylibrary.hpp>

#include <iostream>
#include <dlfcn.h>
#include <string>

void load_plugin_and_execute(const std::string& path_to_so) {

    // Load the shared library
    void* handle = dlopen(path_to_so.c_str(), RTLD_LAZY);
    if (!handle) {
        std::cerr << "Failed to load library: " << dlerror() << std::endl;
        return;
    }

    // Clear any existing errors
    dlerror();

    // Load the function
    typedef void (*FunctionType)(void); // Define the function type
    FunctionType func = (FunctionType) dlsym(handle, "say_hello");
    const char* dlsymError = dlerror();
    if (dlsymError) {
        std::cerr << "Failed to load function: " << dlsymError << std::endl;
        dlclose(handle);
        return;
    }

    // Call the function
    func();
    dlclose(handle);

}

int main(int argc, char** argv) {
    std::cout << "Hello from executable! Calling into library:" << std::endl;
    say_hello_from_library();

    for (size_t i=1; i<argc; ++i) {
        std::string plugin = argv[i];
        std::cout << "Hello from executable! Calling into plugin '" << plugin << "':"<< std::endl;
        load_plugin_and_execute(plugin);
    }

}

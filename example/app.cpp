#pragma once 

#include <iostream>
#include "stellarlibs/classical/math/test.hpp"

int main() {
    Math math;

    std::cout << "Welcome to StellarLibs" << std::endl;
    std::cout << math.add(101, 34);

    return 1;
}
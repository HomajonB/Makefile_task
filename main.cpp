#include <iostream>
#include "utilities.h"

int main(int argc, char *argv[])
{

    std::cout << "Your advertisment could be here..."
              << std::endl;

    std::cout << "sum_of_ints(5,5) = "
              << sum_of_ints(5, 5) << std::endl;

    std::cout << "sum_of_floats(3.14, 3.14) = "
              << sum_of_floats(3.14, 3.14) << std::endl;

    return 0;
}
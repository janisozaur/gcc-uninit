#!/bin/bash
set -e
c++ -Og -std=gnu++17  -o temp.o -c temp.cpp -Werror=maybe-uninitialized -Werror
c++ -O2 -std=gnu++17  -o temp.o -c temp.cpp -Werror=maybe-uninitialized 2>&1 | egrep "offsetof.*std::optional.*std::optional.*Werror=maybe-uninitialized"

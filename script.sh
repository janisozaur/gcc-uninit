#!/bin/bash
set -e
DEFAULTVALUE="temp.cpp"
FILE="${1:-$DEFAULTVALUE}"
c++ -Og -std=gnu++17  -o temp.o -c $FILE -Werror=maybe-uninitialized -Werror
c++ -O2 -std=gnu++17  -o temp.o -c $FILE -Werror=maybe-uninitialized 2>&1 | egrep "offsetof.*std::optional.*std::optional.*Werror=maybe-uninitialized"

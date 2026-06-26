g++ -std=c++17 -Wall -Wextra -Wshadow -Wconversion -Wfloat-equal -Wduplicated-cond -Wlogical-op -o $(pwd)/bin/$1 $1.cpp -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG -g

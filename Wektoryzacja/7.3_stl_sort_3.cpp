#include <algorithm>
#include <iostream>
#include <vector>
#include <cmath>
#include <array>

int main()
{
    std::array<int, 10> s = { 5, 7, 4, 2, 8, 6, 1, 9, 0, 3 };
     struct {
        bool operator()(int a, int b) const
        {
            return a < b;
        }
    } customLess;
    std::sort(s.begin(), s.end(), customLess);
    for (auto a : s) {
        std::cout << a << " ";
    }
    std::cout << '\n';

}
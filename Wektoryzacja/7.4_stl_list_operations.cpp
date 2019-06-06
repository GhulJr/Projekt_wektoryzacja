#include <algorithm>
#include <iostream>
#include <list>
 
int main()
{
        // Tworzy listę zawierającą liczby całkowite
        std::list<int> l = { 7, 5, 16, 8 };
 
        // Dodaje element na początku listy
        l.push_front(25);
        // Dodaje element na końcu listy
        l.push_back(13);
 
        // Wstawia element przed 16-ką, poprzez wyszukanie jej
        auto it = std::find(l.begin(), l.end(), 16);
        if (it != l.end()) {
            l.insert(it, 42);
    }
 
        // Iteruje po wartościach w liście i wypisuje je
        for (int n : l) {
            std::cout << n << '\n';
        }
}

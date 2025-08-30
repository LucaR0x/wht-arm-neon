#include <iostream>
#include <vector>

// Implementazione FWHT iterativa
void fwht(std::vector<float>& data) {
    int n = data.size();
    for (int len = 1; len < n; len *= 2) {
        for (int i = 0; i < n; i += 2 * len) {
            for (int j = 0; j < len; ++j) {
                float u = data[i + j];
                float v = data[i + j + len];
                data[i + j]       = u + v;
                data[i + j + len] = u - v;
            }
        }
    }
}

int main() {
    std::vector<float> data = {1, 2, 3, 4, 5, 6, 7, 8};
    std::cout << "Input: ";
    for (auto x : data) std::cout << x << " ";
    std::cout << "\n";

    fwht(data);

    std::cout << "Output FWHT: ";
    for (auto x : data) std::cout << x << " ";
    std::cout << "\n";

    return 0;
}
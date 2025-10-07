#include <iostream>
#include <vector>
#include "wht_naive.hpp"

// Implementazione FWHT iterativa
void wht_naive(std::vector<float>& data) {
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
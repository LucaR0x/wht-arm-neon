#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <fstream>
#include <cmath>
#include "fwht.h"
// Dichiara le funzioni FWHT che hai implementato
void fwht_naive(std::vector<float>& data);
void fwht_neon(std::vector<float>& data);

int main() {
    std::ofstream out("benchmark_results.csv");
    out << "N,Naive(us),NEON(us)" << std::endl;

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dist(-1.0f, 1.0f);

    int reps = 100; // ripetizioni per media

    for (int exp = 4; exp <= 16; exp++) { // da N=16 a N=65536
        int N = 1 << exp;

        // Genera input casuale
        std::vector<float> base(N);
        for (auto &x : base) x = dist(gen);

        // ---- Test Naive ----
        double total_naive = 0;
        for (int r = 0; r < reps; r++) {
            std::vector<float> data = base; // copia input
            auto start = std::chrono::high_resolution_clock::now();
            fwht_naive(data);
            auto end = std::chrono::high_resolution_clock::now();
            total_naive += std::chrono::duration<double, std::micro>(end - start).count();
        }
        double avg_naive = total_naive / reps;

        // ---- Test NEON ----
        double total_neon = 0;
        for (int r = 0; r < reps; r++) {
            std::vector<float> data = base; // copia input
            auto start = std::chrono::high_resolution_clock::now();
            fwht_neon(data);
            auto end = std::chrono::high_resolution_clock::now();
            total_neon += std::chrono::duration<double, std::micro>(end - start).count();
        }
        double avg_neon = total_neon / reps;

        // Scrivi su file
        out << N << "," << avg_naive << "," << avg_neon << std::endl;

        // Stampa su console
        std::cout << "N=" << N
                  << " | Naive=" << avg_naive << " us"
                  << " | NEON=" << avg_neon << " us" << std::endl;
    }

    out.close();
    std::cout << "Risultati salvati in benchmark_results.csv\n";
    return 0;
}
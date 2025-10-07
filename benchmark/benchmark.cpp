#include <filesystem>
#include <iomanip>
#include <ctime>
#include <sstream>
#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <fstream>
#include <cmath>
#include "wht_naive.hpp"
#include "wht_neon.hpp"

// Dichiarazioni delle due implementazioni
void wht_naive(std::vector<float>& data);
void wht_neon(std::vector<float>& data);



void print_vector(const std::vector<float>& data) {
    std::cout << "[";
    for (size_t i = 0; i < data.size(); ++i) {
        std::cout << std::fixed << std::setprecision(3) << data[i];
        if (i != data.size() - 1)
            std::cout << ", ";
    }
    std::cout << "]\n";
}

int main() {

    // Set file per salvataggio risultati benchmark
    auto now = std::chrono::system_clock::now();
    auto now_time_t = std::chrono::system_clock::to_time_t(now);
    std::tm tm_now;
    #if defined(_WIN32) || defined(_WIN64)
        localtime_s(&tm_now, &now_time_t);
    #else
        localtime_r(&now_time_t, &tm_now);
    #endif
    std::ostringstream oss;
    oss << "benchmark/results/results_"
        << std::put_time(&tm_now, "%Y-%m-%d_%H%M") << ".csv";
    std::string filename = oss.str();

    std::ofstream out(filename);
    out << "N,Tempo Naive(us),Tempo Neon(us),Prova" << std::endl;
    std::cout << "Risultati benchmark salvati su: " << filename << std::endl;

    // generatore random per creazione vettore test

    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dist(-1.0f, 1.0f);

    int reps = 100;   // ripetizioni per la media
    int trials = 10;  // numero di prove per ogni N

    for (int exp = 2; exp <= 20 ; exp++) {
        int N = 1 << exp; // potenze di 2

        for (int t = 0; t < trials; t++) {
            // input base
            std::vector<float> base(N);
            for (auto &x : base) x = dist(gen);
            /*std::cout << "vettore di partenza\n";
            print_vector(base);*/


            // ---- Test Naive ----
            double total_naive = 0;
            for (int r = 0; r < reps; r++) {
                std::vector<float> data = base; // copia input
                auto start = std::chrono::high_resolution_clock::now();
                wht_naive(data);
                auto end = std::chrono::high_resolution_clock::now();
                /*std::cout << "vettore trasformato naive\n";
                print_vector(data);*/
                total_naive += std::chrono::duration<double, std::micro>(end - start).count();
            }
            
            double avg_naive = total_naive / reps;

            // ---- Test NEON ----
            double total_neon = 0;
            for (int r = 0; r < reps; r++) {
                std::vector<float> data = base; // copia input
                auto start = std::chrono::high_resolution_clock::now();
                wht_neon(data);
                auto end = std::chrono::high_resolution_clock::now();
                /*std::cout << "vettore trsformato neon\n";
                print_vector(data);*/
                total_neon += std::chrono::duration<double, std::micro>(end - start).count();
            }
            double avg_neon = total_neon / reps;

            // scrive nel CSV
            out << N << "," << avg_naive << "," << avg_neon << "," << (t+1) << std::endl;

            // stampa console
            std::cout << "N=" << N
                      << " | Prova " << (t+1)
                      << " | Naive=" << avg_naive << " us"
                      << " | NEON=" << avg_neon << " us" << std::endl;
        }
    }

    out.close();
    return 0;
}

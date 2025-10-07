#include <iostream>
#include <vector>
#include <random>
#include <chrono>
#include <fstream>
#include <cmath>

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
    std::ofstream out("benchmark_results.csv");
    out << "N,Tempo Naive(us),Tempo Neon(us),Prova" << std::endl;

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

            // Scrivi nel CSV
            out << N << "," << avg_naive << "," << avg_neon << "," << (t+1) << std::endl;

            // Stampa console (opzionale, per monitoraggio)
            std::cout << "N=" << N
                      << " | Prova " << (t+1)
                      << " | Naive=" << avg_naive << " us"
                      << " | NEON=" << avg_neon << " us" << std::endl;
        }
    }

    out.close();
    return 0;
}

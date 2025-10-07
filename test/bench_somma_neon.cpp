#include <arm_neon.h>
#include <chrono>
#include <iostream>
#include <random>
#include <vector>

using Clock = std::chrono::high_resolution_clock;

// Somma scalare: out[i] = a[i] + b[i]
void add_scalar(const float* a, const float* b, float* out, int n) {
    for (int i = 0; i < n; ++i) out[i] = a[i] + b[i];
}

// Somma NEON: 4 float per volta
void add_neon(const float* a, const float* b, float* out, int n) {
    int i = 0;
    for (; i <= n - 4; i += 4) {
        float32x4_t va = vld1q_f32(a + i);
        float32x4_t vb = vld1q_f32(b + i);
        float32x4_t vc = vaddq_f32(va, vb);
        vst1q_f32(out + i, vc);
    }
    for (; i < n; ++i) out[i] = a[i] + b[i]; // coda
}

// Checksum per evitare eliminazione del lavoro da parte del compilatore
float checksum(const float* x, int n) {
    volatile float acc = 0.f;
    for (int i = 0; i < n; ++i) acc += x[i] * 1.0000001f;
    return acc;
}

int main(int argc, char** argv) {
    int N = 1 << 24;   
    int REPS = 20;
    if (argc >= 2) N = std::atoi(argv[1]);
    if (argc >= 3) REPS = std::atoi(argv[2]);

    std::vector<float> A(N), B(N), Out(N);

    // inizializza con valori pseudo-casuali
    std::mt19937 rng(123);
    std::uniform_real_distribution<float> dist(-1.f, 1.f);
    for (int i = 0; i < N; ++i) {
        A[i] = dist(rng);
        B[i] = dist(rng);
    }

    // warmup
    add_scalar(A.data(), B.data(), Out.data(), N);
    add_neon(A.data(), B.data(), Out.data(), N);

    // --- benchmark scalar ---
    auto t0 = Clock::now();
    float cs_scalar = 0.f;
    for (int r = 0; r < REPS; ++r) {
        add_scalar(A.data(), B.data(), Out.data(), N);
        cs_scalar += checksum(Out.data(), N);
    }
    auto t1 = Clock::now();
    double tempo_scalar_ms = std::chrono::duration<double, std::milli>(t1 - t0).count();

    // --- benchmark neon ---
    t0 = Clock::now();
    float cs_neon = 0.f;
    for (int r = 0; r < REPS; ++r) {
        add_neon(A.data(), B.data(), Out.data(), N);
        cs_neon += checksum(Out.data(), N);
    }
    t1 = Clock::now();
    double tempo_neon_ms = std::chrono::duration<double, std::milli>(t1 - t0).count();

    std::cout << "N=" << N << "  REPS=" << REPS << "\n";
    std::cout << "Tempo scalare: " << tempo_scalar_ms << " ms\n";
    std::cout << "Tempo NEON: " << tempo_neon_ms  << " ms\n";
    if (tempo_neon_ms > 0) std::cout << "Speedup: " << (tempo_scalar_ms / tempo_neon_ms) << "x\n";
    std::cout << "Checksum scalare: " << cs_scalar << "\n";
    std::cout << "Checksum  neon : " << cs_neon   << "\n";
    return 0;
}
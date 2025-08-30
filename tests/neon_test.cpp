#include <iostream>
#include <arm_neon.h>

int main() {
    float a[4] = {1.0, 2.0, 3.0, 4.0};
    float b[4] = {5.0, 6.0, 7.0, 8.0};
    float result[4];

    // Carica i valori nei registri NEON
    float32x4_t va = vld1q_f32(a);
    float32x4_t vb = vld1q_f32(b);

    // Somma dei valori in parallelo
    float32x4_t vc = vaddq_f32(va, vb);

    // Salvataggio del risultato
    vst1q_f32(result, vc);

    std::cout << "Risultato somma NEON: ";
    for (int i = 0; i < 4; i++) {
        std::cout << result[i] << " ";
    }
    std::cout << "\n";

    return 0;
}
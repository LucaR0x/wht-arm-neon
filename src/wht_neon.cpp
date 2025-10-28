#include <iostream>
#include <vector>
#include <arm_neon.h>
#include <random>
#include "wht_neon.hpp"


// Implementazione FWHT iterativa con istruzioni NEON
void wht_neon(std::vector<float>& data) {
    int n = data.size();
    for (int len = 1; len < n; len *= 2) {
        for (int i = 0; i < n; i += 2 * len) {
            int j = 0;
            for (; j + 4 <= len; j += 4) {

                // Load dei 4 valori a 32 bit consecutivi nei due registri (u e v) a 128 bit
                float32x4_t u = vld1q_f32(&data[i + j]);
                float32x4_t v = vld1q_f32(&data[i + j + len]);

                // Somma e sottrazione (elemento per elemento) dei valori nei registri
                float32x4_t sum  = vaddq_f32(u, v);
                float32x4_t diff = vsubq_f32(u, v);

                // Salvataggio dei registri in memoria
                vst1q_f32(&data[i + j], sum);
                vst1q_f32(&data[i + j + len], diff);
            }

            // Scalare per vettori di dimensione inferiore a 4
            for (; j < len; ++j) {
                float u = data[i + j];
                float v = data[i + j + len];
                data[i + j] = u + v;
                data[i + j + len] = u - v;
            }
        }
    }
}
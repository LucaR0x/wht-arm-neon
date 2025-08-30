# Walsh-Hadamard Transform su ARM (NEON)

Repository per la tesi triennale in Ingegneria Informatica (UniPD).  
Lavoro sullo sviluppo e ottimizzazione della Walsh-Hadamard Transform (WHT) su architettura ARM, con utilizzo delle istruzioni SIMD **NEON**.

//## 📌 Struttura del progetto
//- `src/` → codici sorgente C++  
//- `tests/` → test di correttezza e benchmark  
//- `notes/` → appunti, materiali utili (facoltativo)

## Implementazioni attuali
- [x] Implementazione iterativa base della FWHT in C++  
- [x] Esempi di utilizzo di NEON (`vld1q_f32`, `vaddq_f32`, `vst1q_f32`)  
- [ ] Ottimizzazione WHT con NEON  
- [ ] Benchmark comparativi tra versione scalar e NEON  

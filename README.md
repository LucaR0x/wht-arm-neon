# Fast Walsh–Hadamard Transform (FWHT) su architettura ARM NEON

Questo progetto implementa e analizza le prestazioni della Fast Walsh–Hadamard Transform (FWHT) su architettura ARMv8 (Apple Silicon), confrontando una versione naive con una versione ottimizzata tramite istruzioni SIMD NEON.
Il lavoro nasce come parte di una tesi di laurea triennale dedicata allo studio delle ottimizzazioni a basso livello e al comportamento del compilatore Clang nelle diverse modalità di ottimizzazione (-O0, -O1, -O2, -Ofast).

⸻

## 🎯 Obiettivi del progetto
	•	Implementare la FWHT in C++ nella sua forma naive, basata su operazioni scalari.
	•	Realizzare una seconda versione ottimizzata che utilizza le istruzioni vettoriali NEON, elaborando più elementi in parallelo.
	•	Sviluppare un benchmark automatizzato per misurare i tempi di esecuzione con diversi livelli di ottimizzazione del compilatore.
	•	Analizzare i risultati ottenuti e il codice assembly generato, per valutare l’efficacia reale delle ottimizzazioni manuali rispetto a quelle automatiche.

⸻

## 🧩 Struttura del progetto

wht-arm-neon/
├── src/
│   ├── wht_naive.cpp          # Implementazione base (scalare)
│   ├── wht_neon.cpp           # Implementazione ottimizzata NEON
│   ├── wht_neon_opt.cpp       # Versione sperimentale con pragma/unrolling
│   ├── wht_neon_opt_man.cpp   # Versione con unrolling manuale
│   ├── wht.hpp                # Header comune
│
├── benchmark/
│   ├── benchmark.cpp          # Script di benchmark
│   ├── plot_fwht_raw.py       # Script Python per generazione grafici
│   └── results/               # CSV dei risultati
│
├── build/                     # File eseguibili generati
└── Makefile                   # File di build

## ⚙️ Ambiente di sviluppo
	•	Architettura: Apple M2 (ARMv8, 8 core)
	•	Sistema operativo: macOS 15.5
	•	Compilatore: Clang++ 16.0.0
	•	Linguaggio: C++17
	•	Librerie principali:
	•	<arm_neon.h> per le istruzioni SIMD
	•	pandas e matplotlib per l’analisi dati e la generazione dei grafici

## 📊 Benchmark

Il benchmark genera vettori di lunghezza variabile da 2^1 a 2^{20} con valori casuali uniformemente distribuiti.
Per ogni dimensione vengono eseguite 100 iterazioni, ripetute su 10 vettori diversi, e i tempi medi vengono salvati in formato CSV.

I risultati sono poi visualizzati tramite grafici che mostrano:
	•	l’andamento dei tempi di esecuzione per entrambe le versioni;
	•	lo speedup della versione NEON rispetto alla naive;
	•	l’impatto delle varie ottimizzazioni del compilatore.

⸻

## 🔬 Analisi del codice assembly

Il progetto include anche un’analisi del codice assembly generato, volta a studiare come le istruzioni vettoriali (fadd.4s, fsub.4s, ldp, stp) evolvano nei diversi livelli di ottimizzazione.
È stato osservato che:
	•	la versione naive viene automaticamente vettorizzata dal compilatore a partire da -O2;
	•	la versione NEON non subisce modifiche sostanziali, poiché il compilatore considera le istruzioni SIMD già esplicite;
	•	con -Ofast, il loop unrolling viene applicato in modo estensivo, aumentando notevolmente il numero di istruzioni vettoriali generate.

⸻

## 🚀 Risultati principali
	•	Senza ottimizzazioni (-O0), la versione NEON è fino a 2× più veloce della versione naive.
	•	Con -O1, le prestazioni migliorano per entrambe, ma lo speedup si riduce (~1.5×).
	•	Con -O2 e -Ofast, la versione naive supera quella NEON, grazie alla vettorizzazione automatica del compilatore.
	•	L’analisi assembly mostra come il compilatore riesca a generare codice NEON efficiente anche da codice scalare.

⸻

## 🧠 Contesto e applicazioni

La Fast Walsh–Hadamard Transform (FWHT) è un’operazione fondamentale in diversi ambiti, tra cui:
	•	elaborazione del segnale,
	•	compressione dati,
	•	e similarity search basata su Locality Sensitive Hashing (LSH).

Lo studio svolto contribuisce al progetto di ricerca del framework Panna, volto a implementare algoritmi di similarity search efficienti basati su trasformate FWHT.

⸻

## 📂 Repository

Il codice sorgente, i risultati sperimentali e gli script di analisi sono disponibili pubblicamente su questo repository:

📎 https://github.com/LucaR0x/wht-arm-neon

⸻

## 🧾 Licenza

Questo progetto è distribuito sotto licenza MIT.
Puoi utilizzarlo, modificarlo e condividerlo liberamente citando l’autore originale.

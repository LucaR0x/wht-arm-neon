import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os

# Percorso dei file CSV (modifica se necessario)
base_path = "benchmark/results"
files = {
    "O0": os.path.join(base_path, "results_O0.csv"),
    "O1": os.path.join(base_path, "results_O1.csv"),
    "O2": os.path.join(base_path, "results_O2.csv"),
    "Ofast": os.path.join(base_path, "results_Ofast.csv")
}

# Dizionario per i dati medi
means = {}

# Legge ogni CSV, calcola media dei tempi NEON per ciascun N
for label, path in files.items():
    df = pd.read_csv(path, sep=",")
    # Normalizza il nome della colonna (alcuni CSV hanno header strani)
    df.columns = [col.strip() for col in df.columns]
    
    # Raggruppa per N e calcola media dei tempi NEON
    grouped = df.groupby("N")["Tempo Naive (ns)"].mean().reset_index()
    means[label] = grouped

# Crea il grafico
plt.figure(figsize=(9, 6))

for label, data in means.items():
    plt.plot(data["N"], data["Tempo Naive (ns)"], marker="o", label=f"Naive {label}")

plt.xscale("log", base=2)
plt.yscale("log", base = 2)

plt.title("Confronto FWHT Naive con diversi livelli di ottimizzazione")
plt.xlabel("Dimensione del vettore")
plt.ylabel("Tempo medio di esecuzione (ns)")
plt.grid(True, which="both", ls="--", lw=0.5)
plt.legend()

# Salva e mostra
output_fig = "figures/fwht_naive_opt_levels.pdf"
os.makedirs("figures", exist_ok=True)
plt.savefig(output_fig, format="pdf")
plt.show()

print(f"Grafico salvato in {output_fig}")
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# === Parametri ===
input_csv = "benchmark/results/results_Ofast.csv"  # percorso al tuo CSV
output_fig = "figures/fwht_naive_vs_neon_Ofast.pdf"

# === Lettura corretta con separatore virgola ===
df = pd.read_csv(input_csv, sep=',')
df.columns = [c.strip().replace('\ufeff', '') for c in df.columns]
print("Colonne lette:", df.columns.tolist())

# === Raggruppamento per N ===
print("Colonne lette:", df.columns.tolist())
print(df.head())
grouped = df.groupby("N").agg({
    "Tempo Naive (ns)": ["mean", "std"],
    "Tempo Neon (ns)": ["mean", "std"]
}).reset_index()

# Rinomina colonne per semplicità
grouped.columns = ["N", "Naive_mean", "Naive_std", "Neon_mean", "Neon_std"]

# Stampa valori mediati
print("\n📊 Risultati mediati per ciascun N (in nanosecondi):\n")
print(f"{'N':>10} | {'Naive_mean':>12} | {'Naive_std':>10} | {'Neon_mean':>12} | {'Neon_std':>10}")
print("-" * 64)
for _, row in grouped.iterrows():
    print(f"{int(row['N']):>10} | {row['Naive_mean']:12.3f} | {row['Naive_std']:10.3f} | {row['Neon_mean']:12.3f} | {row['Neon_std']:10.3f}")

# 🔹 Zoom sui primi N

# === Creazione del grafico ===
plt.figure(figsize=(8, 5))

# FWHT Naive
plt.errorbar(grouped["N"], grouped["Naive_mean"], yerr=grouped["Naive_std"],
             fmt='o-', color="#1f77b4", ecolor="#1f77b4", elinewidth=1,
             capsize=3, label="FWHT Naive")

# FWHT NEON
plt.errorbar(grouped["N"], grouped["Neon_mean"], yerr=grouped["Neon_std"],
             fmt='s--', color="#d62728", ecolor="#d62728", elinewidth=1,
             capsize=3, label="FWHT NEON")

# === Formattazione ===
plt.xlabel("Dimensione del vettore", fontsize=11)
plt.xscale("log", base = 2)
plt.ylabel("Tempo medio di esecuzione (ns)", fontsize=11)
plt.yscale("log", base = 2)
plt.title("Confronto FWHT Naive vs NEON (senza ottimizzazioni)", fontsize=12, pad=10)
plt.legend(fontsize=10)
plt.grid(alpha=0.3)
plt.tight_layout()

# === Salvataggio ===
import os
os.makedirs(os.path.dirname(output_fig), exist_ok=True)
plt.savefig(output_fig, format="pdf")
plt.show()

print(f"Grafico salvato in: {output_fig}")
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# === Parametri ===
input_raw = "benchmark/results/results_O0.csv"  # percorso al tuo CSV
input_opt = "benchmark/results/results_Ofast.csv"
output_fig = "figures/fwht_neon_raw_vs_naive_vs_neon__Ofast_no_log.pdf"

# === Lettura corretta con separatore virgola ===
df = pd.read_csv(input_raw, sep=',')
dg = pd.read_csv(input_opt, sep=',')
df.columns = [c.strip().replace('\ufeff', '') for c in df.columns]
dg.columns = [d.strip().replace('\ufeff', '') for d in dg.columns]
print("Colonne lette:", df.columns.tolist())
print("ok")
print("Colonne lette:", dg.columns.tolist())
print("ok")

# === Raggruppamento per N ===
print("Colonne lette raw:", df.columns.tolist())
print(df.head())
grouped_raw = df.groupby("N").agg({
    "Tempo Naive (ns)": ["mean", "std"],
    "Tempo Neon (ns)": ["mean", "std"]
}).reset_index()

print("Colonne lette opt:", dg.columns.tolist())
print(dg.head())
grouped_opt = dg.groupby("N").agg({
    "Tempo Naive (ns)": ["mean", "std"],
    "Tempo Neon (ns)": ["mean", "std"]
}).reset_index()

# Rinomina colonne per semplicità
grouped_raw.columns = ["N", "Naive_mean", "Naive_std", "Neon_mean", "Neon_std"]
grouped_opt.columns = ["N", "Naive_mean", "Naive_std", "Neon_mean", "Neon_std"]

# Stampa valori mediati
print("\n📊 Risultati mediati per ciascun N (in nanosecondi):\n")
print(f"{'N':>10} | {'Naive_mean':>12} | {'Naive_std':>10} | {'Neon_mean':>12} | {'Neon_std':>10}")
print("-" * 64)
for _, row in grouped_raw.iterrows():
    print(f"{int(row['N']):>10} | {row['Naive_mean']:12.3f} | {row['Naive_std']:10.3f} | {row['Neon_mean']:12.3f} | {row['Neon_std']:10.3f}")

# 🔹 Zoom sui primi N

# === Creazione del grafico ===
plt.figure(figsize=(8, 5))

# FWHT Naive
plt.errorbar(grouped_opt["N"], grouped_opt["Naive_mean"], yerr=grouped_opt["Naive_std"],
             fmt='o-', color="#1f77b4", ecolor="#1f77b4", elinewidth=1,
             capsize=3, label="FWHT Naive Ofast")

# FWHT NEON
plt.errorbar(grouped_opt["N"], grouped_opt["Neon_mean"], yerr=grouped_opt["Neon_std"],
             fmt='s-', color="#d62728", ecolor="#d62728", elinewidth=1,
             capsize=3, label="FWHT NEON Ofast")

# FWHT NEON raw
plt.errorbar(grouped_raw["N"], grouped_raw["Neon_mean"], yerr=grouped_raw["Neon_std"],
             fmt='.--', color="#000000", ecolor="#000000", elinewidth=1,
             capsize=3, label="FWHT NEON O0")

# === Formattazione ===
plt.xlabel("Dimensione del vettore", fontsize=11)
plt.xscale("log", base = 2)
plt.ylabel("Tempo medio di esecuzione (ns)", fontsize=11)
plt.yscale("log", base = 2)
plt.title("Confronto FWHT Naive vs NEON - opzione Ofast", fontsize=12, pad=10)
plt.legend(fontsize=10)
plt.grid(alpha=0.3)
plt.tight_layout()

# === Salvataggio ===
import os
os.makedirs(os.path.dirname(output_fig), exist_ok=True)
plt.savefig(output_fig, format="pdf")
plt.show()

print(f"Grafico salvato in: {output_fig}")
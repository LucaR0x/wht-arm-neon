import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import os

input_csv = "benchmark/results/results_O0.csv"
output_fig_zoom = "figures/fwht_naive_vs_neon_raw_zoom_2.pdf"

df = pd.read_csv(input_csv, sep=',')
df.columns = [c.strip().replace('\ufeff', '') for c in df.columns]

grouped = df.groupby("N").agg({
    "Tempo Naive (ns)": ["mean", "std"],
    "Tempo Neon (ns)": ["mean", "std"]
}).reset_index()

grouped.columns = ["N", "Naive_mean", "Naive_std", "Neon_mean", "Neon_std"]

# 🔹 Zoom sui primi N (ad esempio fino a 2^10 = 1024)
smallN = grouped[grouped["N"] <= 512]

# Creazione cartella per le figure
os.makedirs(os.path.dirname(output_fig_zoom), exist_ok=True)

plt.figure(figsize=(8, 5))
plt.errorbar(smallN["N"], smallN["Naive_mean"], yerr=smallN["Naive_std"],
             fmt='o-', color="#1f77b4", ecolor="#1f77b4", capsize=3, label="FWHT Naive")
plt.errorbar(smallN["N"], smallN["Neon_mean"], yerr=smallN["Neon_std"],
             fmt='s--', color="#d62728", ecolor="#d62728", capsize=3, label="FWHT NEON")

# puoi usare scala lineare per evidenziare meglio le differenze
plt.xscale("log", base = 2)
plt.yscale("log", base = 2)

plt.xlabel("Dimensione del vettore", fontsize=11)
plt.ylabel("Tempo medio di esecuzione (ns)", fontsize=11)
plt.title("Zoom FWHT Naive vs NEON — Piccole dimensioni", fontsize=12, pad=10)
plt.legend(fontsize=10)
plt.grid(alpha=0.4, which="both")
plt.minorticks_on()
plt.tight_layout()

plt.savefig(output_fig_zoom, format="pdf")
plt.show()
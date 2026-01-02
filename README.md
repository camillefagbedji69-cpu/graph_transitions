# 🌍 Markovian Network Analysis of Land-Use Dynamics : A Quantitative Framework for Landscape Transition & Attractor Identification

## 📌 Overview

This project introduces a novel approach to analyzing Land-Use/Land-Cover (LULC) dynamics by merging **Markov Chains** with **Network Theory**.

Beyond traditional transition matrices, this framework treats the landscape as a **complex dynamic system** where LULC classes are nodes and transitions are weighted directed edges. By extracting topological properties such as **Eigenvector Centrality** and **PageRank**, the model identifies ecological tipping points and **anthropogenic attractors**.

## 🎯 Key Objectives

* **Stochastic Modeling:** Transform multi-temporal raster data into a rigorous transition matrix.
* **Flux Analysis:** Isolate "active dynamics" by filtering out landscape inertia (self-transitions).
* **Topological Diagnostics:** Use network algorithms to quantify system resilience and irreversibility.
* **Proof of Concept:** Demonstrate that a single transition matrix contains massive structural information about an ecosystem's future trajectory.

## 🧠 Conceptual Methodology

The framework is built on a crucial mathematical distinction between **Persistence** and **Flux**:

1. **Raw Network:** Includes the matrix diagonal (stability). This graph reveals the "rigidity" of the system.
2. **Transition Network (Filtered):** By removing auto-transition loops (), the actual engine of change is revealed.
3. **Network Indicators:**
* **In-Strength:** Measures the "attractiveness" of a class (e.g., Urbanization).
* **Out-Strength:** Measures the "vulnerability" of a class (e.g., Deforestation).
* **PageRank:** Identifies the terminal "sinks" towards which the system converges.


## 🔍 Highlighted Findings (Case Study: 2015-2019)

Applying the model to my study zone revealed critical insights:

* **The Urban Attractor:** Class 50 (Urban) emerges as the system's global attractor (Max PageRank = **0.24**), capturing the vast majority of outgoing flows.
* **The Transition Pivot:** Class 30 (Herbaceous) acts as the central corridor of change (Eigenvector Centrality = **1.0**), bearing the highest pressure from all other classes.
* **Forest Isolation:** Forest classes (114, 126) show near-zero centrality scores (), confirming a one-way dynamic: once degraded, the return to a forest state is mathematically absent from the current network.

## 🛠️ Technologies & Tools

* **Language:** R
* **Spatial Analysis:** `terra` (SpatRaster processing)
* **Network Science:** `igraph` (Graph theory & topology)
* **Data Workflow:** Crosstabulation & Stochastic normalization

## 🚀 Perspectives & Extensions

* **Multilayer Graphs:** Coupling LULC dynamics with a biophysical layer to model **Carbon Metabolism**.
* **Absorbing Markov Chains:** Calculating the "Mean Time to Absorption" before a forest pixel is permanently converted to agriculture.
* **Structural Robustness:** Simulating "edge removal" to test the impact of conservation policies on the overall network flow.

# **A Pipelined Hybrid Sorting Architecture (Verilog Implementation)**

This repository contains a **Verilog HDL implementation** of a **pipelined hybrid sorting architecture**, inspired by two key hardware sorting components:
- **Bitonic Sorting Unit (BSU)**
- **Bidirectional Insertion Sorting Units (BISUs)**
The design is based on the reference work:
    **"A Low-Cost Pipelined Architecture Based on a Hybrid Sorting Algorithm" - 
    Chen, Y.-R., Ho, C.-C., Chen, W.-T., & Chen, P.-Y. (2024), IEEE Transactions on Circuits and Systems I.**

## **Overview**
The referenced work proposes an optimized pipelined sorting architecture that replaces the Existing **Bitonic Sorting Unit (BSU)** with an **Odd-Even Merge Sorting Unit (OEMU)** while retaining **Bidirectional Insertion Sorting Units (BISUs)** for fine-grained sorting.

## **Key Improvements Over Existing Designs**
Compared to the existing BSU-based architecture, the proposed design achieves:

- **3.68% reduction in area**  
- **3.68% power savings**  
- **16.93% reduction in delay**

These enhancements make it suitable for **resource-constrained** and **performance-critical** applications.

## 🔧 **Architecture Summary**

### **1. Initial Data Segmentation**
The input sequence of length **N** is divided into subsequences of length **P**.
Examples:  
- If **N = 16, P = 4 → 4 subsequences**  
- If **N = 16, P = 8 → 2 subsequences**

### **2. Preliminary Sorting (BSU or OEMU)**
Each subsequence is sorted using either:
- **Bitonic Sorting Unit (BSU)** — Existing  
- **Odd-Even Merge Sorting Unit (OEMU)** — proposed (lower cost & power)
This step produces **N/P sorted subsequences**.

### **3. Final Merge Using BISUs**
  The sorted subsequences are processed by **N/2 Bidirectional Insertion Sorting Units (BISUs)** to generate the final sorted sequence of length **N**.
This stage improves throughput and latency while maintaining low hardware cost.

## **Repository Structure**
- src # Verilog RTL modules (BSU/OEMU, BISUs) with Architectural Diagrams
- testbench # Testbench files for simulation
- Simulation and Comparisons # Waveforms and comparison tables

## Tools Used
- Verilog HDL
- Cadence Incisive - Simulation
- Cadence Genus – Synthesis (90nm)

## Reference
 **"A Low-Cost Pipelined Architecture Based on a Hybrid Sorting Algorithm", Chen, Y.-R., et.al (2024), IEEE Transactions on Circuits and Systems I.**


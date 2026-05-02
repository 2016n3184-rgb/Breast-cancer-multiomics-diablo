# Multi-Omics Integration of Breast Cancer Subtypes using DIABLO

## Overview

Breast cancer is a heterogeneous disease with distinct molecular subtypes. This project applies integrative multi-omics analysis to identify subtype-specific biomarkers and regulatory programs using transcriptomic (mRNA), microRNA (miRNA), and proteomic data.

## Objective

To integrate multi-omics datasets and:

* Identify biomarkers distinguishing breast cancer subtypes
* Reveal cross-omics regulatory relationships
* Evaluate classification performance

## Data

* Dataset: `breast.TCGA` (mixOmics)
* Omics layers:

  * mRNA expression
  * miRNA expression
  * Protein abundance
* Samples: 150 patients
* Subtypes: Basal, HER2, Luminal A

## Methods

* Multi-omics integration using **DIABLO (mixOmics)**
* Sparse feature selection (block.splsda)
* Correlation analysis across omics layers
* Model evaluation using confusion matrix

## Results

### Figure 1 — Multi-Omics Integration

DIABLO integration shows clear separation of Basal and Luminal A subtypes, while HER2 samples partially overlap with both groups.

![DIABLO Integration](Figure%201.%20DIABLO-based%20multi-omics%20integration%20of%20breast%20cancer%20subtypes.png)

### Figure 2 — Biomarker Identification

Key subtype-discriminating features:

* **mRNA:** CCNA2, E2F1, LRIG1

![mRNA Biomarkers](Figure2A_mRNA_biomarkers.png)
  
* **Protein:** ER-alpha, GATA3, PR

![miRNA Biomarkers](Figure2B_miRNA_biomarkers.png?v=1)

* **miRNA:** miR-17, miR-20a, miR-106 family

![Protein Biomarkers](Figure2C_protein_biomarkers.png?v=1)

### Figure 3 — Cross-Omics Correlation

![Final Results](Figure3_FINAL.png)

Correlation heatmap reveals two major molecular modules:

* Hormone receptor signaling (ER-alpha, GATA3)
* Proliferation pathway (CCNA2, Cyclins, miR-17 cluster)

These modules show strong inverse relationships.

### Figure 4 — Model Performance

The model accurately classifies Basal and Luminal A subtypes.
HER2 samples are misclassified into both groups, suggesting overlapping molecular characteristics.

![Figure 4: Confusion Matrix](Figure4_FINAL_confusion_matrix.png)
## Biological Insight

* Basal subtype is associated with proliferation and cell-cycle genes
* Luminal A subtype is driven by hormone receptor signaling
* HER2 subtype exhibits intermediate molecular behavior across omics layers

## Conclusion

Multi-omics integration reveals biologically meaningful subtype-specific signatures and highlights the complexity of HER2 classification. This approach demonstrates the value of integrating multiple molecular layers for cancer characterization.

## Repository Structure

```
├── README.md
├── figures/
│   ├── Figure1_DIABLO.png
│   ├── Figure2A_mRNA.png
│   ├── Figure2B_miRNA.png
│   ├── Figure2C_protein.png
│   ├── Figure3_heatmap.png
│   ├── Figure4_confusion.png
├── scripts/
│   └── analysis.R
```

## Tools & Packages

* R
* mixOmics
* ggplot2
* pheatmap

## Key Takeaway

Integrating multi-omics data uncovers coordinated biological processes and improves understanding of cancer subtype heterogeneity.


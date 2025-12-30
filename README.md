# scRNAseq_Seurat_Workflow

A reproducible workflow for single-cell RNA-seq analysis using Seurat.

## Overview
This repository provides an end-to-end scRNA-seq analysis pipeline including:
- Quality control and filtering
- SCTransform normalization
- Dataset integration
- Dimensionality reduction and clustering
- Cell type annotation
- Optional downstream analyses (e.g., WGCNA, CellChat)

## Example use case
The workflow is demonstrated using public scRNA-seq datasets from GEO, 
including lung-related and disease-associated samples. 
However, the pipeline is general and can be applied to any scRNA-seq dataset.

## Requirements
- R (>= 4.3)
- Seurat (v5)
- tidyverse

## Data availability
Raw sequencing data are not included in this repository.
Public datasets can be obtained from GEO (see data/README.md).

## Author
Nikhil Kirtipal  
Bioinformatics researcher with interest in single-cell and microbiome analysis.
## Contact
For questions or suggestions, feel free to open an issue.

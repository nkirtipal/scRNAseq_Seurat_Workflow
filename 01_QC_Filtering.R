# 01_QC_Filtering.R
# Quality control and filtering of scRNA-seq data using Seurat
# Author: Nikhil Kirtipal
# Description: This script performs basic QC, visualizes metrics, and filters cells.

library(Seurat)
library(tidyverse)

# Load Seurat object (replace with your file path)
seu <- readRDS("data/seurat_raw.rds")

# Calculate percentage of mitochondrial genes
seu[["percent.mt"]] <- PercentageFeatureSet(seu, pattern = "^MT-")

# Visualize QC metrics
VlnPlot(seu, features = c("nFeature_RNA", "nCount_RNA", "percent.mt"), ncol = 3)

# Filter cells based on QC thresholds
seu <- subset(seu, subset = nFeature_RNA > 200 & nFeature_RNA < 5000 & percent.mt < 10)

# Save filtered object for downstream analysis
saveRDS(seu, file = "data/seurat_filtered.rds")

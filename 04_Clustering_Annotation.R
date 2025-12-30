# 04_Clustering_Annotation.R
# Dimensionality reduction, clustering, and annotation
# Author: Nikhil Kirtipal
# Description: Performs PCA, UMAP, clustering, and annotates cell types.

library(Seurat)
library(tidyverse)

# Load integrated object
seu <- readRDS("data/seurat_integrated.rds")

# Run PCA
seu <- RunPCA(seu, verbose = FALSE)

# Run UMAP
seu <- RunUMAP(seu, dims = 1:30)

# Find neighbors and clusters
seu <- FindNeighbors(seu, dims = 1:30)
seu <- FindClusters(seu, resolution = 0.5)

# Visualize clusters
DimPlot(seu, reduction = "umap", label = TRUE)

# Optionally annotate clusters (manual or automated)
# seu$celltype <- ... 

# Save annotated object
saveRDS(seu, file = "data/seurat_clustered.rds")

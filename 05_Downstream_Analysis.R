# 05_Downstream_Analysis.R
# Example downstream analysis (WGCNA or CellChat)
# Author: Nikhil Kirtipal
# Description: Placeholder script for further analysis such as gene networks or cell communication.

library(Seurat)
library(tidyverse)

# Load clustered Seurat object
seu <- readRDS("data/seurat_clustered.rds")

# Example: Identify marker genes
markers <- FindAllMarkers(seu, only.pos = TRUE, min.pct = 0.25, logfc.threshold = 0.25)
head(markers)

# Save marker genes
write.csv(markers, file = "results/marker_genes.csv")

# Placeholder: WGCNA or CellChat analysis can be added here
# (You can create separate scripts later for these analyses)

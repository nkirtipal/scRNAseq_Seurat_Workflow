# 02_Normalization_SCT.R
# Normalization and scaling using SCTransform
# Author: Nikhil Kirtipal
# Description: Applies SCTransform normalization and prepares data for integration.

library(Seurat)
library(tidyverse)

# Load filtered Seurat object
seu <- readRDS("data/seurat_filtered.rds")

# SCTransform normalization
seu <- SCTransform(seu, verbose = FALSE)

# Save normalized object
saveRDS(seu, file = "data/seurat_normalized.rds")

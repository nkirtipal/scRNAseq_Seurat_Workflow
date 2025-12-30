# 03_Integration.R
# Integration of multiple Seurat objects
# Author: Nikhil Kirtipal
# Description: Prepares a list of datasets and integrates them for combined analysis.

library(Seurat)
library(tidyverse)

# Example: Load multiple Seurat objects
# Replace with your actual files
seu1 <- readRDS("data/seurat_normalized1.rds")
seu2 <- readRDS("data/seurat_normalized2.rds")

# Create list of objects
seu_list <- list(seu1, seu2)

# Select features for integration
features <- SelectIntegrationFeatures(object.list = seu_list, nfeatures = 3000)

# Prepare objects for integration
seu_list <- PrepSCTIntegration(object.list = seu_list, anchor.features = features)

# Find integration anchors
anchors <- FindIntegrationAnchors(object.list = seu_list, normalization.method = "SCT", anchor.features = features)

# Integrate data
seu_integrated <- IntegrateData(anchorset = anchors, normalization.method = "SCT")

# Save integrated object
saveRDS(seu_integrated, file = "data/seurat_integrated.rds")

# gRomatin
This is package containing wrapper functions for a few useful graphics used in genomics research. The graphics targetted are
- LaTeX tables
- Volcano Plots
- Venn Diagrams
- PCA plot
- Karyoplots

# Installation

```
install.packages("devtools")
library(devtools)
install_github("LeonMQ/gRomatin")
```

## Dependencies
```
ggplot2 >= 3.3.5
tidyverse >= 1.3.1
dplyr >= 1.0.8
xtable >= 1.8.4
ggrepel >= 0.9.1
gtools >= 3.9.2
VennDiagram >= 1.7.1
TxDb.Hsapiens.UCSC.hg19.knownGene (>= 3.2.2
karyoploteR >= 1.21.3
GenomeInfoDb >= 1.30.1
```
Not all of these are on the CRAN, those are
- TxDb.Hsapiens.UCSC.hg19.knownGene
- karyoploteR
- GenomeInfoDb

These can be installed using bioconductor, though I found that I could only get karyoploter working from github, try both.
```
install.packages("BiocManager")
install.packages("devtools")
library(BiocManager)
library(devtools)
BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene")
BiocManager::install("karyoploteR")
install_github("bernatgel/karyoploter")
BiocManager::install("GenomeInfoDb")
```

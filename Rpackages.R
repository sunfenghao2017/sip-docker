source("https://bioconductor.org/biocLite.R")
 local({r <- getOption("repos") 
r["CRAN"] <- "http://mirrors.tuna.tsinghua.edu.cn/CRAN/"
options(repos=r)})
install.packages("devtools")
biocLite(c("Seurat","readr","edgeR","DESeq2","DEsingle","BiocParallel","SingleCellExperiment","stringr","tximport"))

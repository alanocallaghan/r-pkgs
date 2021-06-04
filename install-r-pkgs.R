#!/usr/bin/env Rscript
pkgs <- list.files(
    paste0(
        "/home/alan/R/x86_64-pc-linux-gnu-library/",
        R.version$major, ".",
        max(0, as.numeric(gsub(".\\d$", "", R.version$minor)) - 1)
    )
)

install.packages("devtools")
install.packages("BiocManager")

BiocManager::install(pkgs, Ncpus = 8)


BiocManager::install(c('BASiCS', 'batchelor', 'BiocSingular', 'bluster', 'corral',
  'iSEE', 'monocle', 'mumosa', 'PCAtools', 'scater', 'scDblFinder',
  'scran', 'SingleR', 'slingshot', 'tradeSeq', 'TrajectoryUtils', 'TSCAN',
  'velociraptor')


dependencies_file <- paste0(
    "~/Documents/r-pkgs-",
    R.version$major, ".", gsub(".\\d$", "", R.version$minor),
    ".csv"
)
write.table(installed.packages(), file = dependencies_file)

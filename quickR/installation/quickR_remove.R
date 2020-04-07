base::source("spark_uninstall.R")
base::source("kaggle_uninstall.R")
utils::remove.packages(pkgs = c("reticulate","readr","dplyr","tidyr","sparklyr"))

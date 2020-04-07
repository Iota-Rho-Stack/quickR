base::try(
  reticulate::use_miniconda(
    condaenv = "r-reticulate",
    required = FALSE))
base::try(
  reticulate::conda_remove(
    envname = "r-reticulate",
    packages = c("kaggle"),
    conda = "auto"))
  

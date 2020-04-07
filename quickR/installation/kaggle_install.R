base::try(
  reticulate::use_miniconda(
    condaenv = "r-reticulate",
    required = FALSE))
base::try(
  reticulate::conda_install(
    envname = "r-reticulate",
    packages = c("kaggle"),
    forge = TRUE,
    pip = FALSE,
    pip_ignore_installed = FALSE,
    conda = "auto",
    python_version = NULL,
  ))
  


base::try(
  reticulate::install_miniconda(
  path = miniconda_path(),
  update = TRUE,
  force = FALSE))

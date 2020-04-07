sparklyr::copy_to(
  sparklyr::spark_connect(
    master = "local"),
  base::source(
    "dplyr_training_subset.R")$value
    )

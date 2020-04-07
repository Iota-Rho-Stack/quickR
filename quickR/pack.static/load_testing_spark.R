sparklyr::copy_to(
  sparklyr::spark_connect(
    master = "local"),
        base::source(
          "dplyr_testing_subset.R")$value
  )

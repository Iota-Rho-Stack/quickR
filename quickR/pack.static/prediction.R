sparklyr::ml_predict(
  x = base::source("algo.R")$value,
  dataset = base::source("load_testing_spark.R")$value)
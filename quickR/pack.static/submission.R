base::source("load_libraries.R")
sparklyr::spark_write_csv(
  sparklyr::sdf_coalesce(
    base::source(
      "prediction_output.R"
    )$value %>%
      dplyr::mutate_all(as.integer),
    partitions =  1),
  path = "submission",
  header = TRUE,
  delimiter = ",",
  charset = "UTF-8",
  null_value = NULL,
  mode = "overwrite"
)

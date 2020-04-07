base::source("load_libraries.R")
sparklyr::sdf_bind_cols(
   base::source("load_testing_spark.R")$value %>%
      dplyr::select(PassengerId),
   sparklyr::ml_predict(
       x = base::source("algo.R")$value,
       dataset = base::source("load_testing_spark.R")$value) %>%
      dplyr::select(prediction) %>%
      dplyr::rename(Survived = prediction)
   )

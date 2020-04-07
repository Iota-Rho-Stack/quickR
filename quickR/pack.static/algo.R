base::source("load_training_spark.R")$value %>%
  sparklyr::ml_random_forest_classifier(
  formula = Survived ~.)

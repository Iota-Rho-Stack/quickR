source("load_testing_data.R")$value %>%
  dplyr::select(Pclass,Sex,Age,SibSp,Parch,Fare,PassengerId) %>%
  base::replace(base::is.na(.),0)

base::source("load_training_data.R")$value %>% 
  dplyr::select(Survived,Pclass,Sex,Age,SibSp,Parch,Fare) %>%
  tidyr::drop_na()
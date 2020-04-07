Static quickR Use and Commands:

Once quickR has been configured, create a copy of this folder and save it to your R project directory. Rename it.

Kaggle -

Use the Kaggle API terminal commands to fetch your desried competition data via...

kaggle competitions download -c <competition goes here>

A tar file will download to your R Project directory. 

Unzip the data using...

jar xf titanic.zip

You can get a list of Kaggle competitions via...

kaggle competitions list

quickR -

Call each script using the base source() command.

Edit the load scripts to the source of the training and testing data respectively.

Edit the dplyr scripts to subset what data gets sent to the Spark cluster.

Edit the algo.R script to change the Sparklyr machine learning method.

Edit the prediction_output.R script so...

source("load_testing_spark.R")$value %>%
      select(ID)

reflects the target ID from the test data set and...

select(prediction) %>%
      rename(new_var_name = prediction)
   )
   
reflects the name of the prediction colmun.
Set new_var_name to the name of the orignal target variable.

Thereafter, you can call prediction_output.R to access the predictions or submission.R to write the predictions to a comma separated file (csv). Note for large outputs you may have to change the partitions parameter in submission.R.

As is, the static script pack produces predicitons for the Kaggle Titanic competition.
(https://www.kaggle.com/c/titanic)

** All commands operable as of 4-7-2020 **
base::try(
  sparklyr::spark_uninstall(version = spark_installed_versions()[1,1], hadoop_version = spark_installed_versions()[1,2]))

locals {
  # This is based on the AWS docs on https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-web-interfaces.html
  applications_map = {
    "Ganglia"              = { port = 80 },    #	http://master-public-dns-name/ganglia/
    "Hadoop HDFS NameNode" = { port = 50470 }, #	https://master-public-dns-name:50470/
    "Hadoop HDFS DataNode" = { port = 50470 }, #  https://coretask-public-dns-name:50475/
    "HBase"                = { port = 16010 }, #	http://master-public-dns-name:16010/
    "Hue"                  = { port = 8888 },  #	http://master-public-dns-name:8888/
    "JupyterHub"           = { port = 9443 },  #	https://master-public-dns-name:9443/
    "Livy"                 = { port = 8998 },  #	http://master-public-dns-name:8999/
    "Spark HistoryServer"  = { port = 18080 }, #	http://master-public-dns-name:18080/
    "Tez"                  = { port = 8080 },  #	http://master-public-dns-name:8080/tez-ui
    "YARN NodeManager"     = { port = 8042 },  #	http://coretask-public-dns-name:8042/
    "YARN ResourceManager" = { port = 8088 },  #	http://master-public-dns-name:8088/
    "Zeppelin"             = { port = 8890 },  #	http://master-public-dns-name:8890/
  }
  tags = merge(var.tags,
    {
      Environment = var.environment
      Project     = var.project
      Owner       = var.owner
    }
  )
}

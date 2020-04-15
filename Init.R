
#### Base Libraries ####
if(!require(tidyverse)) { install.packages("tidyverse"); require(tidyverse) }
if(!require(DBI)) { install.packages("DBI"); require(DBI) }
if(!require(odbc)) { install.packages("odbc"); require(odbc) }
if(!require(janitor)) { install.packages("janitor"); require(janitor) }
if(!require(readxl)) { install.packages("readxl"); require(readxl) }
if(!require(data.table)) { install.packages("data.table"); require(data.table) }


####--------- Data Connection----------####
con_SQLSandbox <- dbConnect(odbc(), 
                            .connection_string = "driver={SQL Server}; server=mss3107; database=AdvancedAnalytics; trusted_connection=TRUE")
#dbDisconnect(con_SQLSandbox)



####--------- functions----------####
rmOutlier <- function(x){
  l <- median(x, na.rm=TRUE)-3*(mad(x))
  h <- median(x, na.rm=TRUE)+3*(mad(x))
  out <- ifelse(x > h, 0, ifelse(x < l, 0, x))
  out
}


##### Data Exploration libraries ####
if(!require(Hmisc)) { install.packages("Hmisc"); require(Hmisc) }
if(!require(skimr)) { install.packages("skimr"); require(skimr) }
if(!require(psych)) { install.packages("psych"); require(psych) }
# if(!require(PerformanceAnalytics)) { install.packages("PerformanceAnalytics"); require(PerformanceAnalytics) }


#### Stats and Modeling libraries ####

if(!require(glmnet)) { install.packages("glmnet"); require(glmnet) }
if(!require(caret)) { install.packages("caret"); require(caret) }
if(!require(xgboost)) { install.packages("xgboost"); require(xgboost) }
if(!require(randomForest)) { install.packages("xgboost"); require(xgboost) }

library(sqldf)

q <- function(sql) sqldf(sql, drv = 'RPostgreSQL', dbname = 'tlevine')

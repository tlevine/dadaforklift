library(sqldf)

q <- function(sql) sqldf(sql, drv = 'RPostgreSQL', dbname = 'tlevine')

# select "serverDateTime", "visitorId", "visitIp" from dim_piwikvisit;
emails.from <- function(address) {
  sql <- paste0("select * from dim_emailmessage where from_address = '", address, "';")
  q(sql)
}

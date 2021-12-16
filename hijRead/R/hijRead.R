#creating function to convert Gregorian dates to dd-mm-yyyy format
#' HijRead
#'
#' @param date character
#'
#' @return date in Hijri calendar
#' @export hijRead
#'
#' @examples hijRead("23-09-1998")
hijRead <- function(x){
  query = list(date = x)
  retrieved_data <- httr::GET("http://api.aladhan.com/v1/gToH", query = query)
  Sys.sleep(runif(1, 0, 1))
  cont <- content(retrieved_data, as = "text")
  date1 <- fromJSON(cont)
  date1$data$hijri$date
}



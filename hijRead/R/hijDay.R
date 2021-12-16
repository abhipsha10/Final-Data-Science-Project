#function that outputs day of the week in Arabic
#' Title
#'
#' @param date
#'
#' @return day in character string
#' @export hijDay
#'
#' @examples hijRead::hijDay("23-08-1998")
hijDay <- function(x){
  query = list(date = x)
  retrieved_data <- httr::GET("http://api.aladhan.com/v1/gToH", query = query)
  Sys.sleep(runif(1, 0, 1))
  cont <- content(retrieved_data, as = "text")
  date1 <- fromJSON(cont)
  date1$data$hijri$weekday$en
}



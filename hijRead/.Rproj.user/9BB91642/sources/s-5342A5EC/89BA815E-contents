#function outputs name of Islamic month
#' Title
#'
#' @param date
#'
#' @return month in character string
#' @export hijMonth
#'
#' @examples hijRead::hijMonth("24-10-2020")
hijMonth <- function(x){
  query = list(date = x)
  retrieved_data <- httr::GET("http://api.aladhan.com/v1/gToH", query = query)
  Sys.sleep(runif(1, 0, 1))
  cont <- content(retrieved_data, as = "text")
  date1 <- fromJSON(cont)
  date1$data$hijri$month$en
}


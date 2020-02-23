#' Get Data
#' 
#' Get data from both data sources.
#' 
#' @param q The terms to query.
#' @param since,until Date range to query.
#' @param language Language to limit results.
#' @param results Number of results to return.
#' 
#' @import assertthat
#' 
#' @export
get_data <- function(q, since, until, language = NULL, results = 1000){

  assert_that(not_missing(q))
  assert_that(not_missing(since), not_missing(until))

  # call
  currents_data <- currents::cur_search(q, language = language, start_date = since, end_date = until)
  newsapi_data <- newsapi::every_news(q, language = language, since = since, until = until, results = results)

  # clean
  currents_data$id <- NULL
  names(newsapi_data)[6:7] <- c("image", "published")

  merged <- dplyr::bind_rows(newsapi_data, currents_data)
  merged <- dplyr::mutate(merged, crawled_at = Sys.time())

  invisible(merged)
}
#' Setup
#' 
#' Setup the necessary keys.
#' 
#' @param currents_key,newsapi_key The relevant API keys, \url{newsapi.org} and \url{currentsapi.services}.
#' 
#' @export
letterbox_keys <- function(currents_key = NULL, newsapi_key = NULL){
  currents::currents_key(currents_key)
  newsapi::newsapi_key(newsapi_key)
}
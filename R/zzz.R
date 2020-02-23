.onAttach <- function(libname, pkgname) {

  newsapi <- Sys.getenv("NEWSAPI_API_KEY")
  currents <- Sys.getenv("CURRENTS_API_KEY")

  msg <- "Missing API key(s) found, see `letterbox_key`"

  if(newsapi != "" && currents != "")
    msg <- "API keys laoded!"

  packageStartupMessage(msg)

}
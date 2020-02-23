not_missing <- function(x) {
  !missing(x)
}

on_failure(not_missing) <- function(call, env) {
  paste0(deparse(call$x), " is missing")
}
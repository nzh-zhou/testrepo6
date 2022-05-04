#' Title
#'
#' @param string A character vector with, at most, one element.
#'
#' @return a character vector
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' str_split_one(x, patern = ",")
#' str_split_one(x, patern = ",", n = 2)
#'
#' y <- "192.168.0.1"
#' str_split_one(y, patern = stringr::fixed("."))
str_split_one <- function(string, patern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = patern, n = n)[[1]]
  } else {
    character()
  }
}

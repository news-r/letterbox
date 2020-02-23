
<!-- README.md is generated from README.Rmd. Please edit that file -->

# letterbox

<!-- badges: start -->

[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/news-r/letterbox?branch=master&svg=true)](https://ci.appveyor.com/project/news-r/letterbox)
[![Travis build
status](https://travis-ci.org/news-r/letterbox.svg?branch=master)](https://travis-ci.org/news-r/letterbox)
<!-- badges: end -->

letterbox is a news article crawler.

## Usage

Setup your session.

``` r
letterbox_key("xxXxxX", "XxxXx")
```

Get some data.

``` r
letterbox::get_articles(
  q = "United Nations", 
  since = Sys.Date() - 7, 
  until = Sys.Date(), 
  language = "en",
  results = 100
)
```

## Installation

You can install the released version of letterbox from Github with:

``` r
install.packages("remotes")
remotes::install_github("news-r/letterbox")
```

# BDA400 Assignment 2
# Technical Analysis using R

library(quantmod)
library(TTR)

# Function to load stock data
load_stock_data <- function(file = "portfolio.txt") {
  
  symbols <- readLines(file)
  
  stock_data <- list()
  
  for (symbol in symbols) {
    stock_data[[symbol]] <- getSymbols(
      symbol,
      src = "yahoo",
      auto.assign = FALSE
    )
  }
  
  return(stock_data)

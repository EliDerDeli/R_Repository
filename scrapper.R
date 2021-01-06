#webscrapper

library(tidyverse)
library(rvest)
library(rebus)
library(lubridate)
library(stringr)
library(plyr)
library(dplyr)
library(ggvis)
library(knitr)

#a hlinks 

url <-'https://www.nasdaq.com/market-activity/ipos'

stock <- read_html(url) 
stock.list <- html_nodes(stock, '.market-calendar-table--with-title')
stocks.names<-html_text(stock.list)
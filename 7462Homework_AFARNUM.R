library(tidyverse)
library(data.table) ## For the fread function
library(lubridate)
library(tictoc)
source("sepsis_monitor_functions.R")

sepsis50_fread<-tic() # Start the clock
makeSepsisDataset(n = 50, read_fn = "fread")
toc()

sepsis100_fread<-tic() # Start the clock
makeSepsisDataset(n = 100, read_fn = "fread")
toc()

sepsis500_fread<-tic() # Start the clock
makeSepsisDataset(n = 500, read_fn = "fread")
toc()

sepsis50_read_delim<-tic() # Start the clock
makeSepsisDataset(n = 50, read_fn = "read_delim")
toc()

sepsis100_read_delim<-tic() # Start the clock
makeSepsisDataset(n = 100, read_fn = "read_delim")
toc()

sepsis500_read_delim<-tic() # Start the clock
makeSepsisDataset(n = 500, read_fn = "read_delim")
toc()


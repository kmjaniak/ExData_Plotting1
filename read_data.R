library(dplyr)
library(lubridate)

setwd("/Users/kmm/coursera/EDA/CourseProject_1/")

raw_data <- read.table("household_power_consumption.txt",
                       header = TRUE, sep = ";", na.strings = "?")

data <- raw_data %>%
  mutate(Datetime = dmy_hms(paste(Date, Time))) %>%
  mutate(Date = dmy(.$Date)) %>%
  mutate(Time = hms(.$Time)) 

feb <- data %>%
  filter(Date %in% as.Date(c("2007-02-01", "2007-02-02"))) 

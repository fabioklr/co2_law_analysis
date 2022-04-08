####twitter cleaning 
####zsuzsanna magyar

setwd("/Users/Acer/Documents/Co2_survey/Twitter/collected_tweets/")
library(plyr)
library(dplyr)
library(readr)
library(purrr)

dataset <- ldply(list.files(), read.csv, header=TRUE)
View(dataset)


filenames <- list.files( pattern="*.csv", full.names=TRUE)
dataset_2<- map_dfr(filenames, ~read_csv(., locale = locale(encoding = 'UTF-8'))) 
head(dataset_2)
write.csv(dataset_2,"most_tweets_co2.csv",row.names = FALSE)
names(dataset_2)
dim(dataset_2)
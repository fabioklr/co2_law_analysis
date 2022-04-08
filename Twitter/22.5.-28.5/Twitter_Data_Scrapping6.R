
library(twitteR)
library(dplyr)
library(ggplot2)
library(tidytext)
library(tidyverse)
library(rio)

setwd("/Users/Flavia/Desktop/Arbeit/Twitter")

consumer_key <- "hMiRpK2EDZ0nG4voDynCTOpHJ"
consumer_secret <- "6bVati5EuFDLvbRf3VYJtgHvOEHzEHWwWM6QiAExbnCsVOFq0t"
access_token <- "1381524831821312001-dROaca4npKAASFegbmpv0oUbTr566S"
access_secret <- "4BdAKqVCKQdEv024UHOPz77KdaFBnqJK1e7ZoS34LlcQP"

setup_twitter_oauth(consumer_key, consumer_secret, access_token, access_secret)
1

fn_twitter_CO2Gesetz <- searchTwitter("CO2-Gesetz", n=5000, since= "2021-05-22", until="2021-05-28")
fn_twitter_CO2Gesetz_df <- twListToDF(fn_twitter_CO2Gesetz) 

fn_twitter_CO2GesetzJa <- searchTwitter("#CO2GesetzJa", n=1000, since= "2021-05-22", until="2021-05-28")
fn_twitter_CO2GesetzJa_df <- twListToDF(fn_twitter_CO2GesetzJa) 

fn_twitter_JaCO2Gesetz <- searchTwitter("#JaCO2Gesetz", n=1000, since= "2021-05-22", until="2021-05-28")
fn_twitter_JaCO2Gesetz_df <- twListToDF(fn_twitter_JaCO2Gesetz) 

fn_twitter_CO2GesetzNein <- searchTwitter("#CO2GesetzNein", n=1000, since= "2021-05-22", until="2021-05-28")
fn_twitter_CO2GesetzNein_df <- twListToDF(fn_twitter_CO2GesetzNein) 

fn_twitter_NeinCO2Gesetz <- searchTwitter("#NeinCO2Gesetz", n=1000, since= "2021-05-22", until="2021-05-28")
fn_twitter_NeinCO2Gesetz_df <- twListToDF(fn_twitter_NeinCO2Gesetz) 

Week <- rbind(fn_twitter_NeinCO2Gesetz_df, fn_twitter_JaCO2Gesetz_df, fn_twitter_CO2GesetzNein_df, fn_twitter_CO2GesetzJa_df, fn_twitter_CO2Gesetz_df)
Week_1 <- unique(Week)

export(Week_1, "Twitter_Week6.xlsx")
export(Week_1, "Twitter_Week6.csv")


since= "YYYY-MM-DD"
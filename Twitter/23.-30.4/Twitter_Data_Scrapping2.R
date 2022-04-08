
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

fn_twitter_CO2Gesetz_2 <- searchTwitter("CO2-Gesetz", n=1000, since= "2021-04-23", until="2021-04-30")
fn_twitter_CO2Gesetz_2_df <- twListToDF(fn_twitter_CO2Gesetz_2) 

fn_twitter_CO2GesetzJa_2 <- searchTwitter("#CO2GesetzJa", n=1000, since= "2021-04-23", until="2021-04-30")
fn_twitter_CO2GesetzJa_2_df <- twListToDF(fn_twitter_CO2GesetzJa_2) 

fn_twitter_JaCO2Gesetz_2 <- searchTwitter("#JaCO2Gesetz", n=1000, since= "2021-04-23", until="2021-04-30")
fn_twitter_JaCO2Gesetz_2_df <- twListToDF(fn_twitter_JaCO2Gesetz_2) 

fn_twitter_CO2GesetzNein_2 <- searchTwitter("#CO2GesetzNein", n=1000, since= "2021-04-23", until="2021-04-30")
fn_twitter_CO2GesetzNein_2_df <- twListToDF(fn_twitter_CO2GesetzNein_2) 

fn_twitter_NeinCO2Gesetz_2 <- searchTwitter("#NeinCO2Gesetz", n=1000, since= "2021-04-23", until="2021-04-30")
fn_twitter_NeinCO2Gesetz_2_df <- twListToDF(fn_twitter_NeinCO2Gesetz_2) 


Week2 <- rbind(fn_twitter_JaCO2Gesetz_2_df, fn_twitter_CO2GesetzNein_2_df, fn_twitter_CO2GesetzJa_2_df, fn_twitter_CO2Gesetz_2_df) 
Week_2 <- unique(Week2)

export(Week_2, "Twitter_Week2.xlsx")
export(Week_2, "Twitter_Week2.csv")


??rbind
since= "YYYY-MM-DD"
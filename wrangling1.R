library(tidyverse)

library(skimr)#install.packages("skimr")

coronavirus <- read_csv('https://raw.githubusercontent.com/RamiKrispin/coronavirus/master/csv/coronavirus.csv')

summary(coronavirus) 
skim(coronavirus)
view(coronavirus)
head(coronavirus)
tail(coronavirus)


head(coronavirus$cases)

filter(coronavirus, cases > 0)
coronavirus_us <- filter(coronavirus, country=="US")

filter(coronavirus, country!="US")

filter(coronavirus, country =="US" | country == "Canada")

filter(coronavirus, country =="US" & type == "death")

filter(coronavirus, country =="US", type == "death")

filter(coronavirus, country %in% c("US","Canada")) 


filter(coronavirus, country == "France" | country == "Germany" | country == "Italy", type == "death", date == "2021-09-16")

filter(coronavirus, country %in% c("France","Germany","Italy"), type== "death", date == "2021-09-16")
        

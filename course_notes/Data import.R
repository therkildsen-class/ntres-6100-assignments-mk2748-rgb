library(tidyverse)
lotr <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/lotr_tidy.csv")

write_csv(lotr, file = "Data/lotr_tidy.csv")
lotr <- read_csv("Data/lotr_tidy.csv")


/Users/mervekosesoy/Desktop/Github/ntres-6100-assignments-mk2748-rgb

lotr <- read_csv("/Users/mervekosesoy/Desktop/Github/ntres-6100-assignments-mk2748-rgb/data/lotr.tidy.csv")


lotr <- read_csv("Data/lotr_tidy.csv")


lotr <- read_csv("Data/lotr_tidy.csv", skip=1)
lotr <- read_csv("Data/lotr_tidy.csv", skip=1, comment= "#")


lotr


library (readxl) #install.packages("readxl")


#install.packages("readxl")

library (readxl) #install.packages("readxl")


#Reading from Excel


lotr_excel <- read_xlsx("Data/data_lesson11.xlsx")
lotr_excel


lotr_excel <- read_xlsx("Data/data_lesson11.xlsx", sheet= "FOTR")


install.packages("googlesheets4")
library(googlesheets4)#install.packages("googlesheets4")


lotr_google <- read_sheet("https://docs.google.com/spreadsheets/d/1X98JobRtA3JGBFacs_JSjiX-4DPQ0vZYtNl_ozqF6IE/edit#gid=754443596")


gs4_deauth()

lotr_google


lotr_google <- read_sheet("https://docs.google.com/spreadsheets/d/1X98JobRtA3JGBFacs_JSjiX-4DPQ0vZYtNl_ozqF6IE/edit#gid=754443596", sheet="deaths")
#lotr_google



lotr_google <- read_sheet("https://docs.google.com/spreadsheets/d/1X98JobRtA3JGBFacs_JSjiX-4DPQ0vZYtNl_ozqF6IE/edit#gid=754443596", sheet="deaths", range="A5:F15")
lotr_google

library (janitor) #install.packages("janitor")

library (janitor) #install.packages("janitor")
msa <- read_tsv("https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/main/datasets/janitor_mymsa_subset.txt")



parse_number("$100")
parse_number("80%")
parse_number("it costs $100")

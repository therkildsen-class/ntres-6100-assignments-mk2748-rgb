fship <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Fellowship_Of_The_Ring.csv")
ttow <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Two_Towers.csv")

rking <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Return_Of_The_King.csv")


lotr_untidy <- dplyr::bind_rows(fship, ttow, rking)
lotr_untidy <- base::rbind(fship, ttow, rking)
 

lotr <- bind_rows(fship, ttow, rking)

fship_no_female <- fship |>
  select(-Female)


fship_no_female

fship_no_female <- fship |>
  select(Male, Film, Race)

bind_rows(fship_no_female,ttow,rking)
bind_rows(ttow, fship_no_female, rking)
library(nycflights13) #install.packages("nycflights13")


# Row-binding -------------------------------------------------------------




# Join functions ----------------------------------------------------------


flights
view(flights)


airlines
airports
planes
view(planes)


planes |>
  count(tailnum)



planes |> count(year) 


planes |> count(year) |> tail()

planes |> count(tailnum) |> filter(n>1)
weather


view(weather)

weather |>
  count(time_hour, origin) |> filter(n>1)


planes |>
  filter()

planes |>
  filter(is.na(tailnum))


planes |>
  filter(is.na(speed))



flights2 <- flights |> 
  select(year:day, hour, origin, dest, tailnum, carrier)
flights2


airlines


flights2
flights2 |>
  left_join(airlines)

flights |>
  left_join(weather)

flights |>
  left_join(planes)

flights2 |>
  left_join(planes, join_by(tailnum))


flights2 |>
  left_join(planes, join_by(tailnum), suffix = c("_flight", "_planes"))


flights2
airports

flights2 |>
  left_join(airports, join_by(origin == faa))


airports <- airports |>
  select(faa, name, lat, lon)








library(maps) #install.packages("maps")





library(tidyverse)
#install.packages("gapminder")

library(gapminder)  #install.packages("gapminder")


install.packages("gridExtra")
library(gridExtra)  #install.packages("gridExtra")

flights2 <- flights |>
  select(year:day, hour, origin, dest, tailnum, carrier)

planes
planes_gt100 <- flights2 |>
  group_by(tailnum)




flights
planes_gt100

flights |>
  semi_join(planes_gt100)

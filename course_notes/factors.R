library(tidyverse)

# Intro factors ----------------

x1 <- c("Dec", "Apr", "Jan", "Mar")

x2 <- c("Dec", "Apr", "Jan", "Mar")

sort(x1)
month_levels <- c(
  "Jan", "Feb", "Mar", "Apr", "May", "Jun",
  "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
)



y1 <- factor(x1, levels=month_levels)
sort(y1)


# # Factors in plotting ---------------------------------------------------


#install.packages("gapminder")

library(gapminder)  #install.packages("gapminder")
library(gridExtra) #install.packages("gridExtra")


gapminder
gapminder |>
  count(continent)


head(gapminder) |>
  kable()

gapminder <- gapminder |> 
  rename("life_exp" = lifeExp, "gdp_per_cap" = gdpPercap)

library(dplyr) # install.packages("dplyr")


nlevels(h_gap$country)


library(janitor)

clean_names(gapminder)
gapminder |> 
  filter(country == "Malawi")


top_fertility <- gap_dslabs |> 
  arrange(-fertility) |> 
  head(10)

gapminder |> 
  semi_join(top_fertility)

gapminder |> 
  semi_join(top_fertility, by = "country")

colnames(top_fertility)
colnames(gapminder)

library(dplyr)

top_fertility <- gap_dslabs |> 
  arrange(desc(fertility)) |> 
  head(10)

gapminder |> 
  semi_join(top_fertility, by = "country")


h_gap$country

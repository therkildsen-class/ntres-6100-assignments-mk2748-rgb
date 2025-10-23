library(tidyverse)
library(gapminder)

est <- read_csv('https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/countries_estimated.csv')

gapminder_est <- gapminder |>
  left_join(est)

gapminder <- gapminder |>
  rename("life_exp" = lifeExp, "gdp_per_cap" = gdpPercap)


cntry <- "Belgium"
country_list <- c("Albania", "Canada", "Spain")



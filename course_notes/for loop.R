library(tidyverse)
library(gapminder)

est <- read_csv('https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/countries_estimated.csv')

gapminder_est <- gapminder |>
  left_join(est)

gapminder <- gapminder |>
  rename("life_exp" = lifeExp, "gdp_per_cap" = gdpPercap)


cntry <- "Belgium"
country_list <- c("Albania", "Canada", "Spain")


for (cntry in country_list) {
  gapminder_cntry <- gapminder |>
    filter(country == cntry)
  
  est_cntry <- est |>
    filter(country == cntry)
  
  gapminder_est_cntry <- gapminder_cntry |>
    left_join(est_cntry, by = "country")
  
  plot <- ggplot(gapminder_est_cntry, aes(x = year)) +
    geom_line(aes(y = gdp_per_cap, color = "GDP per Capita")) +
    geom_line(aes(y = estimated_value, color = "Estimated Value")) +
    labs(title = paste("GDP per Capita and Estimated Value for", cntry),
         y = "Value",
         color = "Legend") +
    theme_minimal()
  
  print(plot)
}



print_plot("Iceland")


library(tidyverse)
library(gapminder)
gapminder <- gapminder |>
  rename("life_exp" = lifeExp, "gdp_per_cap" = gdpPercap)
est <- read_csv('https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/countries_estimated.csv')
gapminder_est <- gapminder |>
  left_join(est)



gap_europe <- gapminder_est |>
  filter(continent == "Europe") |>
  mutate(gdp_tot = gdp_per_cap * pop)

print_plot("Iceland")


library(tidyverse)
library(gapminder)


gapminder <- gapminder |> 
  rename("life_exp" = lifeExp, "gdp_per_cap" = gdpPercap)


est <- read_csv('https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/countries_estimated.csv')
gapminder_est <- gapminder |> 
  left_join(est)


cntry <- "Belgium"
country_list <- c("Albania", "Canada", "Spain")


dir.create("figures")
dir.create("figures/europe")

country_list <- unique(gapminder$country)

gap_europe <- gapminder_est |> 
  filter(continent == "Europe") |> 
  mutate(gdp_tot = gdp_per_cap * pop)

country_list <- unique(gap_europe$country)

length(country_list)

cntry <- "Albania"


for (cntry in country_list) {
  
  print(str_c("Plotting ", cntry))
  
  gap_to_plot <- gap_europe |> 
    filter(country == cntry)
  
  my_plot <- ggplot(data = gap_to_plot, mapping = aes(x = year, y = gdp_tot)) +
    geom_point() +
    labs(title = str_c(cntry, "GDP", sep = " "), 
         subtitle = ifelse(any(gap_to_plot$estimated == "yes"), "Estimated data", "Reported data"))
  
  ggsave(filename = str_c("figures/europe/", cntry, "_gdp_tot.png", sep = ""), plot = my_plot)
  
print_plot("Iceland")


country_list <- unique(gap_europe$country)

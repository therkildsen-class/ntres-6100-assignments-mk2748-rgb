library(tidyverse)
fship <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Fellowship_Of_The_Ring.csv")
ttow <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Two_Towers.csv")
rking <- read_csv("https://raw.githubusercontent.com/jennybc/lotr-tidy/master/data/The_Return_Of_The_King.csv")


lotr_untidy <- bind_rows(fship, ttow, rking)

lotr_untidy


lotr_tidy <-
  pivot_longer(lotr_untidy, c(Male, Female), names_to = 'Gender', values_to = 'Words')

write_csv(lotr_tidy, file = "Data/lotr_tidy.csv")
coronavirus <- read_csv('https://raw.githubusercontent.com/RamiKrispin/coronavirus/master/csv/coronavirus.csv')


coronavirus



coronavirus |>
  filter(cases > 0) |> 
  group_by(date, type) |>
  summarize(cases = sum(cases)) |>
  ggplot() +
  geom_col(aes(x = date, y = cases, fill = type))


corona_wide <- coronavirus |> 
  select(date, country, province, type, cases) |> 
  pivot_wider(names_from = type, values_from = cases)


corona_wide
coronavirus |> 
  filter(cases > 0, country == "US") |> 
  ggplot() +
  geom_line(aes(x = date, y = cases, color = type))


coronavirus_ttd <- coronavirus |> 
  group_by(country, type) |>
  summarize(total_cases = sum(cases)) |>
  pivot_wider(names_from = type, values_from = total_cases)
ggplot(coronavirus_ttd) +
  geom_label(mapping = aes(x = confirmed, y = death, label = country))


create_github_token()


usethis

library(gitcreds) # install.packages("gitcreds")

gitcreds_set()

gitcreds::gitcreds_set()

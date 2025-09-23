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
     

view(count(coronavirus,country))   

select(coronavirus, date, country, type, cases)
select(coronavirus, -province)


select(coronavirus, country, lat, long)
longley

select(coronavirus, 1:3)
select(coronavirus, date:cases)


library(tidyverse)
coronavirus <- read_csv('https://raw.githubusercontent.com/RamiKrispin/coronavirus/master/csv/coronavirus.csv')
skim(coronavirus)
library(skimr) 

skim(coronavirus)
select(coronavirus,contains('y'), everything())

filter(coronavirus, country =="US" )
coronavirus_us <-filter(coronavirus, country =="US")
coronavirus_us2 <- select(coronavirus_us, -lat, -long, -province)

coronavirus |>
  filter(country == "US") |>
  select(-lat, -long, -province)

coronavirus|>filter(country =="US") |> select(-lat, -long, -province)


coronavirus |>
  filter (country == "Mexico" | country =="US" | country == "Canada") |>
  filter (date == "2021-09-18")


coronavirus |>
  filter(country %in% c("US", "Canada", "Mexico"),
         type == "death") |>
  select(country, date, cases) |>
  ggplot() + geom_line(mapping=aes(x=date, y=cases, color = country))


vacc <- read_csv("https://raw.githubusercontent.com/RamiKrispin/coronavirus/main/csv/covid19_vaccine.csv")
view(vacc)

max(vacc$date)

vacc |>
  filter(date == max(date)) |>
  select(country_region, continent_name, people_at_least_one_dose, population) |>
  mutate(vaxxrate = round(people_at_least_one_dose / population, 2))


#Summarize --------------


vacc |>
  filter(date == max(date)) |>
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |>
  mutate(doses_per_vaxxed = doses_admin / people_at_least_one_dose) |> 
  ggplot() + 
  geom_histogram(mapping = aes(x = doses_per_vaxxed))


vacc |> 
  filter(date == max(date)) |> 
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |> 
  mutate(doses_per_vaxxed = doses_admin / people_at_least_one_dose)  |>
  ggplot() +
  geom_histogram(mapping = aes(x = doses_per_vaxxed))


vacc |> 
  filter(date == max(date)) |> 
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |> 
  mutate(doses_per_vaxxed = doses_admin / people_at_least_one_dose) |> 
  filter(doses_admin > 200 * 10^6)

vacc |>
  filter(date == max(date)) |>
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |>
  mutate(doses_per_vaxxed = doses_admin / people_at_least_one_dose) |> 
  ggplot() + 
  geom_histogram(mapping = aes(x = doses_per_vaxxed))


vacc |> 
  filter(date == max(date)) |> 
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |>
  mutate(doses_per_vaxxed = doses_admin / people_at_least_one_dose) |>
  filter(doses_admin > 3)
  arrange(-doses_per_vaxxed)
  
  
vacc |> 
  filter(date == max(date)) |> 
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |> 
  mutate(doses_per_vaxxed = doses_admin/people_at_least_one_dose) |>
  filter(doses_per_vaxxed)


vacc |> 
  filter(date == max(vacc$date)) |> 
  select(country_region, continent_name, people_at_least_one_dose, population) |> 
  mutate(vaxxrate = round(people_at_least_one_dose / population, 2)) |> 
  arrange(-vaxxrate) |> 
  filter(vaxxrate > 0.9) |>
  head(5)


vacc |> 
  filter(date == max(date)) |> 
  select(country_region, continent_name, doses_admin, people_at_least_one_dose, population) |> 
  mutate(doses_per_vaxxed = doses_admin / people_at_least_one_dose)  |>
  ggplot() +
  geom_histogram(mapping = aes(x = doses_per_vaxxed))


library(tidyverse)
library(skimr)#install.packages("skimr")
coronavirus <- read_csv('https://raw.githubusercontent.com/RamiKrispin/coronavirus/master/csv/coronavirus.csv')

view(coronavirus)

coronavirus |> 
  filter(type == "confirmed") |> 
  summarize(sum = sum(cases))

coronavirus |> 
  filter(type == "confirmed") |>
  group_by(country) |> 
  summarize(total_cases = sum(cases))

coronavirus |> 
  filter(type == "confirmed") |>
  group_by(country) |> 
  summarize(total_cases = sum(cases),
            n = n()) |>
  arrange(total)

coronavirus |>
  group_by(date, type) |>
  summarize(total = sum(cases))

coronavirus |>
  group_by(date, type) |>
  summarize(total = sum(cases)) |>
  filter(date == "2023-01-01")


coronavirus |> 
  filter(type == "death") |> 
  group_by(date) |> 
  summarize(total_deaths = sum(cases)) |> 
  filter(total_deaths == max(total_deaths))

coronavirus |>
  filter(type == "death") |>
  group_by(date) |>
  summarize(total = sum(cases)) |>
  arrange(-total)

coronavirus |>
  group_by(type) |>
  summarize (cases = sum(cases))

gg_base <- coronavirus |>
  filter(type =="confirmed") |>
  group_by(date) |>
  summarize(total_cases = sum(cases)) |>
  ggplot(mapping=aes(x=date, y=total_cases)) + geom_line()

gg_base + geom_line()

gg_base + geom_point()

gg_base + geom_col(color= "red")

gg_base + geom_area(fill = "red")

gg_base + 
  geom_point(
    color = "purple",
    shape = 17,
    size = 17,
    alpha = 0.1
  )


gg_base + geom_point(mapping = aes(size = total_cases, color = total_cases), alpha = 0.4
) + 
  theme_minimal() +
  theme(legend.background = element_rect(fill = "lemonchiffon", color = "grey50", linewidth= 1))


gg_base + geom_point(mapping = aes(size = total_cases, color = total_cases), alpha = 0.4
) + 
  theme_minimal() + theme(legend.position = "none")


gg_base + geom_point(mapping = aes(size = total_cases, color = total_cases), alpha = 0.4
) + 
  theme_minimal() + labs(x = "date", y= "total confirmed cases", 
                         title = str_c("Daily counts of new coronavirus cases", max(coronavirus$date)),
                         subtitle = "Global sums")


coronavirus |>
  filter(type == "confirmed") |>
  group_by(date, country) |>
  summarize(total = sum(cases)) |>
  ggplot() + 
  geom_line(mapping = aes(x=date, y=total, color=country))


top5 <- coronavirus |>
  filter(type == "confirmed") |>
  group_by(country) |>
  summarize(total= sum(cases)) |>
  arrange(-total) |>
  head(5) |>
  pull(country)

                       
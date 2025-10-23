library(tidyverse)

view(mtcars)

mtcars_6cyl <- mtcars %>%
  filter(cyl == 6)

view(mtcars_6cyl)


library(palmerpenguins) #install.packages("palmerpenguins")
library(tidyverse)


install.packages("palmerpenguins")

view(penguins)

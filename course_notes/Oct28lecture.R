library(tidyverse)

calc_shrub_vol <-function(lenght, width, height =1) {
  area <- lenght * width
  volume <- area * height 
  return(volume)
}

calc_shrub_vol(lenght =0.8, width = 1.6, height= 2)



shrub_volumes <- calc_shrub_vol(0.8, 1.6, 2.0)
shrub_mass <- est_shrub_mass(calc_shrub_vol(0.8, 1.6, 2.0))

calc_shrub_vol(0.8, 1.6, 2.0) |>
  est_shrub_mass()


est_shrub_mass_from_raw <- function(leght, width, height) {
  volume <- calc_shrub_vol(leght, width, height)
  mass <- est_shrub_mass(volume)
  return(mass)
}


convert_pounds_to_grams <- function(pounds) {
  grams <- 453.6 * pounds
  return(grams)
}

convert_pounds_to_grams(3.75)

  library(dplyr)  

  dat <- tibble(
    name = "Anna", 
    word = c("unmarked", "abundance", "sampling", "demographics", "time-to-event", 
             "distribution", "cameras", "population", "elk", "mule deer",
             "Idaho", "R", "Bayesian", "likelihood", "quantitative", "space-to-event",
             "modeling", "survival", "spatiotemporal"),
    importance = c(10, 10, 10, 10, 8, 6, 5, 6, 3, 1, 1, 3, 4, 6, 5, 6, 4, 4, 4)
    )
  
  save(dat, file = "GitHub/LukacsLabWordCloud/data/moeller.RData")
  
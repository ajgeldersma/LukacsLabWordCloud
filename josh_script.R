    #  Josh word cloud script
    require(tibble)
    
    dat <- tibble(
      Name = "Josh",
      Words = c("R", "population", "abundance", "survival", "ratios", 
        "management", "dplyr", "purrr", "tidyr", "shiny", "JAGS", "bayesian",
        "functional programming", ),
      Importance = c(10, 8, 8, 7, 5, 10, 6, 6, 6, 7, 8, 9, 8)
    )
    
    save(dat, file = "~/GitHub/LukacsLabWordCloud/data/nowak.RData")
    
    
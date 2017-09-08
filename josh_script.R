    #  Josh word cloud script
    require(tibble)
    
    dat <- tibble(
      Name = "Josh",
      Words = c("R", "population", "abundance", "survival", "ratios", 
        "management", "dplyr", "purrr", "tidyr", "shiny", "JAGS", "bayesian",
        "functional programming", "mule deer", "elk", "sage grouse", 
        "axis deer", "bighorn sheep", "white-tailed deer", "grizzly bear",
        "black bear", "bobcat", "wolverine", "fisher", "lynx", "fox", 
        "snowshoe hare", "mountain lion", "Idaho", "South Dakota", "Montana", 
        "bison", "Arizona", "Washington", "N-mixture", "mark-recapture",
        "Speedgoat", "USGS", "USFS", "NPS", "IPM"
      ),
     freq = 1
    )
    
    save(dat, file = "~/GitHub/LukacsLabWordCloud/data/nowak.RData")
    
    
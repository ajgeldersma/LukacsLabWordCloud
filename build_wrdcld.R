    #  Wordcloud creation script
    #  Josh Nowak
    #  09/2017
################################################################################
    #  Packages
    require(wordcloud2)
    require(wordcloud)
    require(tidyverse)
################################################################################
    #  Repo data folder
    # setwd(
    #   file.path(
    #     "C:/Users/",
    #     Sys.info()["login"],
    #     "Documents/GitHub/LukacsLabWordCloud/data"
    #   )
    # )
    
    #  Function to load each data set
    loaded <- function(x){
      #  Read
      tmp <- get(load(x))
      
      #  Set column names
      colnames(tmp) <- c("name", "word", "freq")
      
      #  Force class
      out <- tmp %>%
        transmute(
          name = as.character(name),
          word = as.character(word),
          word = word,
          freq = as.integer(freq)
        ) %>%
        mutate(
          word = replace(word, word == "time to event", "time-to-event"),
          word = replace(word, word == "bayesian", "Bayesian"),
          word = replace(
            word,
            word %in% tolower(state.name),
            state.name[word[word %in% tolower(state.name)] == tolower(state.name)]
          )
        )
      
    return(out)
    }
    
    #  Call function on each of the .RData objects in the folder
    files <- list.files(path = paste(here::here(), "data", sep = "/"), pattern = ".RData$", full.names = T)
    wrd_dat <- map_df(
      files,
      loaded
    ) %>%
    count(word) %>%
    rename(freq = n)
    
################################################################################
    #  Build wordcloud using wordcloud2 htmlwidget
    wordcloud2(wrd_dat, size = 1, minRotation = -pi/2, maxRotation = -pi/2)
    
    #  Build it again this time creating a PNG suitable for high res
    png(
      "C:/Users/josh.nowak/Documents/Lab/word_cloud_img.png", 
      height = 10, 
      width = 17, 
      units = "in", 
      res = 1600
    )
    wordcloud(
      wrd_dat$word, 
      wrd_dat$freq + runif(nrow(wrd_dat), 0, 2), 
      min.freq = 0, 
      rot.per = .4,
      colors = c("#1E90FF", "#336292", "#5D6063", "#070A41", "#DC143C", "000000"),
      random.order = T,
      random.color = T
    )
    dev.off()
    
    
    
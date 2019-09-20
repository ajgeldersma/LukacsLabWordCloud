#  Gus word cloud script
require(tibble)

dat <- tibble(
  Name = "Gus",
  Words = c("abundance", "camera trap", "ratios", "TRI", "sightability",
            "distance sampling", "mule deer", "white-tailed deer", "elk",
            "field work"
  ),
  freq = 1
)

save(dat, file = "C:/Users/ag236526/Documents/GitHub/LukacsLabWordCloud/gus.RData")

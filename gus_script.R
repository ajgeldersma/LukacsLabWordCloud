#  Gus word cloud script
require(tibble)

dat <- tibble(
  Name = "Gus",
  Words = c("Abundance", "Camera Trap", "Ratios", "TRI", "Sightability",
            "Distance Sampling", "Mule Deer", "White-tailed Deer", "Elk",
            "Field Work"
  ),
  freq = 1
)

save(dat, file = "C:/Users/ag236526/Documents/GitHub/LukacsLabWordCloud/gus.RData")

### Density estimation for continuous variables ###
library(tidyverse)
library(MASS)

?faithful
view(faithful)
attach(faithful)
#The rule of thumb
(max(eruptions) - min(eruptions)) / (2 * (1 + log(length(eruptions), base = 2)))

#But this produces too much bumpy a fit A bandwidth of 0.6 looks much better
par(mfrow = c(1,2))            
hist(eruptions, 15, freq = FALSE, main = "Histogram of Wyoming Eruptions", col = heat.colors(6))
lines(density(eruptions, width = 0.6, n = 200))
truehist(eruptions, nbins = 15, col = terrain.colors(6), main = "True hist of Wyoming Eruptions")
lines(density(eruptions, n = 200))
dev.off() #clear plots 

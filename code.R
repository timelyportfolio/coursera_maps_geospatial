#  data manually entered
#   source:  http://www.fhwa.dot.gov/index.cfm
roads <- data.frame(
  year = c(rep(1944,6),rep(2013,6))
  ,type = rep(c(rep("Rural",3),rep("Urban",3)),2)
  ,owner = rep(c("State","Local","Federal"),4)
  ,miles = c(6391,53125,318,566,0,0,8753,67115,817,2149,22351,654)
)

library(ggplot2)

ggplot( roads, aes( x = factor(year), y = miles, group = owner ) ) +
  geom_bar( stat = "identity" ) +
  facet_wrap( ~type ) +
  xlab( "Year" ) +
  ylab( "Miles" )

library(gridSVG)
library(pipeR)
library(XML)

grid.export( name=NULL )$svg %>>% saveXML

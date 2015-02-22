#ggplot learning script

# Pedro Rodrigues
# SWC February 2015

#ggplot2 is a "grammar for graphics"
#it is more powerful than other tools

library("ggplot2")
library("reshape2")
library("ggthemes")
library("plyr")

#telling ggplot how to map data
myplot <- ggplot (data = iris, aes(x = Sepal.Length, y = Sepal.Width))

summary(myplot)

#making geom_point how to graph the data
myplot+geom_point()

#the complete vector can be also written as
myplot <- ggplot (data = iris, aes(x = Sepal.Length, y = Sepal.Width))+geom_point()

#therefore the vector when called will plot the graph
myplot

#if you want to change the size point and color by category
ggplot (iris, aes(Sepal.Length, Sepal.Width, color=Species))+geom_point(size = 3)

#adding shape to the points
ggplot(iris, aes(Sepal.Length, Sepal.Width, color=Species))+geom_point(aes(shape = Species), size = 3)

#doing a random sample from a datase
## the dim function selects the first column, sample 1000 times
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]

#plotting the random data from above
ggplot(d2, aes(carat, price, color = color))+geom_point()

#loading a new library for stats and plotting data in blox plots

library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()



###########Chapter 4: Apply Functions############

my.matrix <- matrix(c(1:10, 11:20, 21:30), ncol = 3); my.matrix

#2.1.1 Using apply to find row sums 
apply(my.matrix, 1, sum) 

#2.1.2 Creating a function in the arguments 
apply(my.matrix, 2, length)

apply(my.matrix, 2, function(x) length(x) - 1)

#2.1.3 Using a function defined outside of apply
str.err <- function(x){
  sd(x)/sqrt(length(x))
}
apply(my.matrix, 2, str.err)

#2.1.4 Transforming data
my.matrix2 <- apply(my.matrix, 1:2, function(x)x + 3); my.matrix2

#2.1.5
vec <- c(1:10); vec
apply(vec, 1, sum)

##### 3 lapply, sapply, and vapply

#3.0.1 Getting started with lapply 
lapply(vec, sum)

A <- c(1:9)
B <- c(1:12)
C<-c(1:15)
my.list<-list(A,B,C)
lapply(my.list, sum)
 
#3.0.2 Sapply
sapply(vec, sum)
sapply(my.list, sum)

#3.0.3 Vapply
vapply(vec, sum, numeric(1))
vapply(my.list, sum, numeric(1))

vapply(my.list, function(x) x+2, numeric(1))

#3.0.4 Transforming data with sapply
my.list2 <- sapply(my.list, function(x) x*2); my.list2

##### Tapply

#4.0.1 Means split by 
tdata <- as.data.frame(cbind(c(1,1,1,1,1,2,2,2,2,2), my.matrix))
colnames(tdata)

tapply(tdata$V2, tdata$V1, mean)

#4.0.2 Combining functions 
summary <- tapply(tdata$V2, tdata$V1, function(x) c(mean(x), sd(x))); summary


##### Mapply

#5.0.1  Understanding mapply
mapply(rep, 1:9, 9:1)

#5.0.2 Creating a new variable
tdata$V5 <- mapply(function(x, y) x/y, tdata$V2, tdata$V4); tdata$V5

#5.0.3 Saving data into a premade vector
new.vec <- vector(mode = "numeric", length = 10)
new.vec <- mapply(function(x, y) x*y, tdata$V3, tdata$V4); new.vec

##### 6 Using apply functions on real datasets

install.packages("MASS")
library(MASS)

data(state)

head(state.x77)
str(state.x77)

#6.0.1 Using apply to get summary data 
apply(state.x77, 2, mean)

#6.0.2 Saving the results of apply
state.summary <- apply(state.x77, 2, function(x) c(mean(x), sd(x))); state.summary
state.range <- apply(state.x77, 2, function(x) c(min(x), median(x), max(x))); state.range

#6.0.3 Using mapply to compute a new variable
population <- state.x77[1:50]
area <- state.area
pop.dens <- mapply(function(x, y) x / y, population, area); pop.dens

#6.0.4 Using tapply to explore population by region
region.info <- tapply(population, state.region, function(x) c(min(x), median(x), max(x))); region.info

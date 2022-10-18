library(tibble)
#DATA STRUCTURES

## VECTORS

mi_vector <- c(1, 8, 5, 10)
mi_vector
class(mi_vector)

mi_vector2 <- 4:155
mi_vector2
length(mi_vector2)

mi_vector3 <- vector("logical", length = 14)
mi_vector3

hola <- c("hola", "como", "estamos")
hola

mixto <- c(1, "perro", 4, 7, 2)
mixto

d <- c(7, 1)
is.vector(d) #Data structure

is.numeric(d) #Data type 

is.character(d)

is.character(mixto)

h <- c(4, 7, 3, NA, 65, 2) #I WANT ASK TO FIND 
h

is.na(h)

mean(c(4, 8))

################ EJERCICIO ##################
zinc <- c(3, 5.8, 5.6, 4.8, 5.1, 3.6, 5.5, 4.7, 5.7, 5, 5.9, 5.7, 4.4, 5.4, 4.2, 5.3, NA)

mean(zinc) #[1] >NA [1] 4.98125
mean(zinc, na.rm = TRUE)  #Mean >  0.8320407

sd(zinc) #[1] NA
sd(zinc, na.rm = TRUE) #Standard deviation: [1] 0.8320407

median(zinc, na.rm = TRUE) #Median [1] 5.2

zinc <- zinc[!is.na(zinc)] #Remove elements from vector 

sort(zinc) #Sort the elements of the vector

summary(zinc)

boxplot(zinc)

hist(zinc) #Histogram 

plot(density(zinc), col = "blue") #density 

c(1:10, 8, 9, 89, 0)

c(c(1:10, 8, 9, 89, 0),800)

rep(3, 10)

rep(c(4, 6, 1), times = 3)

rep(c(4, 6, 1), each = 3)

seq(-2, 4, length = 7)

seq(-2, 4, by  = 0.5) #From -2 to 4 in 0.5 steps  

x <- 11:18
x[3]
x[3:6]

x[2] <- 1000 

rev(x) #Reverse 

x[x > 14 & x < 18] 

is.element(13, x)


#DATAFRAMES 

x <- 10:1

y <- -4:5

q <- c("Hocker", "Football", "Baseball", "Curling", "Rugby", "Lacrose", "Basketball", "Tennis", "Cricket", "Soccer")

length(x)
length(y)
length(q)

mi_tabla <- data.frame(x, y, q)
View(mi_tabla)

mi_tabla <- data.frame(columa1 = x, columna2 = y, deportes = q)

class(mi_tabla)

mi_tabla[1:5,]

mtcars
?mtcars

mtcars[1:10,]

mtcars[,5:7]

colnames(mtcars)
colnames(mi_tabla) 

#Advanced queries
mtcars$cyl  #Prints all cyl columns

mtcars[mtcars$cyl == 8,] #Terms with 8 cylinders

mtcars[mtcars$hp > 200,] #Terms whose hp is greater than 200

nrow(mtcars[mtcars$hp > 200,]) / nrow(mtcars) * 100 # %of vehicles whose hp is greater than 200

head(mtcars) #First 6 terms 
tail(mtcars) #Last 6 terms 

ncol(mtcars) #Number of columns

dim(mtcars) #Number of rows, number of columns

mtcars
mtcars[1, 1] #Element at row 1, column 1
mtcars[,c(1, 5)] #Columns 1 and 5
mtcars[c(2, 7, 23),] #Rows 2, 7, and 23

mtcars[,] #All elements 

mtcars[, c("mpg", "cyl")] #mpg and cyl columns. 

mtcars2 <- tibble::rownames_to_column(mtcars, "Model") #Transform to the model column 
mtcars2

mtcars2[mtcars2$Model == "Datsun 710",] #Seek information about the Datsun 710 model in mtcars2 data frame

#LISTS
#Data structures that stores multiple data structures i.e. it can store data frames, matrices, vectors, and even o
#other kinds of lists. 

list0 <- list(1, 6, 10)
list1 <- list(c(1, 6, 10))
list2 <- list(c(1, 4, 6), c(3:8))
list3 <- list(mtcars, 1:10)

names(list3) <- c("mi tabla", "mi vector") #Assign a name to each element in the list

list4 <- list(caballo = 1:10, pavo = mtcars) #Assign a name to each element in the list 

names(list4) #Retrieve the names of each element in the list

emptyList <- vector(mode = "list", length = 4) #Creating an empty list
emptyList[[3]] <- c(4, 6, 987) #Assign a value to the position 3 

list3[1]
list3[2]
list3[[1]][,1] #From the element [1] in list 3, show the values in the first column. 

list3$`mi tabla`[list3$`mi tabla`$mpg == 21,] #From "mi tabla" in list 3, show all elements whose mpg is exactly 21

length(list3) #Compute the number of elements in list3 


## MATRICES 
A <- matrix(c(1:10), nrow = 5) #Matrix that stores values from 1 to 10 in 5 rows
B <- matrix(c(21:40), nrow = 2) #Matrix that stores values from 21 to 40 in 2 rows 
C <- matrix(c(21:30), nrow = 5) #Matrix that stores values from 21 to 30 in 5 rows 
nrow(A) #Number of rows in "A" Matrix
nrow(B)
nrow(C)
nrow(mtcars) #nrow function works on data frames as well. 

ncol(A) #Number of columns in "A" Matrix
ncol(B)
ncol(C)
ncol(mtcars)

dim(A) #dimension of matrix "A", which is 5 x 2

A + C
A * C #Product element by element
A[1, 2]
A <- matrix(1:9, nrow = 3, byrow = TRUE) #Fills matrix by row
A <- matrix(1:9, nrow = 3) #Fills matrix by column

a <-c(4, 5, 4)
b <-c(3, 4, 4)
d <-c(8, 7, 7)

B <- rbind(a, b, d) #Generates a matrix from 3 vectors

AB <- A %*% B #Matrix product

t(AB) #Transpose of Matrix AB

punto_medio <- function(x, y) {
  print((x + y) %% 2)
}
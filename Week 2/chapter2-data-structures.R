###########Chapter 2: Data Structures############

###########2.1 Vectors 
#A vector is a set of basic values of the same type

x <- c(3, 5, 7)
y <- c(8, 9)
c(x, y) #Combines vectors x and y in the same order as it was declared
z <- c("hola", "adios")


#2.1.1 Sequence generation

x <- 1:5 #Generates a sequence of numbers from 1 to 5
seq(1, 5, 0.5) #Generates a sequence of numbers from 1 to 5 in steps of 0.5 units
seq(from = 1, to = 5, length = 9) #Generates a sequence of 9 numbers from 1 to 5
rep(1, 5) #Repeat five times the first argument


#2.1.2 Random sequence generation
sample(1:6, size = 10, replace = T) #Throw a dice 

#To simulate a coin toss, we write: 
result <- c(head = 1, tail = 0) 
print(result)
class(result)
attributes(result)
names(result)
toss <- sample(result, size = 10, replace = T)
table(toss)

#Other examples
rnorm(n = 10)
runif(n = 15, min = 2, max = 10)


#2.1.3 Selection of elements from a vector
x <- seq(-3, 3, 1) 
x[1] #First element

ii <- c(1, 5, 7)
x[ii] #Positions 1, 5, and 7

ii <- x > 0; ii

x[ii] #only positive values

ii <- 1:3 
x[-ii] #Elements of x, except the 3 first elements


#2.1.4 Sorting of vectors

x <- c(65, 18, 59, 18, 6, 94, 26)
sort(x)
sort(x, decreasing = TRUE)

#Another way is to use a sort index
ii <- order(x) #Sort index
x[ii] #Values sorted 

#The rev() function return the values in reverse order
rev(x)


#2.1.5 Missing values
heights <- c

#Any arithmetic operation perfomed over a vector that stores at least 1 NA will lead to anoter NA as a result
mean(heights)

#To force R to ignore the missing values, use the option: 
mean(heights, na.rm = TRUE)

5 / 0 #Infinite 

log(0) #-Infinite 

0 / 0 #Not a Number 


#2.1.6 Non-numeric vectors
a <- c("A Coruna", "Lugo", "Ourense", "Pontevedra")
letters[1:10] #First 10 letters of the alphabet 
LETTERS[1:10] #The same in capital letters
month.name[1:6] #First 6 months of the year in english


#2.1.7 Factors 
sexo <- c(0, 1, 1, 1, 0, 0, 1, 0, 1)
table(sexo)

sexo2 <- factor(sexo, labels = c("hombre", "mujer")); sexo2
levels(sexo2) #Returns the levels of a factor 
unclass(sexo2) #Underlying representation of the factor 
table(sexo2)
  
answers <- factor(c('yes', 'yes', 'no', 'yes', 'yes', 'no', 'no'))
answers <- factor(c('yes', 'yes', 'no', 'yes', 'yes', 'no', 'no'), levels = c('yes', 'no'))


###### 2.2 Matrices and arrays

#2.2.1 Matrices 
x <- c(3, 7, 1, 8, 4)
y <- c(7, 5, 2, 1, 0)
cbind(x, y) #by columns
rbind(x, y) #by rows 

matrix(1:8, nrow = 2, ncol = 4) #It's the same as matrix(1:8, nrow = 2)

matrix(1:8,nr = 2, nc = 4)

matrix(1:8, nr = 2, byrow = TRUE)


#2.2.2 Names in matrices 
x <- matrix(c(1, 2, 3, 11, 12 ,13), nr = 2, byrow = TRUE)
rownames(x) <- c("row 1", "row 2")
colnames(x) <- c("colmun 1", "column 2", "oolumn 3")
x

colnames(x) <- paste("col", 1:ncol(x), sep = " ")
rownames(x) <- paste("row" ,1:nrow(x), sep = " ")

dim(x)
attributes(x)


#2.2.3 Access to the elements of a matrix
x <- matrix(1: 6, 2, 3); x
x[1, 1]
x[2, 2]
x[2,] #second row
x[, 2] #second column 
x[1, 1:2] #first row, columns 1 & 

#2.2.4 Sorting by rows and columns 
x <- c(79, 100, 116, 121, 52, 134, 123, 109, 80, 107, 66, 118)
x <- matrix(x, ncol = 4, byrow = T); x

ii <- order(x[, 1])
x[ii, ] #sorting column 1 

ii <- order(x[, 4]); x[ii, ] #sorting column 4 


#2.2.5 Operations with matrices and arrays
x <- matrix(1:6, nc = 3); x
t(x) #matrix transpose
dim(x) #dimentions of the matrix


#2.2.6 Inversion of a matrix
a <- matrix(c(2, 4, 0, 2), nr = 2); a
B <- solve(a);  #inverse matrix 
a %*% B #Check if it's correct 


##### 2.3 Data frames   
product <- c("juice", "cheese", "yogurt")
section <- c("drinks", "dairy", "dairy")
units <- c(2, 1, 10)
x <- cbind(product, section, units); x
class(x)
shopping.list <- data.frame(product, section, units)
class(shopping.list)
shopping.list
shopping.list$units
shopping.list[, 3] #equivalently
shopping.list$section
shopping.list$units[1:2] # first two unit values 
shopping.list[2,] #Second row

summary(shopping.list)


##### 2.4 Lists 
x <- c(1, 2, 3, 4)
y <- c("hombre", "mujer")
z <- matrix(1:12, ncol =4)
data <- list(A = x, B = y, C = z); data

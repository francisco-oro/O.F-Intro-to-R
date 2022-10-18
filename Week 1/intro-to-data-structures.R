x <-6 
y <- "Hola"

class(x)
class(y)

#Data structures 

#Vectors

s <- c(1, 6, 8 ,10)
s

#Dataframes 
tabla <- data.frame(x = 1:10, y = 11:20)

#Lists
list1  <- list(x = tabla, y = s)

#Matrices
?matrix
mdat <- matrix(c(1, 2, 3, 11, 12, 13), nrow = 2, ncol = 3, byrow = TRUE, dimnames = list(c("row1", "row2"), c("C.1", "C.2", "C.3")))

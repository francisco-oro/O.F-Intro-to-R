## FUNCTIONS
ncol(mtcars)
summary(mtcars)
min(mtcars$mpg)

ladrar <- function(){
  print("Wauuuw")
}
paste("Hola", "Ximena")

saludar <- function(nombre = "Luis") {
  paste("Hola", nombre)
}

saludar(nombre = "Ximena")

saludar()

programando <- function(persona) {
  paste(persona, "esta programando", "traele un cafe")
}
programando(persona = "Jorge")



superOperacion <- function(x, u, t) {
  resultado <- (x * u) / t  #Assign variable locally
  resultado <<- (x * u) / t #Assign variable globally
  return(resultado)
}
superOperacion(x = 5, u = 7, t = 10)



getColumn <- function(table, column) {
  print(table[,column])
}

getColumn(table = mtcars, column = 5)

getRows <- function(table, limit) {
  result <<- table[1:limit,]
  print(result)
}

getRows(table = mtcars, limit = 10)


## "Apply" Functions 
mtcars

mean(mtcars$mpg)
mean(mtcars$cyl)

result <- data.frame()
avrg <- c()
for (u in colnames(mtcars)) {
  avrg <- c(avrg, mean(mtcars[, u]))
}

result <- rbind(avrg, result) #Building a data frame to store the results

colnames(result) <- colnames(mtcars)

#apply

apply(mtcars, MARGIN = 1, median) #If margin == 1, the operation will be performed on the rows. If 2, it will be performed on columns

myMatrix <- matrix(1:9, nrow = 3, ncol = 3)
apply(myMatrix, MARGIN = 2, mean) #If margin == 2, the operation will be performed on the columns.

#lapply
list1 <- list(a = 1:10, b = 11:20)
lapply(list1, mean) #Returns a list for the result 
class(lapply(list1, sum))


#sapply

s <- list(a = 1:10, b = 11:20)
sapply(list1, mean) #Returns a vector for the result 

#tapply 
#Must be evoked over a data frame
tapply(mtcars$mpg, mtcars$cyl, mean) #Returns the mean of mpg, sorted by number of cylinders 

tapply(mtcars$mpg, mtcars$cyl, sum) #Returns the sum of mpg, sorted by number of cylinders

#mapply

mapply(function(x, y){x * y}, x = 5, y = 20) #(function to be executed, arguments)

mapply(summary, mtcars) #mapply executes a given function with the given arguments  

summary(mtcars) 

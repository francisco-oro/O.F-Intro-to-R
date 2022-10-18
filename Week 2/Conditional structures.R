##### Control Structures 

install.packages("tidyverse")
install.packages("magrittr")
library(tidyverse)
library(magrittr)
x <- 10
if (x == 9) {
  print("This will be executed if the condition turns out to be true")
} else { 
  print("This will be executed if the contition turns out to be false")
}

name <- "Yoni"

if (name == "Yoni") {
  print("Hi, dog Yoni")
} else {
  print("Where is the dog Yoni?")
}

x <- 6
if (!is.numeric(x)) {
  print("This is a number")
} else {
  print("This is not a number")
}

!TRUE
!FALSE

Y <- "Yoni"
if (is.character(Y)) {
  print("This is a string")
} else {
  print("This is not a string")
}

#ifelse

ifelse(name == "Yoni", "Hi, dog Yoni", "Where is the dog Yoni?")

mtcars %>%
  transform(wt = ifelse(wt >  3.5, "Heavy vehicle", "light vehicle"))


## SWITCH

val <- switch (4,
  "Geeks1",
  "Geeks2",
  "Geeks3",
  "Geeks4",
  "Geeks5"
)

val1 <- 6
val2 <- 8 
val3 <- "h"
result <- switch (
  val3,
  "s" = paste("Sum = ", val1 + val2 ),
  "r" = paste("Substraction = ", val1 - val2 ),
  "d" = paste("Division = ", val1 / val2 ),
  "m" = paste("Multiplication = ", val1 * val2 ),
  "mo" = paste("Module = ", val1 %% val2 ),
  "p" = paste("Power= ", val1 ^ val2 ), 
  "This operation is not defined"
)
result 

use.switch <- function(x){
  switch(x, 
    "a" = "JAJAJA",
    "e" = "JEJEJE",
    "That laugh is not defined"
  )
}

use.switch("a")
use.switch("e")
use.switch("o")

mathematical_operation <- function(operation, x, y){
  switch(operation, 
    "perro" = x  + y, 
    "gato" = x - y,
    "caballo" = x * y, 
    "unicornio" = x / y, 
    "This operation is not defined"
    )
}
mathematical_operation("perro", x = 10, y = 5)

master_function <- function(operation, val1, val2){  
  switch (
    operation,
    "s" = paste("Sum = ", val1 + val2 ),
    "r" = paste("Substraction = ", val1 - val2 ),
    "d" = paste("Division = ", val1 / val2 ),
    "m" = paste("Multiplication = ", val1 * val2 ),
    "mo" = paste("Module = ", val1 %% val2 ),
    "p" = paste("Power= ", val1 ^ val2 ), 
    "This operation is not defined"
)}
master_function("d", val1 = 10, val2 = 2) 

#for loop 

for (i in 1:100) {
  print(i)
} 

nombres <-c("Juan",
            "Anita Gutierrez",
            "Gerry",
            "Daniela",
            "Carlos",
            "Anabel", 
            "Grecia",
            "Saul el canelo A.")
for(j in nombres) {
  print(j)
}

x <- 0 
for(i in 1:100){
  x <- x + i 
  print(x)
}

for(col in colnames(mtcars)){
  print(col)
  print(mtcars[, col])
  print("  ")
}

for(i in c("Primero", "Segundo", "Tercero")){
  for(j in c("a", "b", "c")){
    print(paste(i, j, sep = " - "))
  }
}

#while 
x <- 0 
while(x < 100){
  x <- x + 1
  print(x)
}

while(TRUE){
  x <- x + 1
  print(x)
  if(x > 100){
    break
  }
}

#Design a while that activates a sismic alert in a case such that the frecuence "a" recieved is greater than 99

frecuency <- 0
registers <- c()
while(frecuency <= 99){
  print(paste("Stable frecuency. Frecuency: ", frecuency))
  frecuency <- rnorm(n = 1, mean = 95, sd = 1)
  
  if(frecuency > 99){
    print("Let's run!")
  }
  registers <- c(registers, frecuency)
}
frecuency
length(registers)

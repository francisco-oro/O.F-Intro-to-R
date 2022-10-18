#TAREA: ESTRUCTURAS DE DATOS

#1) Declara un vector que contenga 6 valores con tipo de dato logical
vector1 <- vector(mode = "logical", length = 6)


#2) Declara un vector que sea una secuencia que inicie en 100 y termine en 130
# que vaya incrementando de 0.1 en 0.1.
vector2 <- seq(100, 130, by = 0.1)


#3) Declara un dataframe que contenga las columnas "Edad" (tipo de dato numerico)
# Genero (Tipo de dato factor) y correo electronico (tipo de dato character) y asignale 
# 3 rengolnes con valores
edad <- c(43, 47, 59)
genero <- factor(c("Hombre", "Mujer", "No espeficicado"))
email <- c("Curabitur.egestas.nunc@nonummyac.co.uk", "posuere.vulputate@sed.com", "libero@convallis.edu")
datos <- data.frame(Edad = edad, Genero = genero, Correo = email)


#4) filtra los rengoles del dataframe mtcars que cumplan la condicion que en la columna
# wt sea mayor a 2 y ademas que cyl sea igual a 8
mtcars2 <- mtcars[mtcars$wt > 2 & mtcars$cyl == 8,]
print(mtcars2)


#5) Crea una lista vacia de longitud (lenght) 6. 
#Hint. En el video de listas viene como hacerlo
nullList <- vector(mode = "list", length = 6)


#6) Declara dos matrices con valores numericos y realiza multiplicacion matricial
#entre ellas.

A <- matrix(c(4, 5, 7, 2), nrow = 2, byrow = TRUE)
B <- matrix(c(3, 6.1, 7.2, 3.6), nrow = 2, byrow = TRUE)
AB <- A %*% B
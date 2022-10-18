#Alumno: Francisco Abimael Oro Estrada
#1) if {} else {}
### Crear un if else que evalue si un numero es mayor a 100, si es asi, entonces
### que imprima en consola "Numero muy grande, el numero es: (Aqui poner el numero)"
### y si el numero es menor o igual a 100, entonces que imprima "Numero adecuado"

x <- 29
if(x > 100){
  print(paste("Numero muy grande, el numero es: ", x))
} else {
  print("Numero adecuado")
}


#2) ifelse()
### Hacer lo mismo que en el punto anterior, pero ahora con la funcion ifelse()

x <- 802
ifelse(x > 100, print(paste("Numero muy grande, el numero es: ", x)), print("Numero adecuado"))
#3) Switch
### Hacer una funcion a la que le pases como argumento el nombre de una operacion (inventada)
### y que realice el proceso. Ejemplo mis_operaciones(operacion = "gallina", x = 6, y = 4) 
### y de como resultado: (6*4) - 6 = 18 (Es solo un ejemplo)
### Hint. Revisar el video de Switch

operacionMagica <- function(operacion, x, y){
  switch(operacion, 
    "p" = print(3 * x - 5 * y),
    "n" = print(1/x ^ 2 - 2 * y), 
    "m" = print(25*x %% 9*y), 
    "u" = print(69 / x * 6*y),
    print("Operacion desconocida")
  )
}

#4) for loop
### Crear un for loop que sume del numero 500 al 1000
suma <- 0 
for (i in 500:1000) {
  suma <- suma + i
};suma

#5) While
### Crear un while que se ejecute mientras x > 200, tomando como valor inicial x <- 1000
### y que disminuya en una unidad en cada iteracion hasta que llegue al 200 y se rompa
### el while
x <- 1000 
while(x > 200){
  x <- x - 1
  print(x)
}
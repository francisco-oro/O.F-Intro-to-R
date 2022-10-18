#Subsetting vectors
x <- sample(c(rnorm(20), rep(NA, 20))) #Vector x st ores 20 random numbers and 20 NA's
x[1:10] #First 10 elements of vector x

y <- x[!is.na(x)]
y > 0
y[y > 0]
x[x > 0]

x[!is.na(x) & x > 0]

x[0]
x[300] #These values are outside the scope of vector x
x[c(3, 5, 7)] #Return the values regarding each index of the vector.

x[c(2, 10)] #Return the values in the second and tenth positions 
x[c(-2, -10)] #Return all the values, except the second and tenth positions 
x[-c(2, 10)] #Return all the values, except the second an tenth positions 

vect <- c(foo = 11, bar = 2, norf = NA)
names(vect) #Show the names declared for each number in the vector 

vect2 <- c(11, 2, NA)
names(vect2) <- c("foo", "bar", "norf") #Assign a name to each value

identical(vect, vect2) #Query if those vectors are identical 

vect["bar"] #Show the "bar" elements

vect[c("foo", "norf")] #Show the "foo" and "norf" elements

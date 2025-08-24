v1 <- c(1,2,3,4,5)
v2 = c("red",'green','yellow')
print(v1)
print(v2)
class(v1)
length(v1)
#numerice vector:
x<-c(0.5,0.6)
typeof(x)
class(x)
#logical:
x<-c(T,F)
class(x)
#integer
x<-c(1L)
typeof(x)
x<-c('mahadi','raisa')
typeof(x)
#complex:
x<-c(3+3i,4+45i,6+69i)
length(x)
class(x)
#character
y<-c('mahadi')
z=c('raisa')
mixed_vector=c(y,z) #it has coerced the two vectors.
print(mixed_vector)
#numeric vector:
num <- 1:5
print(num)
class(num)
#character vector:
num1<- letters[1:26]
print(num1)
#factor vector: #A factor vector is a special type of vector in R used to represent categorical data. It stores factors as integers with labels.
facot = as.factor(num1)
print(facot)

#mixing objects:
y<-c(1:10.5,"a") #character
print(y)
class(y)
y<-c(T,10.6) #numeric
print(y)
class(y)

#explicit coercion:
x<-c(1:6)
print(x)
class(x)
as.character(x)
as.complex(x)
as.logical(x)
as.numeric(x)

#if R can't figure out how to coerce an onject, this may result in NAs being produced.
x<-c('a','b','c')
class(x)
as.numeric(x)
as.logical(x)
as.complex(x)

#attributes:
x<-1
attributes(x)

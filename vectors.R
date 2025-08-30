v1 <- c(1,2,3,4,5)
v2 = c("red",'green','yellow')
print(v1)
print(v2)
class(v1)
length(v1)
#numeric vector:
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

#printing multiple vectors together:
m<-c(12,2,3)
v<-c(13,4,5)
c<-c(12,4,5)
v;c;m

#if there are elements of different class in a vector
me<-c("mahadi","DU",21)
me #R converts every element into a character
marriage<-c(F,4)
marriage #in this case R converts every element into a number

#a vector with odd values
odd<-seq(1,20,2)
odd

#a vector with even values
even<-seq(2,20,2)
even

#creating a vector with 10 odd values starting 20
odd_val<-seq(from=21,by=2,length.out=10)
odd_val

#creating a vector with 10 even values starting 20
even_val<-seq(from=20,by=2,length.out=10)
even_val

#naming vectors using names() function
temperature<-c(24,26,28,30,24,25,22)
temperature
days<- c('sunday','monday','tuesday','wednesday','thursday','friday','saturday')
names(temperature)<-days
temperature
#another way
roll<-seq(1,10)
names(roll)<-paste0("number",1:10)
roll

#basic operations in vector
v1<-c(1,2,3,4,5)
v2<-c(6,7,8,9,10)
#summations
v1+v2
#subtraction
v1-v2
#multiplication
v1*v2
#division
v1/v2

#some built in functions
sum(v1) #sums the elements
sd(v1) #determines the standard deviation
var(v2) #determines the variance
prod(v2) #multiplies all the elements
max(v1) #returns the maximum value
min(v2) #returns the minimum value

#comparing vectors using comparison operator
v1<v2
v1>v2
v1!=v2
v1==v2

v1>3

#vector slicing and indexing
temperature<-c(24,26,28,30,24,25,22)
temperature
days<- c('sunday','monday','tuesday','wednesday','thursday','friday','saturday')
names(temperature)<-days
temperature

#1.indexing with names
temperature[c('monday')]

#2.indexing with names
temperature[[3]]

#3.using logical position
temperature[c(T,F,T,F,T,F,T)]

#4.using exclude position method
temperature[c(-2)]

#5.using comparison operator
temperature[temperature<26] #all the values below 26.
#or
filter<-temperature<26
temperature[filter]

#length of a vector
len<-length(temperature)
len
temperature[3:len]
temperature[(len-3):len]

#to omit any value
names<-c(23,4,5,5,6,2,3)
na.omit(names[names<5])

#to find any multiple of any value
temperature%%3==0 #will return logical ans
temperature[(temperature%%3)==0] #will return values

#in case there are missing values
age1<-c(12,13,14,NA,45,77) #if we used NA in the  "" it will turn the whole vector into a character set.
age1
sum(age1) #will return error or NA because there is a missing value in the vector
#as a result we must omit this character value
sum(age1, na.rm = T)


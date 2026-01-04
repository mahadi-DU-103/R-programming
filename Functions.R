  c squares <- function(x)
{
  for (i in 1:x){
    b <-i^2
    print(b)
  }
}
squares(5)

#simple functions, no inputs:
hw <- function(){
  cat("Hello World.")
}
hw()

#function with single input:
hello_name<-function(name){
  print(paste("hello",name))
}
hello_name("Mahadi")
#or
hello_name<-function(name="mahadi"){
  cat("my name is",name)
}
hello_name()

#function to add two numbers:
add_num<-function(a,b){
  print(paste("the sum of",a,"and",b,"is",a+b))
}
add_num(200,30)
#add number to a vector:
add_num(c(1,2,3,4,5),5)

#function with default argument values:
add<- function(a=c(1,2,3),b=3){
  cat("the sum is:",a+b)
}
add()

#return the value from a function:
full_name<-function(name="mahadi",title="islam"){
  return(paste(name,' ',title))
}
full_name()
full_name1<-full_name("afifa","islam")
full_name1


#generate 1000 random values from a normal distribution with mean 0 and sd 1
normal_dist<- rnorm(1000,mean=0,sd=1)
mean(normal_dist)
sd(normal_dist)
#to get more info
?hist

#to get histogram with large data:
hist(normal_dist,breaks=50,main="Histogram of a Standard Normal Distribution",xlab="Value",ylab="Frequency",col="blue")
#breaks=50 specifies the number of bins/class intervals in the histogram.

#creating our own function: it can be written with or without arguments

#1. no arguments:
greetings<- function(){
  cat("hello guys, i am mahadi.")
}
greetings()

#2. with arguments:
greetings<- functions(name){
  cat("hello guys, i am",name)
}
greetings("mahadi")


#function with optional arguments
expovalue <- function(x, power = 2){
  hist(x ^ power, main = paste("Histogram of x raised to the power of", power),
       xlab = paste("x ^", power), col = "lightblue", border = "black")
}

expovalue(normal_dist) 
#or
expovalue(normal_dist, power = 3)
#or
expovalue(normal_dist, 4)


#using named arguments (and passing any other arguments while calling the function).
expval<-function(x, power = 2, ...){ #these "..." denote the extra arguments that can be added later.
  hist(x^power, main = cat("Histogram of x raised to the power of", power),
       xlab = cat("x ^",power), col = "cyan", border = "white")
}
expval(normal_dist, power = 3, breaks = 50) 


#passing logical arguments:
f2 <- function(x, exp=2, hist = F){
  if (hist == T){
    hist(x^exp)
    x ^exp
  } else {
    x^exp
  }
}
f2(normal_dist)
f2(normal_dist, breaks = 50, hist=TRUE)
 
#Function for determining the probability of values of a random variable:

#1. If X∼Poisson(λ), then dpois(x, lambda) returns P(X=x), 
#ppois(q, lambda) returns P(X≤q) for a Poisson random variable with mean lambda and
#With lower.tail = FALSE, ppois(q, lambda, lower.tail = FALSE) returns P(X>q), which is useful for “at least” type questions

#X ~ Poisson(lambda)

poisson<-function(x,lambda){
  probability = dpois(x, lambda) 
  print(paste("The probability of X=",x,"is",probability))
}
poisson(7,7)

# for P(X≤q)
poisson<- function(x,lambda){
  probability<-ppois(x,lambda)
  print(paste("The probability P(X <=",x,") is",probability))
}
poisson(4,7)

#for P(X>q), if we need to find P(x>=3) we need to calculate P(X>2).
poisson<- function(x,lambda){
  probability<-ppois(x,lambda,lower.tail=F)
  print(paste("The probability P(X <=",x,") is",probability))
}
poisson(2,7)

#2. X ~ Normal(mu,sigma^2)
#If X∼N(μ,σ2), then dnorm(x, mean, sd) returns the height of the probability density function at x,
#pnorm(q, mean, sd) returns P(X≤q) for a normal random variable with mean and standard deviation sd.
#With lower.tail = FALSE, pnorm(q, mean, sd, lower.tail = FALSE) returns P(X>q), which is useful for “at least” type questions.
#for P(X≤q)
normal1<- function(x,mean,sd){
  probability<-pnorm(x,mean,sd)
  print(paste("The probability P(X <=",x,") is",probability))
}
normal1(43,43,3)

#for P(X>q)
normal2<-function(x,mean,sd){
  probability<-pnorm(x,mean,sd,lower.tail=F)
  print(paste("The probability P(X >",x,") is",probability))
}
normal2(46,43,3)

#for P(q<X<r)
normal3<-function(q,r,mean,sd){
  probability<-pnorm(r,mean,sd)-pnorm(q,mean,sd)
  print(paste("The probability P(",q,"<X<",r,") is",probability))
}
normal3(37,49,43,3)








#if statement
x<-30
if(x>20)
  {
  print("x is an integer.")
  }

#if-else statement 
score<-60
if(score>80)
  {
              print("this is a good score.")
} else {
        print("this is not a good score.")
}

#while loop
y <- c("hello world")
count <-2
while (count<7) {print(y)
  count = count + 1}

x<- 0
while (x<10){
  cat('x is currently:', x ) 
  #cat() concatenates and prints text without quotes or extra formatting,
  #while print() displays objects with quotes and returns the object invisibly
  print('x is still less than 10, adding 1 to x')
  
  x <-x+1
  if (x==10){
    print("x is equal to 10, termenating loop")
  }
}

#for loop
fruits <- c('banana','orange','mango','kiwi')
for (i in fruits) {print(i)
}

vec <- c(1,2,3,4,5)
for (temp_ver in vec){
  print(temp_ver)
}
#or
for ( i in 1:length(vec)){
  print(vec[i])
}
#or
li <- list(1,2,3,4,5)
for (i in 1:length(li)){
  print(li[[i]]) #must use double brackets for list indexing
} 
#for loop to print a matrix
mat <- matrix(1:25,nrow=5,ncol=5)
for (num in mat){
  print(num)
}
for (i in 1:25){
  sq = i*i
  sqroot=sqrt(i)
  message("i=",i," square=",sq," square root=",sqroot)
  #message() function is similar to print() but is used for generating diagnostic messages.
}

x <- 25
x<10
x>10
x<20 & x>10
x>20 & x>5 & x==25
x>10 | x<5
x<20 | x==30

#single condition check
hot <- FALSE
temp <- 50
if (temp >60){
  hot <- TRUE
}
hot

#changing the temp
temp <- 100
if (temp >60){
  hot <- TRUE
}
hot

#else statement
score <- 85
if (score > 80){
  print('it is a good score.')
}else
{
  print('it is not a good score.')
}

#else if statement
score <- 63
if (score > 80){
  print("good score")
}else if (score>60 & score <80){
  print("decent score") 
}else{
  print("poor score")
}

#using break statement in while loop
x <- 0 
while (x<5){
  cat("x is currently: ",x) 
  print("x is currently lower than 5, adding 1 to x")
  x<-x+1
  if (x==5){
    print('x is equal to 5.')
    break
    print("screw x.")
  }
}
























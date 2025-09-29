list_1<-list(x=c(10,20,30),
             y = c("a","b","c"),
             z=c(TRUE,FALSE))
print(list_1)
list_2 <- c("mahadi",100,T)
class(list_1)
class(list_2) #this will show only character cause
#by c we make it a vector and a vector can only contain 1 kind of element.

is.list(list_1) #if it returns true then it is a list else not a list.

names(list_1)
names(list_2) #returns the titles.

#to print one at a time:
list_1[1]
list_2[3]

#to create a list like python:
intro<-list(name="mahadi",age=22,uni_std = TRUE,uni = "University of Dhaka")
print(intro)
names(intro)

#compactly displayed structure of a list
str(intro)

#adding a list in a list
friends <- list(name="ramjan",age=21,uni = "University of Dhaka")
friends
intro<-list(name="mahadi",age=22,uni_std = TRUE,uni = "University of Dhaka", friends = friends)
intro

#element wise printing/subset printing
intro[["name"]]
intro[["age"]]
#another way of accessing elements
intro$uni
intro$friends

l1=list(
      x=c(1,2,3),
      y=c('mahadi','abul','kabul'),
      z=c(T,T,F)
    )
l1

#recursive variable=that can store values of its own type
is.recursive(l1)

#indexing list
l1[2]
l1[[1]][2] #first column second value
length(l1)
class(l1)

#conversion of vectors into list
v = c(1,2,3,4,5)
v.list = as.list(v)
v
v.list

#conversion of list into vectors
l2 = list(1,2,4,6,7)
vec = unlist(l2)
l2
vec

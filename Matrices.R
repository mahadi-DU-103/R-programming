m<-matrix(1:9,nrow = 3,ncol  = 3, byrow = T)
m
#row matrix
m_row <- matrix(1:6,nrow = 1)
m_row
#column matrix
m_col <- matrix(1:6,ncol  = 1)
m_col
#column bind
cbind(1:2,1:4)
#row bind
rbind(1:3,0:2)
#append or add values to a matrix
rbind(m,10:12)
cbind(m,10:12)
#assigning names to rows or columns
age<-matrix(c(22,21,24),nrow=3,ncol=1)
rownames(age)<-c("ramjan","tajrian","sam")
colnames(age)<-c("age")
age
#matrix of letters
let<-matrix(LETTERS[1:6],nrow =2,ncol = 3)
let

#construction of a matrix
matr<-matrix(1:9,3,3) #(element,row,column)
matr
matr1<-matrix(1:9,byrow = T,nrow = 3) #this inserts the elements row wise
matr1

#creating matrices from vectors:
var1 <- c(1,2,3,4,5,6,7)
var2 <- c(6,7,8,9,10)
var1.matrix<-matrix(var1,ncol = 3,nrow = 2)
var1.matrix

#naming matrix using colnames() and rownames()
var3<-matrix(1:7,1,7)
days<-c('sun','mon','tue','wed','thu','fri','sat')
colnames(var3)<-days
rownames(var3)<-c('serieal')
var3

#functions associated with matrix
nrow(var3) #returns number of rows
ncol(var3) #returns number of columns
dim(var3) #returns dimensions or number of rows and columns
rownames(var3) #returns name of rows
colnames(var3) #returns name of columns
dimnames(var3) #returns name of rows and columns

#arithmetic operations in matrix
mat1<-matrix(1:10,2,5,byrow = T)
mat1
mat2<-matrix(10:1,2,5,byrow = T)
mat2
#1. addition:
5+mat1
mat1+mat2

#2. multiplication:
5*mat1
mat1*mat2
#3. division
2/mat1 #returns the reciprocal
mat1/mat2
#4. division
mat1/2 #returns the quotient 

#5. exponent
mat1^2

#matrix operations
rowSums(mat1) #returns sum of each row
colSums(mat2) #returns sum of each column
rowMeans(mat2) #returns mean of each row

#adding rows and columns to matrices using rbind() & cbind():
mat3<-c(26,27,28,25.7,28,32,33)
mat3
total<-rbind(var3,mat3)
rownames(total)<-c('serial','temperature')
total

#matrix selection and indexing
students<-matrix(c(20,21,34,38,49,35,39,30,32,34,38,32,28,29,31,33),nrow = 4,ncol = 4,byrow = T)
dimnames(students)<-list(c('Mahadi','Rahim','Karim','Abdul'),c('Math','Physics','Chemistry','Biology'))
students
avg<-rowMeans(students)
avg
report<-cbind(students,avg)
report

#column extraction
report[,1] #will return the first column
report[,1:2] #first and second col

#row extraction
report[1,]
report[1:3,]

#specific position
report[1,3]

#finding mahadi's score in math
report['Mahadi',1]
#in physics
report['Mahadi',2]

#find average score of mahadi
mean(report['Mahadi',]) #if there are NA values, I have to use (,na.rm = T)

#find the average and total score of every student
apply(report,1,mean)
help(apply) #help tell the work process or function of a built in function
apply(report,1,sum)

passing_value<-c(25,25,25,70)
passing_value

#finding in how many subjects mahadi has passed
pass<-(students[c('Mahadi'),]>passing_value)
pass
sum(pass)


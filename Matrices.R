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

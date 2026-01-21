setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\R practice")


sink("friends.txt")
cat("Today was a great day.")
date <- as.Date("21/Jan/2026", format="%d/%b/%Y")
date
friends<-data.frame( name=c("Tajrian","Hasib","Ramjan"), 
                     CGPA=c(3.73,3.88,3.34),
                     Age=c(21,22,21))
friends
print(paste('our mean CGPA is:', mean(friends$CGPA), "\n"))
print(paste('our max CGPA is:', max(friends$CGPA), "\n"))
print(paste('our min CGPA is:', min(friends$CGPA), "\n"))
write.csv(friends,"friends.csv",row.names = F)
write.table(friends,"friends.txt",sep="\t",row.names = F) #sep="\t" means tab space
#row.names=F means no row numbers
file.show("friends.txt")
sink()
file.show("friends.csv")

#filling the even numbered rows with values.
a<-matrix(NA,5,4)
a
even<-seq(2,20,2)
even
k<-1
for (i in 1:nrow(a)){
  if (i%%2==0){
    for (j in 0:ncol(a)){
      a[i,j]<-even[k]
      k<-k+1
    }
  }
}
a

#filling the odd numbered rows with values.
b<-matrix(NA,7,6)
b
odd<-seq(1,51,2)
odd
k<-1
for(i in 1:nrow(b)){
  if(i%%2!=0){
    for(j in 1:ncol(b)){
      b[i,j]<-odd[k]
      k<-k+1
    }
  }
}
b

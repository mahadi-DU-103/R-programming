BMI<- data.frame(gender = c("Male","Female","Male"),height=c(152,171.5,165),weight=c(81,93,78),age=c(42,38,26))
print(BMI)
name<-c("mahadi","ramjan","tajrian")
age<-c(21,20,20)
children<-c(F,F,F)
df<-data.frame(name,age,children)
print(df)
df_0<-data.frame(Name=name,Age=age,Married=children)
print(df_0)

str(df) #under the hood data frame is a list.
#sub setting of data frame:
df[3,1] #element specific
#or
df[3,"name"]

#everything about tajrian:
df[3,] #if we don't use comma, it will indicate a single column.
df[3]

df["age"]
df[c(3,1),c('age','name')]

df$name #column vector 
#alternative
df[["name"]] #double brackets indicate a vector but a single bracket indicates a vector.
df[[1]]

#adding more element
df$height<-c(160,174,158)
df
weight<-c(75,66,69)
cbind(df,weight)
df$weight<-c(75,66,69)
df
hasib<-data.frame(name="hasib",age=21,children=F,height=159,weight=70)
rbind(df,hasib)

#sorting data frame
sort(df$name)
sort(df$height)
ranks <- order(df$age)
ranks
df$age

#sorting the data frame by descending order(age):
df[ranks,]
print(df)
df[order(df$age,decreasing = F),]


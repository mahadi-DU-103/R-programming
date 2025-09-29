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

#check the list of a pre-loaded data set
data()
data(AirPassengers)
head(AirPassengers) #head for some starting data
tail(AirPassengers) #tail for some final data
data(iris)
head(iris)
View(iris)
View(state.x77)

#check the statistical summary of a data set
summary(iris) #literally shows the 5 number summary

#check the structure of the data set
str(iris)

#creating a data frame using data.frame() function
Days <- c('sunday','monday','tuesday','wednesday','thursday','friday','saturday')
Rain<-c(12,23,22,14,56,6,32)
Temperature<-c(23,23,21,24,20,27,25)
df<-data.frame(Days,Rain,Temperature)
print(df)
summary(df)
str(df)

#data frame indexing
df
df[1,] #extracting the first row
df[,2] #extracting the second column
df[,"Temperature"] #extracting columns direct via the name of the column but in vector form
df["Temperature"] #returns the column as a data frame ***look out for the comma
df$Days #we can also use '$' sign to call on columns
df$Rain

#extracting exact rows of a column
df[2:4,c("Days","Rain","Temperature")]

#filtering data frames using the subset function
subset(df,subset = Temperature>24)
subset(df,subset = Rain>21)

#sorting data frames using order function
sorted.temp <- order(df$Temperature)
df[sorted.temp,] #will return sorted data in an ascending order
sorted.temp
desc.rain<-order(-df$Rain) #will return data in a descending order
df[desc.rain,]

#merging data frame
authors=data.frame(
                    Author=I(c("Humayun Ahmed",'Adolf Hitler','Elif Shafak')),
                    Nationality=c("Bangladeshi","German","Turkish"),
                    Deceased=c(rep('yes',2),'no')                    
                  )
authors
books<-data.frame(
                  name2=I(c("Humayun Ahmed",'Adolf Hitler','Elif Shafak')),
                  Title=I(c('Opekkha','Mein Kampf','The 40 rules of love')),
                  Possession=c(rep("yes"))
                )
books
#I() stands for "AsIs", and it's used to inhibit interpretation or transformation of an object
#— especially inside functions like data.frame().
#When you pass a vector like c("A", "B", "C") into data.frame(),
#R might automatically convert it into a factor (categorical variable). 
#But sometimes you want to preserve it as-is — for example, as a character vector or list.

m<-merge(authors,books,by.x = "Author",by.y = "name2")
m

#manipulating data frames
transpose<-t(m) #transposes the data frame
m
transpose
View(transpose)

#sorting data frames
df[order(df$Rain),]
df[order(df$Rain,decreasing = T),]
df[order(df$Rain,df$Days),]

#sub-setting the data frame
m
subset.m<-subset(m,Deceased=='yes')
subset.n<-subset(m,Nationality=='Bangladeshi')
subset.m
subset.n

#merging subsets
rbind(subset.m,subset.n)
cbind(subset.m,subset.n)

#aggregate function
id<-c('mahadi','ramjan','tajrian','hasib')
age<-c(22,21,20,22)
number<-c(23,32,34,43)
homies.df<-data.frame(id,age,number)
homies.df
aggregate(homies.df$age,list(homies.df$number),sum,na.rm=T)

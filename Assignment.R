setwd("C://Users/ASUS/OneDrive/Desktop")
#generating population data for testing
id = c(set.seed(209),1:91)
score = c(rnorm(91, mean = 77, sd = 1))
data = data.frame(id, score,nrow=91,ncol=2)
colnames(data) = c("ID","Marks")
data


#randomly sampling 10 observations from the population data
set.seed(2)
sample_data = as.data.frame(data[sample(nrow(data), 10), ])
sample_data

#sorting the sampled data in ascending order based on ID
sorted_sample_data = sample_data[order(sample_data$ID), ] #we need to use column name to specify.
sorted_sample_data
sample_data.df = sorted_sample_data
sample_data.df

#saving the sampled data to a CSV file
sampledataGPA.csv = write.csv(sample_data.df, file = "sampledataGPA.csv", row.names = FALSE)
sampledataGPA.csv
#reading the saved CSV file
read_sampledataGPA.csv = read.csv("sampledataGPA.csv")
read_sampledataGPA.csv

#saving sampled data as an excel file
sample_marks.xlsx = write.xlsx(sample_data.df, file = "sample_marks.xlsx", rowNames = FALSE)
sample_marks.xlsx
#reading the saved excel 
read_sample_marks.xlsx = read.xlsx("sample_marks.xlsx")
read_sample_marks.xlsx

#displaying the first few rows of the sampled data
head(sample_data.df)

#using the summary function to get descriptive statistics of the sampled data
summary(sample_data.df)
standard_error = sd(sample_data.df$Marks)/sqrt(nrow(sample_data.df))
standard_error
second_central_moment = mean((sample_data.df$Marks - mean(sample_data.df$Marks))^2)
second_central_moment
fourth_central_moment = mean((sample_data.df$Marks - mean(sample_data.df$Marks))^4)
fourth_central_moment
skewness = (mean((sample_data.df$Marks - mean(sample_data.df$Marks))^3))/(sd(sample_data.df$Marks)^3)
skewness
kurtosis = (mean((sample_data.df$Marks - mean(sample_data.df$Marks))^4))/(sd(sample_data.df$Marks)^4)
kurtosis



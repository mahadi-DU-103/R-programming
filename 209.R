install.packages("readxl")
library(readxl)
project_distribution.df<-read_excel("C:\Users\ASUS\OneDrive\Documents\R programming\Project_Distribution.xlsx",sheet = "Data")

class(project_distribution.df)
str(project_distribution.df)
head(project_distribution.df)

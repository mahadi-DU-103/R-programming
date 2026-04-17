p<-c(13.6,28.9,32.5,10.6,5.6,3.1,1.7,1.7,0.7,0.8,0.5,0.3)
xi<-c(1,500,1000,2000,3000,4000,5000,6000,8000,10000,15000,25000) #lower bound of income class
yi<-rep(100,length(p)) #rep(value, times) is used to create a vector of length 'times' with all elements equal to 'value'. here we are creating a vector of length equal to the length of p with all elements equal to 100, which represents the cumulative percentage of people with income greater than xi[1], which is 100% for the first value.
yi 

n<-length(p)
for(i in 2:n){yi[i]=yi[i-1]-p[i-1]} #yi[i-1] theke p[i-1] minus kore yi[i] te rakha hbe, jemon yi[2]=yi[1]-p[1], yi[3]=yi[2]-p[2] and so on.
yi  #this is the cumulative percentage of people with income greater than xi[i], which is 100% for the first value and then decreases as we move to higher income levels.
y<-log(yi)
x<-log(xi)

model<-lm(y~x)
coefficients(model)

beta0<-coefficients(model)[1]
beta0

beta1<-coefficients(model)[2]
beta1

A<-exp(beta0)
A

alpha=-beta1
alpha

#plotting the pareto distribution
plot(xi,yi,type="p",xlab="Income (xi)",ylab="Cumulative Percentage of People with Income Greater than xi (yi)",main="Pareto Distribution",log="xy")

#ogive curve
plot(xi,yi,type="s",xlab="Income (xi)",ylab="Cumulative Percentage of People with Income Greater than xi (yi)",main="Ogive Curve",log="xy")


#final 24
# 1. Define the data
wealth <- c(10, 15, 20, 25, 30, 40, 50, 60, 70, 80)
population <- c(100, 54, 35, 25, 19, 12, 9, 7, 5, 4)

# 2. Logarithmic transformation
log_wealth <- log(wealth)
log_pop <- log(population)

# 3. Fit the model using Linear Regression
model <- lm(log_pop ~ log_wealth)

# 4. Extract the results
summary_model <- summary(model)
summary_model
alpha <- -coef(model)[2]# The negative of the slope
A<- exp(coef(model)[1]) # The exponential of the intercept
A
# 5. Output results
cat("Estimated Pareto Index (Alpha):", alpha, "\n")
cat("R-squared value:", summary_model$r.squared, "\n")



#incourse 21: 
income_level<-c(1,100,500,1000,2000)
persons<-c(240,140,82,53,25)

cumulative_persons<-rev(cumsum(rev(persons))) #rev() is used to reverse the order of the vector, cumsum() is used to calculate the cumulative sum of the vector. here we are calculating the cumulative sum of the reversed vector of persons, which gives us the cumulative percentage of people with income greater than or equal to each income level. then we reverse it back to get the cumulative percentage in the original order.
cumulative_persons

percentage_cum_persons<- (cumulative_persons/cumulative_persons[1])*100
percentage_cum_persons

x<-log(income_level)
y<-log(percentage_cum_persons)

model<-lm(y~x)
coefficients(model)

beta0<-coefficients(model)[1]
beta0

beta1<-coefficients(model)[2]
beta1

A<-exp(beta0)
A
α=-beta1
α

estimated_target<- 1500
estimated_population<- A * estimated_target^(-α)
estimated_population

number_of_people_with_income_greater_than_1500<- (estimated_population*540)/100
number_of_people_with_income_greater_than_1500


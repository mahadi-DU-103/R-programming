#how to write in exam:
#Qi = A * Ki^alpha * Li^(1-alpha)
#lnQi = lnA + alpha*lnKi + (1-alpha)*lnLi
#lnQi - lnKi = lnA + alpha(lnLi-lnKi)
#ln(Qi/Ki) = lnA + alpha*ln(Li/Ki)
#yi = beta0 + beta1*xi
#where yi = ln(Qi/Ki), xi = ln(Li/Ki), beta0 = lnA => A e^beta0, beta1 = alpha
#betacap1 = sum((xi - mean(xi))*(yi - mean(yi)))/sum((xi - mean(xi))^2)
        #= sum(xi*yi) - n*mean(xi)*mean(yi)/sum(xi^2) - n*mean(xi)^2
#betacap0 = mean(yi) - betacap1*mean(xi)


q<-c(18252,24476,27680,31430,35863,40665,48300,56132)
l<-c(4193,4320,4846,4647,4894,5012,5328,5412)
k<-c(5878,6647,8602,9598,10749,12608,15066,16734)
 
y<-log(q/k)
x<-log(l/k)

model<-lm(y~x) #lm() is used to fit linear regression model, syntax: lm(dependent variable ~ independent variable)
coefficients(model) #yields the coefficients of the fitted model, here it gives beta0 and beta1

beta0<-coefficients(model)[1]
beta0

beta1<-coefficients(model)[2]
beta1

A<-exp(beta0)
A


#estimated C-D production function:
q_cap <- A * l^beta1 * k^(1-beta1)
q_cap

#final 23
# Input the data
output <- c(120, 134, 154, 164, 173, 179, 185, 190, 195)
capital <- c(11, 14, 17, 18, 20, 21, 23, 22, 25)

# Transform data to logarithms
log_output <- log(output)
log_capital <- log(capital)

# Estimate the model using Ordinary Least Squares (OLS)
model <- lm(log_output ~ log_capital)

# Display results
summary(model)

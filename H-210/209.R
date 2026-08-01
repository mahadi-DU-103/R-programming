#1. Suppose a random variable X follows poisson distribution with mean 2.7. Compute i) P(x>3), ii) P(2<x<8), iii) Find the minimum value of K such that P(x<=K) >=0.5.
x_3 <- 1-sum(dpois(0:2,2.7)) #P(X>3) = 1-P(X<=3) = 1-P(X=0)-P(X=1)-P(X=2)
x_3

x_2_8 <-sum(dpois(3:7,2.7)) #P(2<X<8) = P(X=3)+P(X=4)+P(X=5)+P(X=6)+P(X=7)
x_2_8

x_k <-qpois(0.5 , 2.7) #P(X<=K)>=0.5 => P(X<=K) = 0.5 => K = qpois(0.5,2.7) and qpois() gives the quantile function for poisson distribution.
x_k

#2. Using seed number 101, generate 1000 observations from poisson(2.7). Estimate i) P(x>3), ii) P(2<x<8), iii) P(x<=3), iv) Find the deciles, v) Find the minimum value of K such that P(x<=K) >=0.5.
set.seed(101)
x<-rpois(1000,2.7)
x

x_3 <- mean(x>3)
x_3

x_2_8 <- mean(x>2 & x<8)
x_2_8

x_3 <- mean(x<=3)
x_3

deciles<-quantile(x,seq(0.1,0.9,0.1))
deciles

x_k <- qpois(0.5, 2.7)
x_k

#3. Suppose a random variable X follows exponential distribution with mean 3. Compute i) P(1.5<x<2.5), ii) Find the minimum value of K such that P(X<=K) >=0.8.
x_1.5_2.5 <- sum(dpois(2,1/3)) #P(1.5<X<2.5) = P(X=2) = dpois(2,1/3)
x_1.5_2.5

x_k<-qpois(0.8,1/3) #P(X<=K)>=0.8 => P(X<=K) = 0.8 => K = qpois(0.8,1/3) and qpois() gives the quantile function for poisson distribution.
x_k

#4. Finding the value of the function f(x) = x^3 - 2x^2 + 3x - 5 using Newton-Raphson method. The derivative of the function is f'(x) = 3x^2 - 4x + 3. We will start with an initial guess of x0 = 1 and iterate until the absolute difference between successive approximations is less than a tolerance level of 1e-6.
f <-function(x) {
  return(x^3 - 2*x^2 + 3*x - 5)
}
f_prime <- function(x) {
  return(3*x^2 - 4*x + 3)
}
sol_of_eqn <- function(x0,tolerance=exp(-6)) {
  xi = x0 - (f(x0)/f_prime(x0))
  iterations = 1
  while(abs(x0-xi) > tolerance) {
    x0 = xi
    xi = x0 - (f(x0)/f_prime(x0))
    iterations = iterations + 1
  }
  return(list(estimated_solution = xi, function_value = f(xi), iterations = iterations))
}
soln=sol_of_eqn(x0 = 1)
soln

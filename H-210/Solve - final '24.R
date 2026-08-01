#1) a) Create a vector x = (1,2,2,3,3,3,4,4,4,4,5,5,5,5,5) by using rep() command and find product x.
x = rep(1:5, times = 1:5)
x
product_x = prod(x)
product_x

#b) Let N = (1,2,3, ...) be the vector of index postiotions of x, create a vector y = Ne^x/X!, find summation y.
N = 1:length(x) #1: because the index positions start from 1.
N
y = (N*exp(x))/factorial(x)
y 
sum_y<-sum(y)
sum_y

#c) What are the index positions of y values satisfying 10<y<15? Find the sum of y values satisgfying 10<y<15.
index_positions = which(y>10 & y<15)
index_positions
sum_y_values = sum(y[index_positions])
sum_y_values

#d) Create the vector int y where int y is the nearest integer of y. How many numbers int y are divisiblw by 4?
int_y = round(y)
int_y
divisible_by_4<- sum(int_y %% 4 ==0)
divisible_by_4

#e) Write a function that takes argument x and create y and yields the areithmetic mean, geometric mean and harmonic mean of y as output, where y is defined in (b).
mean_y <- function(x) {
  N<-1:length(x)
  y <- (N*exp(x))/factorial(x)
  
  return(list(arithmetic_mean <- mean(y),
  geometric_mean <- exp(mean(log(y))),
  harmonic_mean <- length(y) / sum(1/y)))
}


#f) Evaluate the function written in  (e) for the data x defined in (a).
result = mean_y(x)
result


#2) a) using seed 100 create three random standard normal vectors on length 100. Call these vectors x, x1, x2.
#i) Now create the vector y, z such that y=x+x1 and z=y+x2 and evaluate the following: summation(x-xbar)(y-ybar), summation(y-ybar)(z-zbar), summation(x-xbar)(z-zbar).
#ii) Now create a 100*3 matrix, A where each column is filled by each of the vectors x, y, z. Now compute B^-1, where B = A^T A and find sum of diagonal elements of B.
set.seed(100)
x = (rnorm(100,mean=0,sd=1))
x1 = (rnorm(100,mean=0,sd=1))
x2 = (rnorm(100,mean=0,sd=1))
y = x + x1
z = y + x2
x_bar = mean(x)
y_bar = mean(y)
z_bar = mean(z)
sum_xy = sum((x-x_bar)*(y-y_bar))
sum_yz = sum((y-y_bar)*(z-z_bar))
sum_xz = sum((x-x_bar)*(z-z_bar))
sum_xy
sum_yz
sum_xz

A = cbind(x,y,z)
B = t(A) %*% A
B_inv = solve(B)
sum_diag_B = sum(diag(B))
sum_diag_B

#b) Write a function that takes an input matrix and find the number of entries in each column which are greater than a specific value say k.
mat_test<- function(x, k, by = "col"){
  if (by == "col" || by == "column") {
    return(colSums(x>k))}
  else if (by == "row") {
    return(rowSums(x>k))}
  else {
    stop("Invalid option for 'by'. Use 'row' or 'col'.")
  }
}
M = matrix(sample(1:10, size = 60, replace = TRUE), nrow = 6, ncol = 10, byrow = T)
M
mat_test(M, k = 5, by = "col")

#c) Evaluate the function written in (b) that find the number of entries in each column which are greater than 2 for the input matrix A defined in (a).
mat_test(A, k = 2, by = "row")


#3) a) Suppose a random variable X follows gamma(3,0.25). Calculate i) P(X>=50) ii) P(20<X<40). iii) Find k such that P(X>k) = 0.1
x_50 = 1 - pgamma(50,3,0.25)
x_50
x_20_40 = pgamma(40,3,0.25)-pgamma(20,3,0.25)
x_20_40
k_val <- qgamma(0.9,3,0.25) #P(X>k) = 0.1 = 1-P(X<k) = 0.1. Hence, P(X<k) = 0.9.
k_val

#b) Using seed number 101, generate 5000 observations from X~gamma(3,0.25). Estimate i)P(x>=50), ii) P(20<X<40). iii) Find the deciles.
set.seed(101)
X<-rgamma(5000,3,0.25)
X
x_50_ = mean(x>=50)
x_50_
x_20_40_ = mean(x<=40 & x>=20)
x_20_40_
deciles <- quantile(x,seq(0.1,0.9,0.1))
deciles


#4) #a) Finding the value of the function f(x) = X^4 + 4x^3 + 2x^2 + 12x + 5 involves the solution of the following transcendental equation f(x) = 0. The function f and its first and second derivatives are gives as 
#f'(x) = 4x^3 + 12x^2 + 4x + 12 and f"(x) = 12x^2 + 24x+ 4, respectively, i) Draw the function f(x) and f'(x) in a single plot on the interval (-4,1). ii) Write a function to find the solution of the transcendental equation.
#The function should return the estimated solution, value of the function at the estimate and the number of iterations.
f_x = function(x) {
  return(x^4 + 4*x^3 + 2*x^2 + 12*x + 5)
}
f_prime_x = function(x) {
  return(4*x^3 + 12*x^2 + 4*x + 12)
}
curve(f_x, from = -4 , to = 1, col = "blue", ylab = "f(x) and f'(x)", xlab = "x", main = "Plot of f(x) and f'(x)")
curve(f_prime_x, from = -4, to = 1, col = "red", add = TRUE)
legend("topright", legend = c("f(x)", "f'(x)"), col = c("blue", "red"), lty = 1)

solution_transcendental_equation <- function(x0, tolerance = exp(-6), max_iterations = 100){
  xi = x0 - (f_x(x0)/f_prime_x(x0))
  iterations = 1
  while(abs(x0-xi) > tolerance && iterations < max_iterations){
    x0 = xi
    xi = x0 - (f_x(x0)/f_prime_x(x0))
    iterations = iterations + 1
  }
  return(list(estimated_solution = xi, function_value = f_x(xi), iterations = iterations))
}
sulution <- solution_transcendental_equation(x0 = 5)
sulution




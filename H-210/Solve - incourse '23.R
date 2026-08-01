#Part-1: 
#a) Create a vector x that stores the sequence {1.1, 1.5, 1.9, ..., 111.1}.
x = c(seq(1.1, 111.1, 0.04))
x

#b) Create a vector Y where y = logx.
Y = log(x)
Y

#c) Find the number of observations in Y.
n = length(Y)
n

#d) Display the position of the element of Y vector that lies between 0.5 and 2.
position = which(Y > 0.5 & Y < 2)
position

#e) Find the sum of the elements of Y vector that are below 3.
below_3 = which(Y<3)
sum_below_3 = sum(Y[below_3])
sum_below_3


#Part-2:
#a) Generate 1000 observation of X, where X~N(0,4). Also generate 1000 observations of e, where e~N(0,2).
#Before generating X, use seed number 123. Determine Y using the simple Linear Regression Y = 0.5 + 0.8X + e.4
#Store the values of X as x and Y as y.
set.seed(123)
X = rnorm(1000, mean = 0, sd = 2)
e = rnorm(1000, mean = 0, sd = sqrt(2))
Y <- 0.5 + 0.8*X + e
Y

#b) Create a matrix D such that its first column contains constant 1 and second column contains the vector X defined in (a).
#Also create a column matrix M of 1000 rows using vector Y.
D = cbind(1, X)
M = matrix(Y, nrow = 1000, ncol = 1)
D
M

#c) Find the value of b = (D^T D)^-1*D^T M And compute its difference from the vector B = (0.5, 0.8)^T, where B is the vector of regression parameters of a).
D_t<- t(D)
D_t_D_inv = solve(t(D) %*% D) # %*% is matrix multiplication operator.
b<-(D_t_D_inv %*% t(D) %*% M)
b
w<-c(0.5,0.8)
B<-t(B)
B
difference = b - B
difference

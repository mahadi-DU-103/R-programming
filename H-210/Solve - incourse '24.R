#Part-1:
# a) Create a vector y == e^xcos(X) using vector x = 3, 3.1, 3.2, ..., 6 and find summation Yi.
x = seq(3, 6,0.1)
x
y = exp(x) * cos(x)
y
sum_y = sum(y)
sum_y

#b) Create the vector v = (|y1-ybar|^1/2, |y2-ybar|^1/2, ..., |yn-ybar|^1/2) where ybar is the mean of vector and n is the length of vecotr y, respectively. Find the arithmetic mean of v.
ybar = mean(y)
ybar
v = abs(y - ybar)^(1/2)
v
mean_v = mean(v)
mean_v

#c) Pick out the values in v which are less than 6. What are the index positions of v values satisfying 6 < v < 8?
v_less_than_6 = v[v < 6]
v_less_than_6
index_positions = which(v > 6 & v < 8)
index_positions

#d) Create the vector int v, where int v is the nearest integer of v. How many numbers in int v are divisible by 3?
int_v = round(v)
int_v
divisible_by_3 = int_v[int_v %% 3 == 0]
divisible_by_3
count_divisible_by_3 = length(divisible_by_3)
count_divisible_by_3

#e) Write a function that takes the argument x and computes the arithmetic mean, geometric mean and harmonic mean of v, where ith component of the vector is defined in (b).
vec <- function(x) {
  y = exp(x) * cos(x)
  ybar = mean(y)
  v = abs(y - ybar)^(1/2)
  
  arithmetic_mean = mean(v)
  geometric_mean = exp(mean(log(v[v > 0]))) # geometric mean only for positive values
  harmonic_mean = length(v) / sum(1/v[v > 0]) # harmonic mean only for positive values
  
  return(list(arithmetic_mean = arithmetic_mean, 
              geometric_mean = geometric_mean, 
              harmonic_mean = harmonic_mean))
}

#f) Evaluate the function written in (e) for the data x created in (a) and hence find the arithmetic mean, geometric mean and harmonic mean of v.
result = vec(x)
result


#Part-2:
#a) Using seed number 75, draw a random sample of size 60 with replacement from the sequence 1, 2, 3, ..., 10 and create a matrix M(6*10) where the matrix is filled by rows. Find the row totals of M.
set.seed(75)
sample_data = sample(1:10, size = 60, replace = TRUE)
sample_data
M = matrix(sample_data, nrow = 6, ncol = 10, byrow = T) #by row means the matrix is filled by rows.
M
row_total = rowSums(M)
row_total

#b) Write a function that takes an input matrix and find the number of entries in each row which are greater than a specific value, say k.
mat<-function(x, k, by="row"){
    if (by == "row") {
      return(rowSums(x > k))
    } else if (by == "col" || by == "column") {
      return(colSums(x > k))
    } else {
      stop("Invalid option for 'by'. Use 'row' or 'col'.")
    }
}
count_greater_than_k = mat(M, k = 5,by = "row")
count_greater_than_k
mat2 = matrix(1:12, nrow = 3, ncol = 4)
mat2
count_greater_than_k2 = mat(mat2, k = 5, by = "row")
count_greater_than_k2

#c) Evaluate the function written in (b) that find the number of entries in each column which are greater than 4 in the input matrix M.
mat(M, k = 4, by = "col")


#Part-3:
#a) Using seed number 123, simulate a random sample Y1, ..., Y2000 from binomial distribution for n = 15, p = 0.25 and estimate i) P(2 < Y < 10),ii) Q3 (third quartile).
set.seed(566)
y = rbinom(2000, size = 15, p = 0.25)
y
#i) P(2 < Y < 10)
prob = sum(dbinom(3:9, size = 15, prob = 0.25)) #sum of probabilities from 3 to 9
prob
#ii) Q3
quantile(y, 0.75)
summary(y)


#1. The smallest prime number is 2. The following R function, first _n_primes(), generates the first n prime numbers.
first_n_primes <- function(n) {
  primes <- c()
  num = 2
  is_prime <- function(x) {
    if (x<2) return(FALSE) #any number less than 2 is not prime
    if (x==2) return(TRUE) #2 is prime
    for (i in 2: (x-1)) { #x-1 because we don't need to check divisibility by x itself
      if (x %% i == 0) { 
        return(FALSE) #if x is divisible by i, then it is not prime
    }
  }
  return(TRUE) #x is prime if it is not divisible by any number from 2 to x-1
  }
  while (length(primes) < n ){ #keep generating prime numbers until we have n primes
    if (is_prime(num)){ #check if num is prime
      primes <- c(primes, num) #if num is prime, add it to the list of primes
    }
    num <- num + 1 #increment num to check the next number
  }
  return(primes) #return the list of first n prime numbers
}
first_n_primes(100) #the function returns the first 16 prime numbers. 


#2) Using first_n_primes (n=16) we obtain the numbers 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53. 
#i) Create a vector p using these numbers.
p <- c(2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53)
#ii) Verify that p contains exactly 16 prime numbers.
length(p) == 16
#iii) Create a subset p_sub that contains every third element of p.
p_sub <- p[seq(1, length(p), by = 3)]
p_sub
#iv) Using set.seed(209), generate a random sample of 10 prime numbers from p without replacement.
set.seed(209)
random_sample<-sample(p,size = 10, replace = TRUE)
random_sample
#v) Using set.seed(2025), generate a random sample of 16 prime numbers from p_sub with replacement.
set.seed(2025)
random_sample_sub <- sample(p_sub,size = 16, replace = TRUE)
random_sample_sub

#3) i) Create a matrix M with 4 columns, placing the prime numbers of p across the rows.
M <- matrix(p, ncol = 4, byrow =  TRUE)
M

#ii) a) the transpose of M
trans_M <- t(M)
trans_M
#b) the dimension of M
dim_M <- dim(M)
dim_M
#c) the determinant of M
det_M <- det(M)
det_M
#d) the column totals of M
col_totals_M <- colSums(M)
col_totals_M
#e) the row means of M
row_means_M <- rowMeans(M)
row_means_M

#iii)Suppose M is the coefficient matrix of a system of linear equations in 4 unknowns (x1, x2, x3, x4), and the constant vector of the system is (-10 20 17 -28)^T.
#a) Write the system of linear equations in your answer script,
#b) Write R command to find a solution to the system of linear equations.
c <- matrix(c(-10, 20, 17, -28), nrow = 4, ncol = 1)
c
inv_M <- solve(M)
inv_M
solution <- inv_M %*% c
solution
#c) Write R command to verify that each of the four equations holds for the solution obtained in (b).
solution_check <- M %*% solution
solution_check


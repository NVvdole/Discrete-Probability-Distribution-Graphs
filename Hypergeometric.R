# File Name: Hypergeometric.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  N <- as.integer(readline(prompt = "Enter N: "))
  while (N < 0) {
    N <- as.integer(readline(prompt = "Enter N: "))
  }
  
  K <- as.integer(readline(prompt = "Enter K: "))
  while ((K < 0) || (K > N)) {
    K <- as.integer(readline(prompt = "Enter K: "))
  }
  
  n <- as.integer(readline(prompt = "Enter n: "))
  while ((n < 0) || (n > N)) {
    n <- as.integer(readline(prompt = "Enter n: "))
  }
  
  x <- max(0, n + K - N):min(n, K)
  PMF <- dhyper(x, K, N - K, n)
  CDF <- phyper(x, K, N - K, n)
  
  plot(x, PMF, main = "Hypergeometric Distribution PMF")
  mtext(paste("N =", N, " K =", K, " n =", n), side = 3)
  
  plot(x, CDF, main = "Hypergeometric Distribution CDF")
  mtext(paste("N =", N, " K =", K, " n =", n), side = 3)
}

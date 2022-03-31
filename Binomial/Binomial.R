# File Name: Binomial.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  n <- as.integer(readline(prompt = "Enter n: "))
  while (n < 0) {
    n <- as.integer(readline(prompt = "Enter n: "))
  }
  
  p <- as.double(readline(prompt = "Enter p: "))
  while ((p < 0.0) || (p > 1.0)) {
    p <- as.double(readline(prompt = "Enter p: "))
  }
  
  x <- 0:n
  PMF <- dbinom(x, n, p)
  CDF <- pbinom(x, n, p)
  
  plot(x, PMF, main = "Binomial Distribution PMF")
  mtext(paste("n =", n, " p =", p), side = 3)
  
  plot(x, CDF, main = "Binomial Distribution CDF")
  mtext(paste("n =", n, " p =", p), side = 3)
}

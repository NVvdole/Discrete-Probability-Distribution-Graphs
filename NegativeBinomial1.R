# File Name: NegativeBinomial1.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  k <- as.integer(readline(prompt = "Enter k: "))
  while (k < 1) {
    k <- as.integer(readline(prompt = "Enter k: "))
  }
  
  p <- as.double(readline(prompt = "Enter p: "))
  while ((p < 0.0) || (p > 1.0)) {
    p <- as.double(readline(prompt = "Enter p: "))
  }
  
  x <- k:as.integer(k + (2.0 * ((k * (1.0 - p)) / p)))
  y <- x - k
  PMF <- dnbinom(y, k, p)
  CDF <- pnbinom(y, k, p)
  
  plot(x, PMF, main = "Negative Binomial Distribution 1 PMF")
  mtext(paste("k =", k, " p =", p), side = 3)
  
  plot(x, CDF, main = "Negative Binomial Distribution 1 CDF")
  mtext(paste("k =", k, " p =", p), side = 3)
}

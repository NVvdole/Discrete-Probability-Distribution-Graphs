# File Name: NegativeBinomial2.R
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
  
  y <- 0:as.integer(2.0 * ((k * (1.0 - p)) / p))
  PMF <- dnbinom(y, k, p)
  CDF <- pnbinom(y, k, p)
  
  plot(y, PMF, main = "Negative Binomial Distribution 2 PMF")
  mtext(paste("k =", k, " p =", p), side = 3)
  
  plot(y, CDF, main = "Negative Binomial Distribution 2 CDF")
  mtext(paste("k =", k, " p =", p), side = 3)
}

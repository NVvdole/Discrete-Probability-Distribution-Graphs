# File Name: Poisson.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  lamb <- as.double(readline(prompt = "Enter lambda: "))
  while (lamb <= 0.0) {
    lamb <- as.double(readline(prompt = "Enter lambda: "))
  }
  
  x <- 0:as.integer(2.0 * lamb)
  PMF <- dpois(x, lamb)
  CDF <- ppois(x, lamb)
  
  plot(x, PMF, main = "Poisson Distribution PMF")
  mtext(paste("lambda =", lamb), side = 3)
  
  plot(x, CDF, main = "Poisson Distribution CDF")
  mtext(paste("lambda =", lamb), side = 3)
}

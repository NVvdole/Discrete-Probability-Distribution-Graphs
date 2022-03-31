# File Name: Geometric2.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  p <- as.double(readline(prompt = "Enter p: "))
  while ((p < 0.0) || (p > 1.0)) {
    p <- as.double(readline(prompt = "Enter p: "))
  }
  
  y <- 0:10
  PMF <- dgeom(y, p)
  CDF <- pgeom(y, p)
  
  plot(y, PMF, main = "Geometric Distribution 2 PMF")
  mtext(paste("p =", p), side = 3)
  
  plot(y, CDF, main = "Geometric Distribution 2 CDF")
  mtext(paste("p =", p), side = 3)
}

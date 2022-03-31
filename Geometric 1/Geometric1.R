# File Name: Geometric1.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  p <- as.double(readline(prompt = "Enter p: "))
  while ((p < 0.0) || (p > 1.0)) {
    p <- as.double(readline(prompt = "Enter p: "))
  }
  
  x <- 1:10
  y <- x - 1
  PMF <- dgeom(y, p)
  CDF <- pgeom(y, p)
  
  plot(x, PMF, main = "Geometric Distribution 1 PMF")
  mtext(paste("p =", p), side = 3)
  
  plot(x, CDF, main = "Geometric Distribution 1 CDF")
  mtext(paste("p =", p), side = 3)
}

# File Name: DiscreteUniform.R
# Author: Verginia Mae Dole
# Date Created: 4/1/2022

{
  v <- as.integer(readline(prompt = "Enter v: "))
  while (v < 1) {
    v <- as.integer(readline(prompt = "Enter v: "))
  }
  
  x <- 1:v
  PMF <- dunif(x, min = 1, max = v + 1) 
  CDF <- punif(x + 1, min = 1, max = v + 1)
  
  plot(x, PMF, main = "Discrete Uniform Distribution PMF")
  mtext(paste("v =", v), side = 3)
  
  plot(x, CDF, main = "Discrete Uniform Distribution CDF")
  mtext(paste("v =", v), side = 3)
}

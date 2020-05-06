set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5 +2*x + e
 summary(y)
##Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##-6.4084 -1.5402  0.6789  0.6893  2.9303  6.5052 
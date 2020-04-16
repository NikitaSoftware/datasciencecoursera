x <- c(0.5, 0.6)  ## numeric vector
y <- c(TRUE, FALSE) ## logical vector
y1 <- c(T, F) 
z <- c("a", "b", "c")  ##character
a <- 9:29 ## integer
k <- c(1+ 2i, 2+4i)  ## complex

o <- vector("numeric", length = 10)

print(x)
print(y)
print(y1)
print(z)
print(a)
print(k)
print(o)

x <- factor(c("yes", "no", "yes", "yes", "no"))
table(x)
unclass(x)
attr("levels")

x <- data.frame(foo = 1:4 , bar = c(T,T,F,F))

x <- c("a", "b", "c", "d", "e")
##> x[1]
##[1] "a"
##> x[2]
##[1] "b"
##> x[1:4]
##[1] "a" "b" "c" "d"

u <- x > "a"
##> u <- x > "a"
##> u
##[1] FALSE  TRUE  TRUE  TRUE  TRUE

x <- matrix(1:6, 2,3)
##> x <- matrix(1:6, 2,3)
##> x
##[,1] [,2] [,3]
##[1,]    1    3    5
##[2,]    2    4    6
##> x[1,]
##[1] 1 3 5
##> x[1, ,drop = FALSE]
##[,1] [,2] [,3]
##[1,]    1    3    5
## 
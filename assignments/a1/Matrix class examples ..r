rm(list = ls())



matA <- matrix(data = c(1,2,3,4,5,6),
               nrow = 2,
               ncol = 3,
               byrow = TRUE)



matA

# We can give the dimensions names

dimnames(matA) <- list(c("row1", "row 2"),
                       c("col 1","col2", "col3"))

matA

#or you can use colnames() or rownames()


colnames(matA) <-c("col 1", "col 2", "col 3")

matA[1,2]

matA[1,]

# Creat a vector 

xvec <-c(1,2,3)
yvec <-c(4,5,6)


xvec <- as.matrix(xvec)
yvec <- as.matrix(yvec,
                  byrow = TRUE)


#Transpose
matA

t(matA)


matA <- matrix(c(4,9,2,1),
               nrow=2,
               ncol=2,
               byrow = TRUE )

matB <- matrix(c(2,0,0,7),
               nrow=2,
               ncol=2,
               byrow = TRUE)

matA+matB


# Scalar Multioplication

gamma <- 5

gamma*matA

#Matrix Multiplication

matF <- matrix(c(1,2,1,3,4,2),
              nrow=2,
              ncol=3,
              byrow= TRUE)

matF%*%matG


t(xvec)%*%yvec
xvec%*%t(yvec)


# Diagonal Matrix

diag(c(1,2,3),
     nrow = 3)

matC <- matrix(c(1,2,3,4),
               nrow=2,
               ncol=2,
               byrow = TRUE)
matC

matC%*%diag(nrow=2)


#Solving a system of equations

matE <- matrix(c(1,1,2,-1),
               nrow =2,
               ncol=2,
               byrow = TRUE)
matE

b<-as.matrix(c(1,1))


#B=A^{-1}=solve(A)

z<- solve(matE)%*%b
z



Lab Class 9/26/2025

```{r}
A <- matrix(c(2,1,3,
              0,1,4,
              5,2,0),
            nrow = 3,
            byrow = TRUE)
A
```
```{r}
b <- matrix(c(2,4,6),ncol = 1)

b
```


```{r}
B <- matrix(c(1,2,3,4,5,6,7,8,9),
            nrow=3,
            byrow= TRUE)
B
A+B

```

```{r}
2*A
```
```{r}
t(A)
```
```{r}
A%*%b
```

```{r}
A%*%B
```

```{r}
det(A)

solve(A)
```
```{r}
I3 <- solve(A) %*% A

I3

round(I3, 0)

all.equal(I3, diag(3))
```

```{r}
set.seed(123)
n <- 100
x <- rnorm(n)
y <- 2+3*x + rnorm(n, sd = sqrt(0.25))
X <- cbind(1, x)
```

```{r}
beta_hat <- solve(t(x) %*% X)%*%(t(X) %*% y)
```



















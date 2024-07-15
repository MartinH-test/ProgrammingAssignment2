## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

 my_matrix <- matrix(c(1, 0, 1, 0, 4, 0, 3, 0, 4), ncol = 3, nrow = 3)

 makeCacheMatrix <- function(x = matrix()) {
   if (ncol(x) == nrow(x) && det(x) != 0) {
     m <- NULL
     set <- function(y) {
       x <<- y
       m <<- NULL
     }
     get <- function() x
     setinverse <- function() m <<- solve(x)
     getinverse <- function() m
     list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
   } else {
     return("The matrix is not invertible.")
   }
 }


## Write a short comment describing this function

cache_matrix <- makeCacheMatrix(my_matrix)
 cache_matrix$get()
 cache_matrix$setinverse()
 cache_matrix$getinverse()

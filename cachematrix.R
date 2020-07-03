
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cachedInverse <- NULL
  Get <- function() x
  Set <- function(matrixToSet)
  {
    x <<- matrixToSet
    cachedInverse <<- NULL
  }
  
  SetInverse <- function()
  {
    cachedInverse <<- solve(x)
  }
  
  GetInverse <- function() cachedInverse
  list(Get = Get, Set= Set, SetInverse = SetInverse, GetInverse = GetInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  val <- x$GetInverse()
  if(!is.null(val)) {
    message("Getting the cached value")
    return(val)
  }
  
  x$SetInverse()
  inverseMatrix <- x$GetInverse()
  inverseMatrix
}
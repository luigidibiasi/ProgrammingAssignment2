## Put comments here that give an overall description of what your
## functions do

## This function return a matrix object that cache it own reverse 

## I optimized the code in order to avoid some IF into cacheSolve.
## the reverse matrix will be cached immediatly.


makeCacheMatrix <- function(x = matrix()) {
  M <- x # the real matrix
  Mi <- solve(M)
  get <- function() M # function to retrieve M
  getReverse <- function() Mi
  list(get=get,getReverse=getReverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        x$getReverse()
}

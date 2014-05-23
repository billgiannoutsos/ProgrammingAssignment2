#This function creates a special "matrix" object that can cache its inverse.
#Computing the inverse of a square matrix can be done with the solve function in R. For example, if X is a square invertible matrix, then solve(X) returns its inverse.

makeCacheMatrix <- function(x=numeric())
{
  s <- NULL
  set <- function(y)
  {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}
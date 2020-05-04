## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeVector <- function(x = matrix()) {
  inverse<- NULL
  set <- function(y) {
    x <<- y
    inversed <<- NULL
  }
  get <- function() x
  setInversed <- function (newInversed) inverse <<- newInversed
  getInversed <- function() inversed
  list(set = set, get = get, setInversed = setInversed, getInversed = getInversed)
}

## The function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse is  already 
## been calculated , then the cachesolve function retrieves the inverse from the cache.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         inversed <- x$getInversed()
  
  if(!is.null(inversed)) {
    message("getting cached data")
    return(inversed)
  }
  
  data <- x$get()
  inversed <- solve(data, ...)
  x$setInversed(inversed)
  
  inversed
}


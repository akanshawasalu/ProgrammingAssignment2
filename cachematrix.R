## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL                     #initializing inverse to null
  set <- function(y){
    x <<- NULL
  }
  get <- function(){x}            #function to get matrix x
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function(){inv}               #getting inverse
  list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){                            #checking if inverse is null
    message("getting cached data")
  }
  mat <- x$get()
  inv <- solve(mat, ...)        #calculates inverse value
  x$setInverse(inv)
  inv
}

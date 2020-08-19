## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    #set the matrix of which inverse needs to be computed
    x <<- y
    i <<- NULL
  }
  get <- function() x #return the original matrix
  setinverse <- function(inverse) i <<- inverse #set the inverse of matrix
  getinverse <- function() i #get the inverse
  list(set = set, get = get,
          setmean = setmean,
          getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data) # calculating the inverse
  x$setinverse(i)
  i
}

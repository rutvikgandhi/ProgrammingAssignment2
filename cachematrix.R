## Pair of functions that cache the inverse of matrix


## function that create a special matrix object and cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


##computes inverse of the special matrix ,if inverse is already calculated it will 
## retrive from the cache.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(n)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
       

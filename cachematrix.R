## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function defines "object" with its methods (setters and getters)
## also allowing to cache result of matrix inverse operation

makeCacheMatrix <- function(x = matrix()) {
    im <- NULL
    set <- function(y) {
        x <<- y
        im <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) im <<- inverse
    getinverse <- function() im
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
## function checks if inverse of matrix is cached
## or calculates it if cache is empty

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    im <- x$getinverse()
    if(!is.null(im)){
        message("getting cached date")
        return(im)
    }
    m <- x$get()
    im <- solve(m)
    x$setinvers(m)
    im
}

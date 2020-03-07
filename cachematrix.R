library(matlib)
## makeCacheMatrix produces a list with functions for setting the matrix
##, getting the matrix value, setting the matrix's inverse, and getting the 
## matrix's inverse. cacheSolve uses the cached inverse if there is an inverse
##in the list made by the first function. If there is no inverse, cacheSolve
## adds the inverse to the list. This function prints the inverse.

## makeCacheMatrix provides a list of functions that allows you to set and
##retrieve the matrix, and set and retrieve the matrix's inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get,
         setinverse=setinverse,
         getinverse=getinverse)
}


## cacheSolve produces the matrix's inverse by either using cached inverse
## or generating the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- inv(data, ...)
    x$setinverse(inv)
    inv
}

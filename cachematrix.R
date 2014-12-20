## These 2 functions allow the inverse of a matrix to be "cached"
## meaning that it is stored in the global environment and can be
## accessed even if the function in which the variable with the
## value assigned has already been called.

## This function creates a list of functions for a matrix which
## caches the value of "slv" --> the variable that will hold the
## solution to the inverse matrix. With this function the initial
## value of "slv" is null.

makeCacheMatrix <- function(x = matrix()) {

}


## This function calculates the inverse of the matrix passed as the
## arguement for makeCacheMatrix and stores the value in "slv". This
## value is cached in the global environment.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

cacheSolve<-function(x,...){ #this function depends on "x" as a variable that takes the output of the makeCacheMatrix function
    slv<-x$getsolve() #assigns the output of the "getsolve" subfunction of makeCacheMatrix to "slv" in the local environment.
    if(!is.null(slv)){ #this message will be returned only if the value of "slv" is NOT null. If it is null there will be no message.
        message("getting cached data")
    }
    data<-x$get() #creates a variable "data" in the local environment that takes the output of the "get" subfunction of "makeCacheMatrix"
    slv<-solve(data,...) #calculates the inverse of the matrix produced by "get" and stores the value in "slv" in the local environment
    x$setsolve(slv) #stores the value from the previous line in the variable "slv" in the global environment.
    slv #the output is the variable "slv".
}
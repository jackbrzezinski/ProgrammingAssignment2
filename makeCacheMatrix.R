makeCacheMatrix <- function(x=matrix()){  
    slv<-NULL #assigns null to "slv" in the local environment
    set<-function(y){ #"set" is a function that will assign values to x and slv in the global environment
        x<<-y #assigns y to "x" in the global environment (superassignment)
        slv<<-NULL #assigns null to "slv" in the global environment (superassignment)
    }
    get<-function()x #defines "get" as a function that returns the value of x
    setsolve<-function(solve) slv <<- solve #defines "setsolve" as a function that assigns the arguement "solve" to the variable "slv" in the global environment
    getsolve <- function()slv #defines "getsolve" as a function that returns the value of "slv"
    list(set=set,get=get,setsolve=setsolve,getsolve=getsolve) #the output of the makeCacheMatrix function is a list of the 4 functions defined within
}
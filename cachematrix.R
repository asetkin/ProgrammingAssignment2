## My project do my programming assignment on week 3 ;)
## actually it do some cash (cache) of Matrix

## like in example in assignment (with vector) my function do: 
## create matrix object, inverse value and save it 

makeCacheMatrix <- function(x = matrix()) {
## create invMatrix variable and make its value NULL
        invMatrix<-NULL
## make set function, that look x in the global environment and give it y
## variable
        set<-function(y) {
                x<<-y
## make NULL again in invMatrix variable in global environment
                invMatrix<<-NULL
        }
## create function get for taking value of inverse 
        get<-function() x
## calculate inverse with solve
        setInverse<-function(solve) invMatrix
        getInverse<-function() invMatrix
        list (set = set,
              get  = get,
              setInverse=setInverse,
              getInverse=getInverse)
}


## second function computes the inverse, check for changes if it was
## already calcuated and retrive the inverse from the cache

cacheSolve <- function(x, ...) {
       invMatrix<-x$getInverse ()
## check for existing inverse
       if (!is.null(invMatrix)) {
               message ("getting cached data")
               return(invMatrix)
       }
## calculate inverse of matrix
       calc<-x$get()
       invMatrix<-solve(calc, ...)
       x$setInverse(invMatrix)
## print inverse       
       print(invMatrix)
}

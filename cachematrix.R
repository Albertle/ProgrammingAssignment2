## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## this function generate a special matrix;
## to be more precise this function return a special
## data structure which contain several funciton
## operaing on the matrix you passed as argument;
## the getint function return null or the inverse of the matrix;
## the setinv function will set the value of the inverse;
## set and get function will set or get the matrix;

makeCacheMatrix <- function(x = matrix()) {
        inv = NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function(){
                x
        }
        setinv <- function(inverse){
                inv <<- inverse
        }
        getinv <- function(){
                inv
        }
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function

## thie function get or calculate the inverse of the special matrix
## if the matrix data structure already contain the inverse value
## that is the inv attribute is not NULL, it will return this value directly
## and print a message;
## else it will calculate the inverse and set the vaule to the special matrix object
## and the next you want to get the inverse of the matix there is no need to calculate 
## it again which will promote the performance of your program

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)){
                message("getting cached inverse value")
                return(inv)
        }else{
                m <- x$get()
                inv <- solve(m,...)
                x$setinv(inv)
                return(inv)
        }
}

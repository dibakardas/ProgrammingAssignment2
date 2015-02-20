makeCacheMatrix <- function(mat = matrix()) 
{
  
  if(!is.matrix(mat)) stop("input should be a matrix")
  
  inverse_matrix <-matrix(NA,nrow(mat),ncol(mat))
  
  store_matrix<-matrix(NA,nrow(mat),ncol(mat))
  
  setInverse<-function(m)
  {
    print("setInverse called...")
    inverse_matrix<<-m
  }
  getInverse<-function(m)
  {
    print("getInverse called...")
    inverse_matrix
  }
  setMatrix<-function(m)
  {
    print("setMatrix called...")
    store_matrix<<-m
  }
  getMatrix<-function()
  {
    print("getMatrix called...")
    store_matrix
  }
  
  if (!identical(mat,store_matrix))
  setMatrix(mat)
  
  list(setInverse1 = setInverse, getInverse1 = getInverse,
       setMatrix1 = setMatrix,
       getMatrix1 = getMatrix)
}

cacheSolve <- function(mat = list()) 
{
  if(!is.list(mat)) stop("input should be a list")
 
  inverse_mat<-mat$getInverse()
  
  if (!identical(inverse_mat[1,1],NA))
  {
    print("getting from cache...")
    return(inverse_mat)
  }
  
  print("calculating inverse...")
  
  inverse_mat = solve(mat$getMatrix())
  
  mat$setInverse(inverse_mat)
  
  inverse_mat
}


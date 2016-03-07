## Test suite for cachematrix.R

library(testthat)
source("cachematrix.R")

test_that("Inverse of 2x2 matrix", {
    m <- matrix(c(2, 0, 0, 2), nrow=2, ncol=2)
    cm <- makeCacheMatrix(m)
    im <- cacheSolve(cm)
    
    expected <- matrix(c(0.5, 0, 0, 0.5), nrow=2, ncol=2)
    expect_equal(expected, im)
})

test_that("Inverse of identity is identity", {
    m <- matrix(c(1, 0, 0, 1), nrow=2, ncol=2)
    cm <- makeCacheMatrix(m)
    im <- cacheSolve(cm)
    
    expect_equal(m, im)
})
\name{CVTuningCov-package}
\alias{CVTuningCov-package}
\alias{CVTuningCov}
\docType{package}
\title{
Select Tuning Parameters based on CV in Regularized Estimators of Covariance Matrices
}
\description{
This is a package for selecting tuning parameters based on cross-validation (CV) in regularized estimators of large covariance matrices. Four regularized methods are implemented: banding, tapering, hard-thresholding and soft-thresholding. Two types of matrix norms are applied: Frobenius norm and operator norm. Two types of CV are considered: K-fold CV and random CV. Usually K-fold CV use K-1 folds to train a model and the rest one fold to validate the model. The reverse
version trains a model with 1 fold and validates with the rest with K-1
folds. Random CV randomly splits the data set to two
parts, a training set and a validation set with user-specified sizes. 
}
\details{
\tabular{ll}{
Package: \tab CVTuningCov\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-07-31\cr
License: \tab GPL-2\cr
}
%~~ An overview of how to use the package, including the most important ~~
%~~ functions ~~
}
\author{
Binhuan Wang

Maintainer: Binhuan Wang <binhuan.wang@nyumc.org>
}
\references{
Fang, Y., Wang, B. and Feng, Y. (2013). Tuning parameter selection in regularized estimations of large covariance
matrices. Available at: http://arxiv.org/abs/1308.3416.
}
%~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
%~~ the R documentation directory ~~
\keyword{ banding}
\keyword{ covariance matrix}
\keyword{ cross-validation}
\keyword{ Frobenius norm}
\keyword{ operator norm}
\keyword{ thresholding }

\examples{
library(MASS);
n <- 50;
p <- 50;
fold <- 3;
k.grid <- seq(0,2*(p-1),by=1);
Sigma <- AR1(p, rho=0.6);
X <- mvrnorm(n,rep(0,p),Sigma);
CV.F.fit <- regular.CV(X,k.grid, method='Tapering',fold=fold,norm='F');
CV.F.fit$CV.k;
}

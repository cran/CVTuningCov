\name{regular.CV}
\alias{regular.CV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Select Tuning Parameter for Regularized Covariance Matrix by K-fold CV 
}
\description{
Apply K-fold cross-validation (CV) to select tuning parameters for regualrized covariance matrix with
banding, tapering, soft-thresholding or hard-thresholding method under the Frobenius norm
or the operator norm. Two versions of K-fold CV are applied: 1) the regular one, K-1
folds are used to train and 1 fold
is used to validate; 2) the reverse one, 1 fold is used to train and K-1 folds are used 
to validate.
}
\usage{
regular.CV(X, k.grid = 0.5, method = "Tapering", fold = 5, norm = "F", seed=10323)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
input data matrix with dimension \code{n*p}. \code{n} indicates the sample size
and \code{p} indicates the dimension of the corresponding random vector.
}
  \item{k.grid}{
the default value is 0.5.
}
  \item{method}{
the regularized method, which can be "Banding", "Tapering", "HardThresholding" or "SoftThresholding".
the default value is "Tapering".
}
  \item{fold}{
the number of folds in K-fold CV. integers only. the default number is 5.
}
  \item{norm}{
the norms which can be used to measure the estimation accuracy, which can be
the Frobenius norm "F" or the operator norm "L2".
}
  \item{seed}{
the default value is 10323.
}
}

\value{
A list including elements:
%%  If it is a LIST, use
  \item{CV.k        }{a 2-dimensional vector denoting the optimal tuning parameters selected 
    by K-fold CV with its first component as the one from regular version and 
    its second component as the one from the reverse version.}
  \item{k.grid      }{the vector of tuning parameters}
  \item{CV.pre.error}{a matrix with two columns denoting predicting errors by K-fold CV at each
  element of tuning parameters based on the selected norm with its first column demoting  
  the values from regular version and the second column denoting the values from the reverse version.
  The number of rows equals the length of the vector for tuning parameters.}
}

\author{
Binhuan Wang
}

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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ K-fold cross-validation }
\keyword{ covariance matrix }% __ONLY ONE__ keyword per line

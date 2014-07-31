\name{random.CV}
\alias{random.CV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Select Tuning Parameter for Regularized Covariance Matrix by Random CV 
}
\description{
Apply a random cross-validation (CV) to select tuning parameters for regualrized covariance matrix with
banding, tapering, soft-thresholding or hard-thresholding method under the Frobenius norm
or the operator norm. The random CV randomly splits the data set to two
parts, a training set and a validation set with user-specifed sizes, and repeats the process for multiple times.
}
\usage{
random.CV(X, k.grid = 0.5, method = "Tapering", test.size = 5, norm = "F", 
boot.num = 50, seed = 10323)
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
  \item{test.size}{
the size of the validation set, which should be \code{< n}.
}
  \item{norm}{
the norms which can be used to measure the estimation accuracy, which can be
the Frobenius norm "F" or the operator norm "L2".
}
  \item{boot.num}{
the number of random split. The default value is 50.
}
  \item{seed}{
the default value is 10323.
}
}

\value{
A list including elements:   
%%  If it is a LIST, use
  \item{CV.k        }{the optimal tuning parameter selected by the random CV.}
  \item{k.grid      }{the vector of tuning parameters}
  \item{CV.pre.error}{a vector denoting predicting errors by random CV at each
  element of tuning parameters based on the selected norm.}
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
CV.F.fit <- random.CV(X,k.grid, method='Tapering',test.size = 10,norm='F');
CV.F.fit$CV.k;
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ cross-validation }
\keyword{ covariance matrix }% __ONLY ONE__ keyword per line

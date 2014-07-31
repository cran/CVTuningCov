\name{tapering}
\alias{tapering}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
A Tapering Operator on A Matrix
}
\description{
Generate a tapering operator with given dimention and tuning parameter. Multiplying 
it on a covariance matrix by componentwise product can provide a regularized estimator
with the tapering method.
}
\usage{
tapering(p, k = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
the dimension of a covariance matrix.
}
  \item{k}{
the tuning parameter of the tapering method. The default value is 1. 
}
}

\value{
a \code{p*p} matrix.
}
\references{
Cai, T, Zhang, CH and Zhou, H, Optimal rates of convergence for covariance
matrix estimation, Annals of Statistics, 38, 2118-2144 (2010).
}
\author{
Binhuan Wang
}

\examples{
p <- 5;
W <- tapering(p,k=2) ;
W;
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ tapering }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

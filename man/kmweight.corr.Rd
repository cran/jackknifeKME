\name{kmweight.corr}
\alias{kmweight.corr}
\title{
Compute corrected Kaplan-Meier weights for jackknifing}
\description{
These are the adjusted Kaplan-Meier weights. The adjustment is made to the original Kaplan-Meier weights for being used in jackknifing to estimate Kaplan-Meier estimators. The adjustment is ocurred if and only if \code{delta_(n-1)=0} and \code{delta_(n)=1}. For details see Stute and Wang (1994), Khan and Shaw (2012b). 
}
\usage{
kmweight.corr(Y, delta)
}
\arguments{
  \item{Y}{survival time.}
  \item{delta}{status.}
}
\value{
The corrected Kaplan-Meier weights are obtainable if the underlying censoring is the right censoring.
\item{kmwts}{corrected Kaplan-Meier weights}
}
\references{
Khan, M. H. R. and Shaw, J. E. H. (2012b). Robust bias estimation for Kaplan-Meier survival estimator with jackknifing (Preprint).

Stute, W. and Wang, J. (1994). The jackknife estimate of a Kaplan-Meier integral. Biometrika 81, 602-606.
}
\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\examples{
#Using simdata function. Censoring level is 50\%.
data<-simdata(n = 100,lambda = 2.04) 
kmwc<-kmweight.corr(data$Y, data$delta)
kmwc
}
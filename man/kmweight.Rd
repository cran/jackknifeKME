\name{kmweight}
\alias{kmweight}
\title{
Compute Kaplan-Meier weights}
\description{
Provide Kaplan-Meier weights for Stute's weighted least squares method.
}
\usage{
kmweight(Y, delta)
}
\arguments{
  \item{Y}{survival time.}
  \item{delta}{status}
}

\details{Kaplan-Meier weights are the mass attached to the uncensored observations. The weights are used to account for censoring into the calculation for many methods. For example, in the Stute's weighted least squares method (Stute and Wang, 1994)) that is applied for censored data.}

\value{
  \item{kmwts}{Kaplan-Meier weights}
}
\references{
Stute, W. and Wang, J. (1994). The jackknife estimate of a Kaplan-Meier integral. Biometrika 81, 602-606.}
\author{
Hasinur Rahaman Khan and Ewart Shaw
}

\examples{
#Using simdata function and considering censoring level at 50\%.
data<-simdata(n = 100,lambda = 2.04) 
kmw<-kmweight(data$Y, data$delta)
kmw
}

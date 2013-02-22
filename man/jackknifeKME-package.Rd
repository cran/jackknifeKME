\name{jackknifeKME-package}
\docType{package}
\title{Jackknife estimates of Kaplan-Meier estimators or integrals.}
\description{
The package is for computing both the original and modified jackknife estimates of Kaplan-Meier estimators.}
\details{For computing bias of Kaplan-Meier survival estimators the jackknifing (Stute and Wang, 1994) is a natural
 choice among the researchers because it reduces bias substantially. The package provides the original (Stute and Wang, 1994) and the modified (Khan and Shaw, 2012b) jackknife estimates for Kaplan-Meier estimators and their corresponding variances. The package also compute bias corrected jackknife estimates for Kaplan-Meier estimators under both approaches.
\tabular{ll}{
Package: \tab jackknifeKME\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-02-22\cr
License: \tab GPL-2\cr
Depend: \tab imputeYn (>= 1.1)\cr}
}
\author{
Hasinur Rahaman Khan and Ewart Shaw
Maintainer: Hasinur Rahaman Khan <hasinurkhan@gmail.com>
}
\references{
Khan, M. H. R. and Shaw, J. E. H. (2012a). On dealing with censored largest observations under weighted least squares (Preprint).

Khan, M. H. R. and Shaw, J. E. H. (2012b). Robust bias estimation for Kaplan-Meier survival estimator with jackknifing (Preprint).

Stute, W. and Wang, J. (1994). The jackknife estimate of a Kaplan-Meier integral. Biometrika 81, 602-606.

Stute, W. (1993). Consistent estimation under random censorship when covariables are
available. Journal of Multivariate Analysis, 45, 89-103.
}
\keyword{jackknife}
\keyword{imputeYn}

\examples{
#For full data typically used for AFT models (using imputeYn package).
#For mean lifetime estimator.
data<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
kme1<-jackknifeKME(data$x,data$y, data$delta, method="condMean",estimator = 1)
kme1
}

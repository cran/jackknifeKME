\name{jackknifeKME-package}
\docType{package}
\title{Jackknife Estimates of Kaplan-Meier Estimators or Integrals}
\description{
Computing the original and modified jackknife estimates of Kaplan-Meier estimators.}
\details{For computing bias of Kaplan-Meier survival estimators the jackknifing (Stute and Wang, 1994) is a natural
 choice among the researchers because it reduces bias substantially. The package provides the original (Stute and Wang, 1994) and the modified (Khan and Shaw, 2015) jackknife estimates for Kaplan-Meier estimators and their corresponding variances. The package also compute bias corrected jackknife estimates for Kaplan-Meier estimators under both approaches.
\tabular{ll}{
Package: \tab jackknifeKME\cr
Type: \tab Package\cr
Version: \tab 1.2\cr
Date: \tab 2015-10-23\cr
License: \tab GPL-2\cr
Depend: \tab imputeYn\cr}
}
\author{
Hasinur Rahaman Khan and Ewart Shaw
Maintainer: Hasinur Rahaman Khan <hasinurkhan@gmail.com>
}
\references{
Khan and Shaw (2015) imputeYn: Imputing the last largest censored
observation/observations under weighted least squares. R package version
1.3, \url{https://cran.r-project.org/package=imputeYn}.

Khan and Shaw. (2013). On Dealing with Censored Largest Observations under Weighted Least Squares. CRiSM working paper, Department of Statistics, University of Warwick, UK, No. 13-07. Also available in \url{http://arxiv.org/abs/1312.2533}.

Khan and Shaw. (2015). Robust bias estimation for Kaplan-Meier Survival Estimator with Jackknifing. Journal of Statistical Theory and Practice, (published online; DOI:10.1080/15598608.2015.1062833). Also available in \url{http://arxiv.org/abs/1312.4058}.

Stute, W. and Wang, J. (1994). The jackknife estimate of a Kaplan-Meier integral. Biometrika 81, 602-606.

Stute, W. (1993). Consistent estimation under random censorship when covariables are
available. Journal of Multivariate Analysis, 45, 89-103.
}
\keyword{jackknife}
\keyword{imputeYn}

\examples{
#For full data typically used for AFT models (using imputeYn (2015) package).
#For mean lifetime estimator.
data1<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
kme1<-jackknifeKME(data1$x,data1$y, data1$delta, method="condMean",estimator = 1)
kme1
}

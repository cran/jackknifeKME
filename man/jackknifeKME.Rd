\name{jackknifeKME}
\alias{jackknifeKME}
\title{Jackknife estimates of Kaplan-Meier estimators or integrals}
\description{
This function computes the jackknife estimates of Kaplan-Meier estimators.}
\usage{
jackknifeKME(X, Y, delta, method = "PDQ", estimator = 1)
}

\arguments{
  \item{X}{
covariate matrix under study, particularly for AFT modelling. The order of matrix covariate is typically n by p. If there is no covariates available then it can be ommitted under only the PDQ method. See last two examples. X must be a matrix of order at least n by 2 under the methods, RcondMean and RcondMedian.
}
  \item{Y}{
typically the logarithmic of the survival time under AFT models. Otherwise survival time.
}
  \item{delta}{
status. it includes value 1 for uncensored and value 0 for censored subject.
}
  \item{method}{
imputing methods for the last largest censored observations under right censoring. The methods satisfy the basic right censoring assumption and also the Efron's redistribution algorithm. For details see Khan and Shaw (2013). One of "condMean (conditional mean)", "condMedian" (conditional median), "RcondMean (resampling based conditional mean)", "RcondMedian (resampling based conditional median)", "PDQ (predicted difference quantity)". Default is "PDQ". Here only "PDQ" method works without covariate (X). }
  \item{estimator}{
Kaplan-Meier estimator for the K-th F-moment. 1 for Kaplan-Meier mean lifetime estimator, 2 for Kaplan-Meier estimator for 2nd F-moment. Similarly, for higher order F-moment, value for estimator is used accordingly. Default is 1.
}
}
\details{This function computes the jackknife estimates of Kaplan-Meier estimators, the jackknife estimates of bias of Kaplan-Meier estimators, the bias corrected jackknife estimates of Kaplan-Meier estimators. This gives also modified  jackknife estimates of bias of Kaplan-Meier estimators, the modified bias  corrected jackknife estimates of Kaplan-Meier estimators.

The original jackknife estimate of bias for kaplan-Meier lifetime estimator is nonzero if and only if status of the last largest datum and second to the last largest datum are defined as \code{delta_(n)=1} and \code{delta_(n-1)=0} respectively (Stute and Wang, 1994) i.e., under pair (\code{delta_(n)=1}, \code{delta_(n-1)=0}). But the modified Kaplan-Meier estimate is nonzero if only \code{delta_(n-1)=0}. Furthermore, a modified Kaplan-Meier estimator and its jackknife estimate is developed when (\code{delta_(n)=0}, \code{delta_(n-1)=0}) (Khan and Shaw, 2015). There are different types of Kaplan-Meier lifetime estimators in practice. In Khan and Shaw (2015) only the mean lifetime estimator and one higher order (say, 2-nd) F-moment estimator are used for illustration purpose. 

}
\value{
A "jackknifeKME" object is returned. It includes
\item{km.est}{Kaplan-Meier estimate}
\item{modkm.est}{modified Kaplan-Meier estimate}
\item{Jbias.kme}{jackknife estimate of bias of Kaplan-Meier estimator}
\item{Bcorr.Jkme}{bias corrected jackknife estimate of Kaplan-Meier estimator}
\item{modJbias.kme}{modified jackknife estimate of bias of Kaplan-Meier estimator}
\item{Bcorr.modJkme}{bias corrected modified jackknife estimate of Kaplan-Meier estimator}

}

\references{
Khan and Shaw (2015) imputeYn: Imputing the last largest censored
observation/observations under weighted least squares. R package version
1.3, \url{https://cran.r-project.org/package=imputeYn}.

Khan and Shaw. (2013). On Dealing with Censored Largest Observations under Weighted Least Squares. CRiSM working paper, Department of Statistics, University of Warwick, UK, No. 13-07. Also available in \url{http://arxiv.org/abs/1312.2533}.

Khan and Shaw. (2015). Robust bias estimation for Kaplan-Meier Survival Estimator with Jackknifing. Journal of Statistical Theory and Practice, (published online; DOI:10.1080/15598608.2015.1062833). Also available in \url{http://arxiv.org/abs/1312.4058}.

Stute, W. and Wang, J. (1994). The jackknife estimate of a Kaplan-Meier integral. Biometrika 81, 602-606.
}

\author{Hasinur Rahaman Khan and Ewart Shaw}

\examples{
#For full data typically used for AFT models (using imputeYn (2015) package). 
#For mean lifetime estimator.
data<-data(n=100, p=4, r=0, b1=c(2,2,3,3), sig=1, Cper=0)
kme1<-jackknifeKME(data$x,data$y, data$delta, method="condMean",estimator = 1)
\donttest{kme1}

#Estimates are for mean lifetime estimators.Data contain only status and survival time.  
data2<-simdata(n = 100,lambda = 2.04) 
data2$delta[length(data2$delta)]<-0 
kme2<-jackknifeKME(, data2$Y, data2$delta, method="PDQ",estimator = 1)
\donttest{kme2}

#Estimates are for Kaplan-Meier 2nd order F-moment.
data3<-simdata(n = 100,lambda = 2.04) 
data3$delta[length(data3$delta)]<-0 
kme3<-jackknifeKME(, data3$Y, data3$delta, method="PDQ",estimator = 2)
\donttest{kme3}
}

\keyword{jackknife}
\keyword{bias}

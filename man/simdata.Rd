\name{simdata}
\alias{simdata}
\title{Generating survival data}
\description{
Generate survival data by keeping the second last largest subject as censored.}
\usage{simdata(n, lambda)}
\arguments{
  \item{n}{the sample size.}
  \item{lambda}{value of the parameter \code{lambda} for Uniform distribution. Different values of \code{lambda} are analytically computed to obtain specific censoring percentages. \code{lambda} takes values 7.53, 4.81, 3.48, 2.64, 2.04, 1.58, 1.20, 0.87, 0.55 for corresponding censoring percentages 10, 20, 30, 40, 50, 60, 70, 80, 90.} 
}
\details{
Data are generated always keeping the second last largest subject as censored i.e. \code{delta_(n-1)=0}. The survival times and the censoring times are generated using log-normal(1.1, 1) and Uniform(\code{lambda}, 2x\code{lambda}) distribution respectively. This type of data is required to compute the actual and modified jackknife estimates of Kaplan-Meier estimators and their bias. This data is used in Khan and Shaw (2015).}
\value{
\item{Y}{survival times censored or uncensored i.e. min(t, c)}
\item{delta}{status}
\item{Cper}{censoring percentage. Different censoring percentages are obtained for different values of \code{lambda} of censoring time distribution}
}
\references{
Khan and Shaw. (2015). Robust bias estimation for Kaplan-Meier Survival Estimator with Jackknifing. Journal of Statistical Theory and Practice, (published online; DOI:10.1080/15598608.2015.1062833). Also available in \url{http://arxiv.org/abs/1312.4058}.
}

\author{Hasinur Rahaman Khan and Ewart Shaw
}
\seealso{jackknifeKME}
\examples{
#For Cper = 30\%.
data<-simdata(n = 100,lambda = 3.48)
data 

#For Cper = 50\%.
data2<-simdata(n = 100,lambda = 2.04) 
data2

#For Cper = 80\%.
data3<-simdata(n = 100,lambda = 0.87) 
data3
}
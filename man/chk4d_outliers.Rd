\name{chk4d_outliers}
\alias{chk4d_outliers}
\title{
Report the outlier values for all numerical fields
}
\description{
This function provide a report showing all outlier values for each numerical fields.
The function will try to automatically determine the type of distribution (between Normal and Log-Normal) based on the difference between mean and median between untransformed normalized and log transformed normalized distribution.
}
\usage{
chk4d_outliers(ds,
               sdval,
               reportingcol,
               enumeratorID,
               enumeratorcheck)
}
\arguments{
  \item{ds}{
dataset as a data.frame object
}
  \item{sdval}{
number of standard deviation for which the data within is considered as acceptable
}
  \item{reportingcol}{
columns as a list of string name from the dataset you want in the result (c('col1','col2',...))
}
  \item{enumeratorID}{
name as a string of the field in the dataset where the enumerator ID is stored (NOT USED: use the reportingcol instead)
}
  \item{enumeratorcheck}{
specify if the report has to be displayed for each enumerator or not as a boolean (TRUE/FALSE) (NOT USED: use the reportingcol instead)
}
}
\value{
\item{logf }{the report}
}
\author{
Yannick Pascaud
}
\examples{
  df<-sample_dataset
  sdv<-2
  rc<-c("enumerator_id","X_uuid")
  eid<-"enumerator_id"
  ec<-FALSE

  chk4d_outliers(df, sdv, rc , eid, ec)
}

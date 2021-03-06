\name{chk2b_unique_id}
\alias{chk2b_unique_id}
\title{
check for duplicates in unique ID
}
\description{
This function check that all interviews in the dataset have an ID which is unique.
There is an option to automatically mark for deletion the surveys which have a duplicated unique ID.
}
\usage{
chk2b_unique_id(ds,
                UniqueID,
                survey_consent,
                reportingcol,
                delete)
}
\arguments{
  \item{ds}{
dataset as a data.frame object
}
  \item{UniqueID}{
name as a string of the field in the dataset where the unique ID is stored
}
  \item{survey_consent}{
name as a string of the field in the dataset where the survey consent is stored
}
  \item{reportingcol}{
columns as a list of string name from the dataset you want in the result (c('col1','col2',...))
}
  \item{delete}{
delete action to be done as a boolean (TRUE/FALSE)
}
}
\value{
\item{ds }{same dataset as the inputed one but with survey marked for deletion if errors are found and delete=TRUE}
\item{errors }{list of the errors found}
}
\author{
Yannick Pascaud
}
\examples{
  df<-sample_dataset
  uuid<-"X_uuid"
  sc<-"survey_consent"
  rc<-c("enumerator_id","X_uuid")
  dl<-FALSE

  chk2b_unique_id(df, uuid, sc, rc, dl)
}

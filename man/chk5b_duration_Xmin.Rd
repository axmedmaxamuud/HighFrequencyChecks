\name{chk5b_duration_Xmin}
\alias{chk5b_duration_Xmin}
\title{
Check that the duration of each interview is more than a threshold
}
\description{
This function check that the duration of each interview is more than a specified threshold.
There is an option to automatically mark for deletion the surveys which are under the threshold.
}
\usage{
chk5b_duration_Xmin(ds,
                    survey_consent,
                    dates,
                    reportingcol,
                    minduration,
                    delete)
}
\arguments{
  \item{ds}{
dataset as a data.frame object
}
  \item{survey_consent}{
name as a string of the field in the dataset where the survey consent is stored
}
  \item{dates}{
fields as a list of string where the survey start and end date is stored (c('start_date','end_date'))
}
  \item{reportingcol}{
columns as a list of string name from the dataset you want in the result (c('col1','col2',...))
}
  \item{minduration}{
minimum acceptable survey duration as integer
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
\section{Warning }{
If there are uncorrected mistakes in the survey dates, it can lead to have the length of the survey in seconds and this check will not performed well
}
\examples{
  df<-sample_dataset
  sc<-"survey_consent"
  dt<-c("survey_start","end_survey")
  rc<-c("enumerator_id","X_uuid")
  md<-30
  dl<-FALSE

  chk5b_duration_Xmin(df, sc, dt, rc, md, dl)
}

\name{chk1di_GIS_site}
\alias{chk1di_GIS_site}
\title{
Check if the surveys are made in the correct site
}
\description{
This function check that all interviews in the dataset were made in the correct site. It is based on a GIS shapefile providing the boundaries of each site with their names. The function is based on the GPS data filled in the survey to determine their location.
There is an option to automatically correct the site in the surveys whith the correct location.
}
\usage{
chk1di_GIS_site(adm,
                ds,
                ds_site,
                ds_coord,
                adm_site,
                survey_consent,
                reportingcol,
                correct)
}
\arguments{
  \item{adm}{
dataset containing the shapefile
}
  \item{ds}{
dataset as a data.frame object
}
  \item{ds_site}{
name as a string of the field in the dataset where the site is stored
}
  \item{ds_coord}{
columns as a list of string name from the dataset where the GPS coordinates are stored (c('Long','Lat'))
}
  \item{adm_site}{
name as a string of the field in the shapefile where the site is stored
}
  \item{survey_consent}{
name as a string of the field in the dataset where the survey consent is stored
}
  \item{reportingcol}{
columns as a list of string name from the dataset you want in the result (c('col1','col2',...))
}
  \item{correct}{
correction action to be done as a boolean (TRUE/FALSE)
}
}
\value{
\item{ds }{same dataset as the inputed one but with the site in the surveys corrected if errors are found and correct=TRUE}
\item{errors }{list of the errors found}
}
\author{
Yannick Pascaud
}
\section{Warning }{
Regardless the projection used for the shapefile, it is transformed to WGS84
}
\examples{
  admin<-admin
  df<-sample_dataset
  df_site<-"union_name"
  df_coord<-c("X_gps_reading_longitude","X_gps_reading_latitude")
  admin_site<-"Union"
  sc<-"survey_consent"
  rc<-c("enumerator_id","X_uuid")
  co<-FALSE

  chk1di_GIS_site(admin, df, df_site, df_coord, admin_site, sc, rc, co)
}

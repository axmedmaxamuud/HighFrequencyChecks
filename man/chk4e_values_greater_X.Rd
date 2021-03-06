\name{chk4e_values_greater_X}
\alias{chk4e_values_greater_X}
\title{
Report the values greater than a specified value per specified fields
}
\description{
This function provide a report showing all values which are greater than a certain threshold for a specified list of fields.
}
\usage{
chk4e_values_greater_X(ds,
                       questions,
                       value,
                       reportingcol,
                       enumeratorID,
                       enumeratorcheck)
}
\arguments{
  \item{ds}{
dataset as a data.frame object
}
  \item{questions}{
columns as a list of string name from the dataset you want to check against (c('col1','col2',...))
}
  \item{value}{
maximum acceptable value as integer for the checked fields
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
  qu<-c("consent_received.food_security.spend_food",
        "consent_received.food_security.spend_medication",
        "consent_received.food_security.spend_education",
        "consent_received.food_security.spend_fix_shelter",
        "consent_received.food_security.spend_clothing",
        "consent_received.food_security.spend_hygiene",
        "consent_received.food_security.spend_fuel",
        "consent_received.food_security.spend_hh_items",
        "consent_received.food_security.spend_transport",
        "consent_received.food_security.spend_communication",
        "consent_received.food_security.spend_tobacco",
        "consent_received.food_security.spend_rent",
        "consent_received.food_security.spend_debts",
        "consent_received.food_security.spend_other")
  v<-25000
  rc<-c("enumerator_id","X_uuid")
  eid<-"enumerator_id"
  ec<-FALSE

  chk4e_values_greater_X(df, qu, v, rc, eid, ec)
}

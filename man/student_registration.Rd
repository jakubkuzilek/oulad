% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oulad.R
\docType{data}
\name{student_registration}
\alias{student_registration}
\title{Student registration data from OULAD dataset}
\format{A data frame with 32593 rows and 5 variables:
\describe{
   \item{code_module}{Course name, for which student registered}
   \item{code_presentation}{Semester name, for which student registered}
   \item{id_student}{Unique student identifier, connects to dataset student}
   \item{date_registration}{Date of student registration to course in days from
   official start. It can be negative - student registered before course started.}
   \item{date_unregistration}{Date of student deregistered from course in days from
   official start. It can be negative - student deregistered before course started.
   NA value means that student finished course.}
}}
\source{
\url{https://analyse.kmi.open.ac.uk/open_dataset}
}
\usage{
data(student_registration)
}
\description{
Dataset provides information about (de-)registration dates of students for
courses.
}
\seealso{
\code{\link{oulad}}
}
\keyword{datasets}


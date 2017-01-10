#' oulad: Open University Learning Analytics dataset package
#'
#' This package provides the OULAD dataset in RData format ready to load in R.
#' Data are complex thus they are splitted into several data frames. For privacy
#' resons names of courses are generic and the demographical data of students have
#' been anonymised using ARX toolbox (\url{http://arx.deidentifier.org/anonymization-tool/}).
#' For full description please visit \url{https://analyse.kmi.open.ac.uk/open_dataset}
#' or see vignette.
#'
#' @section Available datasets:
#' \itemize{
#'   \item{\code{\link{assessment}} - Lists all assessments planned in each course.}
#'   \item{\code{\link{course}} - Lists all courses included into dataset.}
#'   \item{student - Student data - demographics + result in course.}
#'   \item{student_assessment - Assessment results and information regarding submissions of each student.}
#'   \item{student_registration - Registration data of each student to courses.}
#'   \item{student_vle - Interactional data between student and VLE.}
#'   \item{vle - Data about materials and data available in Virtual Learning Environment (VLE).}
#' }
#'
#' @seealso \code{\link{course}}
#'
#' @docType package
#' @name oulad
"_PACKAGE"

#' Assessment data from OULAD dataset
#'
#' A dataset containing infromation about assessments in each course-semester
#' included in OULAD.
#'
#' @usage
#' data(assessment)
#'
#' @format A data frame with 206 rows and 6 variables:
#' \describe{
#'   \item{code_module}{Name of course, to which assessment belongs}
#'   \item{code_presentation}{Name of semester, to which assessment belongs}
#'   \item{id_assessment}{Unique integer value identifiing assessment}
#'   \item{assessment_type}{Identifies type of assessment:}
#'   \item{date}{Assessment cut-off date in days from official start of course semester}
#'   \item{weight}{Weight of assessment for the final grade from the course}
#' }
#'
#' @section Assessment type values:
#' \itemize{
#'   \item{TMA - Tutor Marked Assessment, usually essay  or report marked by human}
#'   \item{CMA - Computer Marked Assessment, usually some problem solved within Virtual Learning Environment and graded by program}
#'   \item{Exam - Final exam of the course semester}
#' }
#'
#' @source \url{https://analyse.kmi.open.ac.uk/open_dataset}
"assessment"

#' Courses data from OULAD dataset
#'
#' A dataset containing names of courses accompanied with the semestral
#' information - name and length.
#'
#' @usage
#' data(course)
#'
#' @format A data frame with 22 rows and 3 variables:
#' \describe{
#'   \item{code_module}{Anonymised name of the course (called module at Open University)}
#'   \item{code_presentation}{Name of course semester (called presentation), J is for winter and B for summer}
#'   \item{module_presentation_length}{Length of course in days from official start}
#' }
#'
#' @source \url{https://analyse.kmi.open.ac.uk/open_dataset}
"course"

#' Student data from OULAD dataset
#'
#' A dataset containing demographical information about students, their courses visited
#' and final results each course.
#'
#' @usage
#' data(student)
#'
#' @format A data frame with 32593 rows and 12 variables:
#' \describe{
#' }
"student"


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
#'   \item{\code{\link{student}} - Student data - demographics + result in course.}
#'   \item{\code{\link{student_assessment}} - Assessment results and information regarding submissions of each student.}
#'   \item{\code{\link{student_registration}} - Registration data of each student to courses.}
#'   \item{\code{\link{student_vle}} - Interactional data between student and VLE.}
#'   \item{\code{\link{vle}} - Data about materials and data available in Virtual Learning Environment (VLE).}
#' }
#'
#' @seealso \code{\link{assessment}} \code{\link{course}} \code{\link{student}}
#' \code{\link{student_assessment}} \code{\link{student_registration}}
#' \code{\link{student_vle}} \code{\link{vle}}
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
#'
#' @seealso \code{\link{oulad}}
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
#'
#' @seealso \code{\link{oulad}}
"course"

#' Student data from OULAD dataset
#'
#' A dataset containing demographical information about students, their courses attended
#' and final results each of their course.
#'
#' @usage
#' data(student)
#'
#' @format A data frame with 32593 rows and 12 variables:
#' \describe{
#'   \item{code_module}{Name of course, for which student registered}
#'   \item{code_presentation}{Name of semester, for which student registered}
#'   \item{id_student}{Unique integer identifiing each student}
#'   \item{gender}{Students gender}
#'   \item{region*}{UK region, in which student lives}
#'   \item{highest_education*}{Highest education student achieved before taking course}
#'   \item{imd_band*}{Index of Multiple Deprivation (see \url{https://www.gov.uk/government/statistics/english-indices-of-deprivation-2015}) percentile, students with imd_band lower than 20 comes from the most deprived regions}
#'   \item{age_band*}{Age band of student}
#'   \item{num_of_prev_attempts}{Number of student previous attempts on the selected course}
#'   \item{studied_credits}{Total credits student is studiing at the Open University during period of the course}
#'   \item{disability}{Student claims disability of any type, logical}
#'   \item{final_result}{Student final result in the course}
#' }
#' Variables with * has been anonymised (see vignette for details[]).
#'
#' @section Region values:
#' \itemize{
#'    \item{East Anglian Region}
#'    \item{Scotland}
#'    \item{North Western Region}
#'    \item{South East Region}
#'    \item{West Midlands Region}
#'    \item{Wales}
#'    \item{North Region}
#'    \item{South Region}
#'    \item{Ireland}
#'    \item{South West Region}
#'    \item{East Midlands Region}
#'    \item{Yorkshire Region}
#'    \item{London Region}
#' }
#' See \url{https://en.wikipedia.org/wiki/Regions_of_England} for explanation.
#'
#' @section Highest education values:
#'\itemize{
#'   \item{HE Qualification - awarded after one year full-time study at the university or higher education institution}
#'   \item{A Level or Equivalent - secondary school leaving qualification}
#'   \item{Lower Than A Level - did not completed secondary school}
#'   \item{Post Graduate Qualification - equal to Master degree more or less}
#'   \item{No Formal quals - no previous formal education}
#'}
#'
#' @section Final result values:
#' \itemize{
#'    \item{Pass - passed the course}
#'    \item{Withdrawn - whithdrawn the course before offical end}
#'    \item{Fail - failed the course after taking final exam}
#'    \item{Distinction - passed course with outstanding results}
#' }
#'
#' @source \url{https://analyse.kmi.open.ac.uk/open_dataset}
#'
#' @seealso \code{\link{oulad}}
"student"

#' Student assessments results data from OULAD daset
#'
#' Dataset contains assessment results of each student in each of his attended course.
#'
#' @usage
#' data(student_assessment)
#'
#' @format A data frame with 173912 rows and 5 variables:
#' \describe{
#'    \item{id_assessment}{Unique identifier of assessment, connects to dataset assessment}
#'    \item{id_student}{Unique identifier of student, connects to dataset student}
#'    \item{date_submitted}{Date when student submitted the assessment in days from official start of the course}
#'    \item{is_banked}{Student transfered result of assessment from previous course attempt, logical}
#'    \item{score}{Score achieved by student in assessment}
#' }
#'
#' @source \url{https://analyse.kmi.open.ac.uk/open_dataset}
#'
#' @seealso \code{\link{oulad}}
"student_assessment"

#' Student registration data from OULAD dataset
#'
#' Dataset provides information about (de-)registration dates of students for
#' courses.
#'
#' @usage
#' data(student_registration)
#'
#' @format A data frame with 32593 rows and 5 variables:
#' \describe{
#'    \item{code_module}{Course name, for which student registered}
#'    \item{code_presentation}{Semester name, for which student registered}
#'    \item{id_student}{Unique student identifier, connects to dataset student}
#'    \item{date_registration}{Date of student registration to course in days from
#'    official start. It can be negative - student registered before course started.}
#'    \item{date_unregistration}{Date of student deregistered from course in days from
#'    official start. It can be negative - student deregistered before course started.
#'    NA value means that student finished course.}
#' }
#'
#' @source \url{https://analyse.kmi.open.ac.uk/open_dataset}
#'
#' @seealso \code{\link{oulad}}
"student_registration"

#' Student Virtual Learning Environment (VLE) interaction data from OULAD dataset
#'
#' Dataset provides daily summary log of student interaction with "resources" in
#' VLE.
#'
#' @usage
#' data(student_vle)
#'
#' @format A data frame with 10655280 rows and 6 variables:
#' \describe{
#'    \item{code_module}{Course name, to which "resource" belongs}
#'    \item{code_presentation}{Semester name, to which "resource" belongs}
#'    \item{id_student}{Unique student identifier, connects to student dataset}
#'    \item{id_site}{Unique "resource" identifier, connects to vle dataset}
#'    \item{date}{Date of interaction between student and "resource" in days from
#'    official course start}
#'    \item{sum_click}{Number of interactions between student and "resource" on selected date}
#' }
#'
#' @source \url{https://analyse.kmi.open.ac.uk/open_dataset}
#'
#' @seealso \code{\link{oulad}}
"student_vle"

#' Virtual Learning Environment (VLE) struture data from OULAD dataset
#'
#' The dataset provides the information about VLE "resources" of each course presented in
#' OULAD dataset. By the "resources" we mean different types of web pages with the
#' course relevant information. Resources can be included into study plan for the course.
#'
#' @usage
#' data(vle)
#' @format A data frame with 6364 rows and 6 variables:
#' \describe{
#'    \item{id_site}{Unique "resource" identifier}
#'    \item{code_module}{Course, to which "resource" belongs}
#'    \item{code_presentation}{Semester name, to which "resource" belongs}
#'    \item{activity_type}{Type of resource}
#'    \item{week_from}{Start week from the official course start, in which
#'    "resource" is recommended for study, NA means not in study plan}
#'    \item{week_to}{End week from the official course start, in which student
#'    should finish with the materials presented in "resource", NA means not in study plan}
#' }
#'
#' @source \url{https://analyse.kmi.open.ac.uk/open_dataset}
#'
#' @seealso \code{\link{oulad}}
"vle"

tmpDirectory <- file.path(tempdir(),"oulad")

dir.create(tmpDirectory, showWarnings = FALSE)

# since the server redirects the download of dataset we need to use RCurl
# to download data
library(RCurl)

f = CFILE(file.path(tmpDirectory,"data.zip"), mode = "wb")
curlPerform(url = 'https://analyse.kmi.open.ac.uk/open_dataset/download',
            writedata = f@ref)
close(f)

unzip(zipfile = file.path(tmpDirectory,"data.zip"),exdir = tmpDirectory)

convrt <- function(ind,f,nm){
  library(readr)

  fl <- f[ind]
  nme <- nm[ind]

  assign(nme, data.frame(read_csv(fl)), envir = .GlobalEnv)

  return(invisible())
}

files <- c("assessments.csv","courses.csv","studentAssessment.csv","studentInfo.csv",
           "studentRegistration.csv","studentVle.csv","vle.csv")

files <- file.path(tmpDirectory, files)

names_files <- c("assessment","course", "student_assessment", "student",
                  "student_registration", "student_vle", "vle")

lapply(1:length(files),convrt, files, names_files)

student_assessment$is_banked <- as.logical(student_assessment$is_banked)
student$disability <- student$disability == "Y"


# since devtools::use_data does not easily support passing object names in array
# we will call them one by one
devtools::use_data(assessment, overwrite = TRUE)
devtools::use_data(course, overwrite = TRUE)
devtools::use_data(student_assessment, overwrite = TRUE)
devtools::use_data(student, overwrite = TRUE)
devtools::use_data(student_registration, overwrite = TRUE)
devtools::use_data(student_vle, overwrite = TRUE)
devtools::use_data(vle, overwrite = TRUE)







#' Remove All Local R Packages
#'
#' @export
remove_all_packages <- function() {
  installed_packages <- as.data.frame(installed.packages())
  # we don't want to remove base or recommended packages either\
  installed_packages <- installed_packages[!(installed_packages[,"Priority"] %in% c("base", "recommended")),]
  # determine the library where the packages are installed
  library_path <- unique(installed_packages$LibPath)
  packages_to_remove <- installed_packages[,1]
  sapply(packages_to_remove, remove.packages, lib = library_path)
}

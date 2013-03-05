
#' @title Checks if the running OS is windows
#' @description Returns TRUE/FALSE if the R session is running on Windows or not.
#' @details
#' This function is run when the 'installr' package is first loaded in order to check if the current running OS is Windows.
#' If you are running a different OS, then the installr package (at its current form) does not have much to offer you.
#' @param ... none are available.
#' @return Returns TRUE/FALSE if the R session is running on Windows or not. 
#' @export
#' @examples
#' \dontrun{
#' is.windows() # returns TRUE on my machine.
#' }
is.windows <- function(...) unname(Sys.info()["sysname"] == "Windows")
# inspiration: http://dennislwm-star.blogspot.sg/2012/11/r-is-almost-platform-independent.html


.onLoad <- function(libname, pkgname){
   if(!is.windows()) warning("The 'installr' package was designed for installing software on Windows. \nIt appears that you are NOT running R on the Windows OS - hence it is not clear if the package has any useful functions to offer you at this point (I'm sorry...).")
   # Thanks for Romain: http://stackoverflow.com/questions/4369334/first-lib-idiom-in-r-packages
}


# using "zzz.r" like in devtools...

# When adding new files, make sure they are listed in DESCRIPTION:
# Collate:
#    'create.global.library.r'
# 'install.r'
# 'updateR.r'

# when a function is renamed, its document in man must be removed - otherwise it may cause problems with the built check (it will try to run the code in the example, and will fail.)
# When all is done, run:
# require(devtools)
# build_win()
# release()

# IMPORTANT NOTICE: this will add Collate to the DESCRIPTION file, and if any new r file is added - it will need to be updated.
# Collate:
# +    'create.global.library.r'
# +    'install.r'
# +    'updateR.r'
# +    'zzz.r'
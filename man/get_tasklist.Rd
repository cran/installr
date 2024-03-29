% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kill_pid.R
\name{get_tasklist}
\alias{get_tasklist}
\title{Get the running processes in windows task manager}
\usage{
get_tasklist(...)
}
\arguments{
\item{...}{not used.}
}
\value{
a data.frame with the current running processes.
}
\description{
Returns a data.frame with the current running processes (Windows only).
}
\examples{
\dontrun{
# create several running processes of Rscript (to shitdown)
system("Rscript -e repeat{2+2}", wait = FALSE) # this process should be stuck   
system("Rscript -e repeat{2+2}", wait = FALSE) # this process should be stuck   
# here are there pid numbers:
get_Rscript_PID() 
# let's kill them:
kill_all_Rscript_s()
# they are gone...
get_Rscript_PID() # we no longer have Rscripts running
}
}
\references{
tasklist details from microsoft homepage: \url{https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-xp/bb491010(v=technet.10)}
}
\seealso{
\code{\link{get_tasklist}}, \code{\link{get_Rscript_PID}}, \code{\link{get_pid}},
\code{\link{kill_pid}}, \code{\link{kill_all_Rscript_s}}, \link[tools]{pskill}
\code{\link{kill_pid}}, \code{\link{kill_all_Rscript_s}}
}

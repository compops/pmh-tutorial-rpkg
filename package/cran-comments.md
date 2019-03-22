## Test environments
* Ubuntu 18.10 (64-bit), R 3.5.1
* Windows Server 2008 (64-bit), R version 3.5.3 (2019-03-11)
* Windows Server 2008 (64-bit), R Under development (unstable) (2019-03-19 r76252)

## R CMD check results
There were no WARNINGSs or ERRORs.

There was one note:

Found the following (possibly) invalid DOIs:
  DOI: 10.18637/jss.v088.c02
    From: inst/CITATION
    Status: Not Found
    Message: 404

The DOI in the CITATION is for a new JSS publication that will be registered after publication on CRAN.

## Downstream dependencies
There are currently no downstream dependencies for this package.

## Notes on version 1.5
Updated and added citation information for publication in JSS.

## Notes on version 1.4
Smaller changes to plots to make replication scripts consistent for the journal paper published in JSS.

## Notes on version 1.3
This submission was made to fix an error in the checking of the package on CRAN. Repeated requests to Quandl maxed out the number of calls to their API everyday. This created an error. This problem was fixed by using synthetic data when checking the code and the addition of dontrun instead of donttest in the functions that downloads data from Quandl.
## Test environments
* Ubuntu 18.10 (64-bit), R 3.5.1
* Windows Server 2008 (64-bit), R 3.5.2 (2018-12-20)
* Windows Server 2008 (64-bit), R unstable (2019-01-09 r75961)

## R CMD check results
There were no WARNINGSs or ERRORs.

There was one note:
* Note_to_CRAN_maintainers Maintainer: ‘Johan Dahlin <uni@johandahlin.com>’
This is probably due to that I changed my e-mail address in the previous version.

## Downstream dependencies
There are currently no downstream dependencies for this package.

## Notes on version 1.4
Smaller changes to plots to make replication scripts consistent for the journal paper published in JSS.

## Notes on version 1.3
This submission was made to fix an error in the checking of the package on CRAN. Repeated requests to Quandl maxed out the number of calls to their API everyday. This created an error. This problem was fixed by using synthetic data when checking the code and the addition of dontrun instead of donttest in the functions that downloads data from Quandl.
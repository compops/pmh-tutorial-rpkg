## Test environments
* Ubuntu 18.04 (64-bit), R 3.4.4
* Windows Server 2008 (64-bit), R 3.4.
* Windows Server 2008 (64-bit), R unstable (2018-10-16 r75448)

## R CMD check results
There were no WARNINGSs, ERRORs or NOTEs.

## Downstream dependencies
There are currently no downstream dependencies for this package.

## Notes
This submission was made to fix an error in the checking of the package on CRAN. Repeated requests to Quandl maxed out the number of calls to their API everyday. This created an error. This problem was fixed by using synthetic data when checking the code. Hence, no data needs to be collected from Quandl. This avoids the problem but also keeps the checks inplace for the code/functions when the package is automatically checked.
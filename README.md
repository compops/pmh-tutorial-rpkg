## Purpose
This package provides minimal working examples for implementing the particle Metropolis-Hastings (PMH) algorithm for parameter inference in non-linear state space models. The package accompanies the tutorial:

J. Dahlin and T. B. Schön, **Getting started with particle Metropolis-Hastings for inference in nonlinear models**. Pre-print, arXiv:1511:01707, 2017.

The tutorial is available as a preprint from http://arxiv.org/pdf/1511.01707. Additional stane-alone code is provided for Python and MATLAB in the GitHub repo http://www.github.com/compops/pmh-tutorial. This repo also contains R code, which is almost identical to the code provided in the package.

## Usage
The main functions of the package are the five examples connected to the tutorial:

**example1_lgss()** State estimation in a LGSS model using the KM and a fully-adapted PF (faPF). The code is discussed in Section 3.1 and the results are presented in Section 3.2 as Figure 4 and Table 1.

**example2_lgss()** Parameter estimation of one parameter in the LGSS model using PMH with the faPF as the likelihood estimator. The code is discussed in Section 4.1 and the results are presented in Section 4.2 as Figure 5.

**example3_sv()** Parameter estimation of three parameters in the SV model using PMH with the bootstrap PF as the likelihood estimator. The code is discussed in Section 5.1 and the results are presented in Section 5.2 as Figure 6. The code takes about an hour to run.

**example4_sv()** Modified version of the code in *example3-sv.R* to make use of a better tailored parameter proposal. The details are discussed in Section 6.3.2 and the results are presented in the same section as Figures 7 and 8. Note that the only difference in the code is that the variable stepSize is changed.

**example5_sv()** Modified version of the code in *example3-sv.R* to make use of another parameterisation of the model and a better tailored parameter proposal. The details are discussed in Section 6.3.3 and the results are presented in the same section. Note that the differences in the code is the use of another implemenation of PMH ant that the variable stepSize is changed.

## Simple example
The examples can be executed by e.g.
``` R
example2_lgss()
```
which will recreate on of the plots in the aforementioned tutorial. See the reference for more background and details.

## How do I get it?
The package is available through CRAN and can be installed by
``` R
install.packages("pmhtutorial")
```
or directly from GitHub by
``` R
install.packages("devtools")
devtools::install_github("compops/pmh-tutorial-rpkg/package")
```
or downloaded the [latest release as a binary package](https://github.com/compops/pmh-tutorial-rpkg/releases/latest).

## Dependencies
The package requires `Quandl` and `mvtnorm` to be able to download financial data from the Internet and to generate random variables from the multivariate Gaussian distribution. These can be installed by executing
``` R
install.packages(c("Quandl", "mvtnorm"))
```
in the R console if it is not installed at the same time as this package.

## How to build the package (notes to myself)
Clone the repo from GitHub. In Rstudio, switch the working directory to package, then run (use `devtools::check(run_dont_test=TRUE)` to check all the example which takes a looong time)
``` R
install.packages(c("devtools", "Quandl", "mvtnorm"))
library(devtools)
devtools::document()
devtools::check(manual=TRUE)
devtools::build_win(version="R-devel")
devtools::build_win(version="R-release")
devtools::build()
```
An e-mail will be received after 10-20 mins with the result of the rest run on Windows. Also, install and check the package on your local computer. Especially, the LaTeX renderings and similar can be broken.
``` R
devtools::install()
```
If everything is fine and all the tests are passed then submit the new release to CRAN by
``` R
devtools::release()
```
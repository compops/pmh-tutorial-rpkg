## Purpose
This package provides minimal working examples for implementing the particle Metropolis-Hastings (PMH) algorithm for parameter inference in non-linear state space models. The package accompanies the tutorial:

J. Dahlin and T. B. Schön, **Getting started with particle Metropolis-Hastings for inference in nonlinear models**. Pre-print, arXiv:1511:01707, 2017.

The tutorial is available as a preprint from http://arxiv.org/pdf/1511.01707. Additional stane-alone code is provided for Python and MATLAB in the GitHub repo http://www.github.com/compops/pmh-tutorial. This repo also contains R code, which is almost identical to the code provided in the package. 

## Usage
The main functions of the package are the five examples connected to the tutorial:

* **example1_lgss()** demostrates the particle filter for estimating the state in a linear Gaussian state space (LGSS) model, see Section 3.2 in the tutorial.

* **example2_lgss()** demostrates PMH for estimating the parameters in an LGSS model, see Section 4.2 in the tutorial.

* **example3_sv()** demostrates PMH for estimating the parameters in a stochastic volatility (SV) model, see Section 5 in the tutorial.

* **example4_sv()** makes use of a run of *example3_sv()* to estimate the covariance of the posterior, which in turn is used to adapt the proposal for better performance, see Section 6.3.1 for details.

* **example5_sv()** makes use of a reparameterised SV model to improve performance, see Section 6.3.2 for details.

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
The package requires Quandl and mvtnorm to be able to download financial data from the Internet and to generate random variables from the multivariate Gaussian distribution. These can be installed by executing
``` R
install.packages(c("Quandl", "mvtnorm"))
``` 
in the R console if it is not installed at the same time as this package.
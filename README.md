## Purpose
This package provides some minimal working examples for implementing 
the particle Metropolis-Hastings (PMH) algorithm for parameter inference 
in nonlinear state space models. The package accompanies the tutorial:

J. Dahlin and T. B. Schön, **Getting started with particle Metropolis-Hastings for inference in nonlinear models**. Pre-print, arXiv:1511:01707, 2017.

The papers are available as a preprint from http://arxiv.org/pdf/1511.01707

## Usage
The main functions of the package are the five examples connected to the tutorial:

* **example1_lgss()** Demostrates the particle filter for estimating the
state in a linear Gaussian state space model.

* **example2_lgss()** Demostrates PMH for estimating the parameters in a 
linear Gaussian state space model.

* **example3_sv()** Demostrates PMH for estimating the parameters in a 
stochastic volatility model.

* **example4_sv()** Demostrates PMH for estimating the parameters in a 
stochastic volatility model using a tailored proposal distribution.

* **example5_sv()** Demostrates PMH for estimating the parameters in a 
stochastic volatility model using a reparameterised model.

## Simple example
The examples can be executed by e.g.
``` R
example2_lgss()
``` 
which will recreate on of the plots in the aforementioned tutorial. See
the reference for more background and details.

## How do I get it?
The package is available through CRAN and can be installed by
``` R
install.packages("pmhtutorial")
``` 
or directly from GitHub by
``` R
install.packages("devtools")
devtools::install_github("compops/pmh-tutorial-rpkg")
``` 
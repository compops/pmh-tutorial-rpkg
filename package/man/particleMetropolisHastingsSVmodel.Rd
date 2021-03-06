% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parameterEstimation.R
\name{particleMetropolisHastingsSVmodel}
\alias{particleMetropolisHastingsSVmodel}
\title{Particle Metropolis-Hastings algorithm for a stochastic volatility model
model}
\usage{
particleMetropolisHastingsSVmodel(y, initialTheta, noParticles,
  noIterations, stepSize)
}
\arguments{
\item{y}{Observations from the model for \eqn{t=1,...,T}.}

\item{initialTheta}{An inital value for the parameters 
\eqn{\theta=\{\mu,\phi,\sigma_v\}}. The mean of the log-volatility 
process is denoted \eqn{\mu}. The persistence of the log-volatility 
process is denoted \eqn{\phi}. The standard deviation of the 
log-volatility process is denoted \eqn{\sigma_v}.}

\item{noParticles}{The number of particles to use in the filter.}

\item{noIterations}{The number of iterations in the PMH algorithm.}

\item{stepSize}{The standard deviation of the Gaussian random walk proposal 
for \eqn{\theta}.}
}
\value{
The trace of the Markov chain exploring the posterior of \eqn{\theta}.
}
\description{
Estimates the parameter posterior for \eqn{\theta=\{\mu,\phi,\sigma_v\}} in 
a stochastic volatility model of the form \eqn{x_t = \mu + \phi ( x_{t-1} - 
\mu ) + \sigma_v v_t} and \eqn{y_t = \exp(x_t/2) e_t}, where \eqn{v_t} and 
\eqn{e_t} denote independent standard Gaussian random variables, i.e. 
\eqn{N(0,1)}.
}
\note{
See Section 5 in the reference for more details.
}
\examples{
\dontshow{
  noIterations <- 10

  # Create random data
  y <- rnorm(10)

  # Estimate the marginal posterior for phi
  pmhOutput <- particleMetropolisHastingsSVmodel(y,
    initialTheta = c(0, 0.9, 0.2),
    noParticles=10,
    noIterations=noIterations,
    stepSize=diag(c(0.05, 0.0002, 0.002)))

  # Plot the estimate
  nbins <- floor(sqrt(noIterations))
  par(mfrow=c(3, 1))
  hist(pmhOutput$theta[,1], breaks=nbins, main="", xlab=expression(mu),
    ylab="marginal posterior", freq=FALSE, col="#7570B3")
  hist(pmhOutput$theta[,2], breaks=nbins, main="", xlab=expression(phi),
    ylab="marginal posterior", freq=FALSE, col="#E7298A")
  hist(pmhOutput$theta[,3], breaks=nbins, main="",
    xlab=expression(sigma[v]), ylab="marginal posterior",
    freq=FALSE, col="#66A61E")
}
\dontrun{
  # Get the data from Quandl
  library("Quandl")
  d <- Quandl("NASDAQOMX/OMXS30", start_date="2012-01-02",
              end_date="2014-01-02", type="zoo")
  y <- as.numeric(100 * diff(log(d$"Index Value")))

  # Estimate the marginal posterior for phi
  pmhOutput <- particleMetropolisHastingsSVmodel(y,
    initialTheta = c(0, 0.9, 0.2),
    noParticles=500,
    noIterations=1000,
    stepSize=diag(c(0.05, 0.0002, 0.002)))

  # Plot the estimate
  nbins <- floor(sqrt(1000))
  par(mfrow=c(3, 1))
  hist(pmhOutput$theta[,1], breaks=nbins, main="", xlab=expression(mu),
    ylab="marginal posterior", freq=FALSE, col="#7570B3")
  hist(pmhOutput$theta[,2], breaks=nbins, main="", xlab=expression(phi),
    ylab="marginal posterior", freq=FALSE, col="#E7298A")
  hist(pmhOutput$theta[,3], breaks=nbins, main="",
    xlab=expression(sigma[v]), ylab="marginal posterior",
    freq=FALSE, col="#66A61E")
}
}
\references{
Dahlin, J. & Schon, T. B. "Getting Started with Particle 
Metropolis-Hastings for Inference in Nonlinear Dynamical Models." 
Journal of Statistical Software, Code Snippets,
88(2): 1--41, 2019.
}
\author{
Johan Dahlin \email{uni@johandahlin.com}
}
\keyword{ts}

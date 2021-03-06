% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spectral_curve.R
\name{cdom_spectral_curve}
\alias{cdom_spectral_curve}
\title{Calculate the spectral curve of CDOM spectra.}
\usage{
cdom_spectral_curve(wl, absorbance, interval = 21, r2threshold = 0.8)
}
\arguments{
\item{wl}{The wavelength vector.}

\item{absorbance}{The absorbance vector.}

\item{interval}{The interval used to claculate each slope (default = 21 nm).}

\item{r2threshold}{The r2 threshold that determines if a slope is "valide".
The default value is 0.8 meaning that the determination coefficient of the
regression between log-transformed data and wavelength should be >= 0.8.}
}
\value{
A dataframe containing the centered wavelength, the calculated slope
 and the determination coefficient of the linear regression used to claculate
 the slope.
}
\description{
Calculate the spectral curve of CDOM spectra has proposed by
 Loiselle et al. 2009.
}
\examples{
data(spectra)

res <- cdom_spectral_curve(spectra$wavelength, spectra$spc2)
plot(res$wl, res$s, type = "l")
}
\references{
\url{http://doi.wiley.com/10.4319/lo.2009.54.2.0590}
}


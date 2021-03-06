% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gauge.R
\name{gauge_color}
\alias{gauge_color}
\alias{gauge_color_viridis}
\title{Gauge colour}
\usage{
gauge_color(g2, colors = NULL, callback = NULL)

gauge_color_viridis(g2, option = c("viridis", "magma", "plasma",
  "inferno", "cividis"), reverse = FALSE, callback = NULL)
}
\arguments{
\item{g2}{An object of class \code{g2r} as returned by \code{\link{g2r}}.}

\item{colors}{A vector of colors.}

\item{callback}{A JavaScript callback function (see \code{\link{cb}}) which returns a color.}

\item{option}{Palette name.}

\item{reverse}{Whether to reverse the palette.}
}
\description{
Gauge colour, similar to the \code{scale_colour_*} family of functions from the \code{ggplot2} package.
}
\examples{
g2(mtcars, asp(mpg, qsec, color = drat)) \%>\% 
  fig_point() \%>\% 
  gauge_color(c("red", "white", "blue"))

}

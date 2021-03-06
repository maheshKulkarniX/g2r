% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gauge.R
\name{gauge_tooltip}
\alias{gauge_tooltip}
\title{Gauge tooltip}
\usage{
gauge_tooltip(g2, callback = NULL)
}
\arguments{
\item{g2}{An object of class \code{g2r} as returned by \code{\link{g2r}}.}

\item{callback}{A JavaScript callback function (see \code{\link{cb}}) which returns a color.}
}
\description{
Gauge tooltip.
}
\examples{
callback <- cb(
  "function(drat, qsec){
    percent = qsec / 100 + '\%';
    return {
      name: drat,
      value: percent
    };
  }"
)

template <- '<li>{name}: {value}</li>'

g2(mtcars, asp(mpg, qsec, tooltip = drat, tooltip = qsec, color = qsec)) \%>\% 
  fig_point() \%>\% 
  gauge_tooltip(callback) \%>\% 
  conf_tooltip(itemTpl = template, showTitle = FALSE)

}

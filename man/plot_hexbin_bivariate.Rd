% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_hexbin_bivariate.R
\name{plot_hexbin_bivariate}
\alias{plot_hexbin_bivariate}
\title{Plot of feature expression and uncertainty of single cells in bivariate 
   hexagon cells.}
\usage{
plot_hexbin_bivariate(
  sce,
  mod = "RNA",
  type,
  feature,
  fan = FALSE,
  title = NULL,
  xlab = NULL,
  ylab = NULL
)
}
\arguments{
\item{sce}{A \code{\link[SingleCellExperiment]{SingleCellExperiment}}
or \code{\link[Seurat]{Seurat-class}} object.}

\item{mod}{A string referring to the name of the modality used for plotting.
For RNA modality use "RNA". For other modalities use name of alternative 
object for the \code{\link[SingleCellExperiment]{SingleCellExperiment}} 
or the name of the assay for the \code{\link[Seurat]{Seurat-class}} 
object.}

\item{type}{A string referring to the type of assay in the
\code{\link[SingleCellExperiment]{SingleCellExperiment}} object or the
data transformation in the \code{\link[Seurat]{Seurat-class}} object.}

\item{feature}{A string referring to the name of one feature.}

\item{fan}{Logical indicating whether to plot uncertainty surpressing palette.}

\item{title}{A string containing the title of the plot.}

\item{xlab}{A string containing the title of the x axis.}

\item{ylab}{A string containing the title of the y axis.}
}
\value{
A \code{\link{ggplot2}{ggplot}} object.
}
\description{
Plot of feature expression and uncertainty of single cells in bivariate 
   hexagon cells.
}
\details{
This function plots the mean expression and a measure of uncertainty
   of any feature in the hexagon cell representation calculated with 
   \code{\link{make_hexbin}} using a bivariate scale. When \code{fan=FALSE}, 
   the standard deviation and the mean expression are plotted. When 
   \code{fan=TRUE}, the mean expression and coefficient of variation are
   calculated. The coefficient of variation is converted to a percentage of
   uncertainty. When using \code{fan=TRUE} the raw count data should be used. 
   In order to enable the calculation of the coefficient of variation a 
   pseduo-count of 1 is added to every count.

   To access the data that has been integrated in the 
   \code{\link[Seurat]{Seurat-class}} object specifiy \code{mod="integrated"}.
}
\examples{
# For Seurat object
library(Seurat)
data("pbmc_small")
pbmc_small <- make_hexbin(pbmc_small, 10, dimension_reduction = "PCA")
plot_hexbin_bivariate(pbmc_small, type="counts", feature="CD3D")
plot_hexbin_bivariate(pbmc_small, type="counts", feature="CD3D", fan=TRUE)
}

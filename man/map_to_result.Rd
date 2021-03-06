% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_to_result.R
\name{map_to_result}
\alias{map_to_result}
\title{Map to results from data, variable names & case}
\usage{
map_to_result(data, dependent.var, independent.var = NULL, case,
  cluster.variable.name = NULL, weighting = function(df) {     rep(1,
  nrow(df)) }, questionnaire = NULL, confidence_level = 0.95)
}
\arguments{
\item{data}{the data as a data.frame. Must match the sampling frame used to produce the `weighting` as well as the questionnaire if applicable.}

\item{dependent.var}{string with the column name in "data" of the dependent variable}

\item{case}{the analysis case, created with map_to_case().}

\item{cluster.variable.name}{if cluster sampling, provide the name of the variable in the dataset that denotes the cluster}

\item{weighting}{A function that generates weights from a dataframe. You can create it with surveyweights::weighting_fun_from_samplingframe()}

\item{questionnaire}{output from load_questionnaire()}

\item{confidence_level}{the confidence level to be used for confidence intervals (default: 0.95)}

\item{independen.var}{string with the column name in `data` of the independent variable}
}
\value{
A list with the summary.statistic the hypothesis.test result
}
\description{
Produce summary statistics, hypothesis tests and plot objects for a hypothesis
}
\details{
- takes as parameters outputs from
    - load_data()
    - map_to_case()
    - load_samplingframe() %>% map_to_weighting()
    - load_questionnaire()
- output can be processed by:
    - map_to_labeled()
    - map_to_visualisation()
    - map_to_table()
    - map_to_master_table()
    - map_to_visualisation_heatmap()
}

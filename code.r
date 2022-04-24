#' ---
#' title: "Workshop example"
#' author: "Shirley Serrano"
#' date: "4/23/2022"
#' output: 
#'   html_document:
#'     toc: TRUE
#'     toc_float: TRUE
#'   
#' ---
#' 
#' # setup
#' 
## ----------------------------------------------------------------------------------
library("tidyverse")

#' 
#' 
#' # Read data
#' 
#' Data from phenotypic measurements of *A. thaliana* under different phosphate & baterial condition.
## ----reading data, echo=FALSE------------------------------------------------------
Dat <- read_tsv("data/phenotypes.tsv")
Dat

#' 
#' ## Displaying table
#' 
## ----------------------------------------------------------------------------------
Dat

#' 
#' # Exploratory plots
#' 
## ----------------------------------------------------------------------------------
ggplot(Dat, aes(x= Pi_content, y=Elongation)) +
  geom_point()

#' 
## ----------------------------------------------------------------------------------
ggplot(Dat, aes(x= Pi_content, y=Elongation, col = EndP)) +
  geom_point() +
  theme_classic()

#' 
## ----------------------------------------------------------------------------------
arrange(Dat, Elongation)

#' We noted that the three plants with smallest elongation are probably outliers due to batch effect
#' 
## ----------------------------------------------------------------------------------
Dat <- filter(Dat, Elongation > 2)
arrange(Dat, Elongation)

#' 
## ----------------------------------------------------------------------------------
ggplot(Dat, aes(x= Pi_content, y=Elongation, col = EndP)) +
  geom_point() +
  theme_classic()

#' # Session Info
#' 
## ----------------------------------------------------------------------------------
sessionInfo()

#' 
#' 

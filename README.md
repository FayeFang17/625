# 625
 <!-- badges: start -->
  [![R-CMD-check](https://github.com/FayeFang17/625/workflows/R-CMD-check/badge.svg)](https://github.com/FayeFang17/625/actions)
  [![test-coverage](https://github.com/ninapomelo/MLR/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/ninapomelo/MLR/actions/workflows/test-coverage.yaml)

 [![codecov](https://codecov.io/gh/ninapomelo/MLR/branch/main/graph/badge.svg?token=G2Y14R6DG5)](https://codecov.io/gh/ninapomelo/MLR)

  
  <!-- badges: end -->
 
# 625

This package calculates Fst from SNP inputs. SNPs impletmented the Fst function from the package KIRS, with more efficient coding.

## Description

An in-depth paragraph about your project and overview of use.

## Usage

The main function in the package is Fst.

* `sim_SNP`: SNP datasets could be simulated with this function. (But they are rather unrealistic, so do not use them forany purpose other than package tutorial.)

* `data.prep`: Preapre data for Fst calculation. Parse SNP dataset by population before calculating Fst to save time.

* `FST` : A measure of population differentiation due to genetic structure. In this function, Fst is estimated from one of genetic polymorphism data, single-nucleotide polymorphisms(SNP). Calculation implemented by Hudson method in Hudson(1992).

## Installing

#install.packages("devtools")
library(devtools)
devtools::install_github("https://github.com/FayeFang17/625/")
library(bios625)

## Tutorial

To view the tutorial(vignette) associated with this package, run the following code:

browseVignettes(package = "625")

### Example

SNP_example=sim_SNP(method="SNP")

label=sim_SNP(method="label")

SNP=data.prep(SNP_example,label)

FST(SNP$'1',SNP$'2')

## Authors

This package was created in 2021 by Faye Fang.
fangn@umich.edu


## Reference

* Kridsadakorn Chaichoompu, Fentaw Abegaz, Sissades Tongsima, Philip James Shaw, Anavaj Sakuntabhai, Luisa
  Pereira, and Kristel Van Steen (2018). KRIS: Keen and Reliable Interface Subroutines for Bioinformatic
  Analysis. R package version 1.1.6. URL: https://CRAN.R-project.org/package=KRIS


* Bhatia, G., Patterson, N., Sankararaman, S., and Price, A.L. (2013).

* Hudson, R.R., Slatkin, M., and Maddison, W.P. (1992). Estimation of levels of
gene flow from DNA sequence data. Genetics 132, 583-589.


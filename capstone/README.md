 # Cparser: a chemical formula parse

## Introduction
Cparser is a chemical formula parser, written in R. Because molecular formula can be written in many diffenrent format (for exemple, if we consider acetic acid: CH3COOH, it can also be written C2O2H3, or C2H4O2). Depending the source from this data can be recuperated, comparing formulas can be quite tedious. This package offer the possibility to easily parse a chemical formula, given the number of each atom composing the molecule. Some more functionnalities are added, such as :
    - Ensure the validity of a chemical formula.
    - Directly compare 2 formulas.
    - Estimate the explosiveness of a molecule, based on the carbon / oxygen ratio.
    - Calculate molecular weight.

This package will also provide numerical parser, trying to bring quick solution to uncleaned numerical values data to facilitate the analysis, calculation, and comparison.

## Installation
1) To install this package, download the `cparser.tar.gz` file.
2) Type in your R console `install.packages("cparser.tar.gz")`.
3) Load the library: `library(cparser)`
4) Use the functions!

## Files and functionnalities
### numeric_parser.R:
Numeric parser give 2 functions to facilitate the analysis of numerical values:
- `parse_number` will recieve a vector of supposedly integer or float values and will clean them up and change their type to make sure the vector will contains only numerical or NA values.


### formula_parser.R:
This file contains 3 functions to work with chemical formulas:
- `check_valid_formula` will recieve a formula as parameter, and will check using a *regular expression* if the string follow a formula pattern or not.
- `parse_formula` is a function to actually read a formula, and extract as a named vector the number of each element present in the formula.
- `compare_formula` is a function to compare the composition of 2 formulas. It does not compare directly the string representation anymore, but it will compare the composition of each elements of the two formulaes passed as parameters.

### chemistry.R
The file chemistry use the `tidyverse` package to laod a tibble (`elements.csv`) containing all the atoms and their atomic mass. Ths tibble is then used in the molecular weight calculation function. You will find in this file the 2 following utilities fucntion:
- `estimate_explosivity`: This function will compute 2 formulas using the previous functions, and will make the calculation of the O / C ratio, which give indications on the explosivity of a molecule. This function was made to quickly have a hint on the dangerosity of a chemical.
- `calculate_molw` will use the previously loaded dataframe to parse a formula, and calculate the wheight of each atom composing the molecule. Each atomic mass are then summed to give the global weight of the molecule.

## Dependencies
The package is build on `tidyverse` package.
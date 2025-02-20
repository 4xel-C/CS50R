# Lecture notes

## Introuction
In R, packages are usually structured following this pattern:
- DESCRIPTION: file, deescribing the packages, authors, and functionnalities.
- NAMESPACE: Functions in the package users may use and become 'exportable'.
- man/: Folder "manual" where is put inside all the documentations concerning the package.
- R/ (folder): Contains all the functions definitions of our packages.
- tests/: Folder containing test code.

### Description file:
`DESCRIPTION` file composed of different fields describing packages:
- **Package**: Name of the package to be called with `install.packages()`
- **Title**
- **Description**
- **Version**
- **Authors@R**: take a R function as input `person()` with the follonwing parameters:
    - First name.
    - Last name.
    - email.
    - A vector of role; 
        - aut = Author (person who contributed to the package).
        - cre = Creator (person who maintains the code).
        - cph = CopyRight Holder.
- **License**
- **Suggests**: suggest package to install for the user.
- **Requires**: Required packages for the package to work properly.

## Devtools
Package to help the creation of packages in R alongside with unit testing:
- `use_testthat()`: Testing package (will create a new Suggests field for the dependencies).
- `use_test`: Testing file for functions.
- `test`: Running the unit tests.

### Installation and initialization
- Installation:
    - `install.packages(devtools)`
    - `library(devtools)`

- `use_testhat()`: Using this function will create a new testing folder and will updates the suggested packages in the description file.

- ``use_test("test_name")``: will create in the tests/testthat folder a new file for the unit testing.

- ``use_r("filename")``: Will create a folder R and a .R file to create the functions. This functions should hen be declared in the NAMESPACE file to be usable using the package. 

- ``load_all()``: Load all the functions declared in the NAMESPACE file to be available for use.

- ``test()``: Used to run the tests define in testthat folder with the loaded functions.

### Manual
Folder 'man' (short for manual) will store all the .Rd files that will display helpers on specific functions for the user.
- Each .Rd files (R Documentation) will have the *same name* of the corresponding function it will document.
- This files recieve particular parameters:
    - ``\title{...}``           => Title of the documentation
    - ``\description{...}``     => Description of the function
    - ``\usage{...}``           => How the function should be used
    ...

### Building the package
Converting the source code packages into a single package file.
- ``build():`` build the package.

### Install packages
Possibility to install packages from individual file shared by users. (not only by the CRAN).
- by using `install.pakcages("package.tar.gz")`

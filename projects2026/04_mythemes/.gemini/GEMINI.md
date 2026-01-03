# Project Context: MyThemes Package

## Objectives
*   Adhere to **CRAN-like standards** for package structure.
*   Focus on **Code Reusability** and **Documentation**.
*   Do not include data analysis scripts here; only functions that define themes/palettes.

## Instructions
1.  Initialize package structure using `usethis::create_package()`.
2.  Move `custom_theme_white`, `custom_theme_black` logic into `R/` directory.
3.  Add `roxygen2` documentation headers (`@param`, `@return`, `@export`).
4.  Document dependencies (e.g., `ggplot2`) in `DESCRIPTION`.
5.  Build and Test the package.

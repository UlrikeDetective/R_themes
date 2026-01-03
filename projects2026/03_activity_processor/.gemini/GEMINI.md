# Project Context: Activity Processor

## Objectives
*   Treat this as a **Data Engineering** pipeline.
*   The script should be robust: it must not fail if one single file is corrupt.
*   Focus on efficient file reading and data extraction.

## Instructions
1.  List all `.gpx` files in the source directory.
2.  Write a function to extract key metrics (Lat, Lon, Elevation, Time, Distance) from a SINGLE file.
3.  Wrap this function with error handling (`purrr::possibly`).
4.  Map this function over the list of files to create one master dataframe.
5.  Save the result as a clean CSV/RDS.

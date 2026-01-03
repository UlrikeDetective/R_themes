# Project 3: Activity Processor (The Engineer)

## Goal
Automate the processing of a large collection of GPX (GPS) files to create a unified dataset.

## Dataset
*   **Source:** Folder containing multiple `.gpx` files (routes).

## Tech Stack
*   **Language:** R
*   **Core Libraries:** `purrr` (Functional Programming), `fs` (File System), `sf` (Spatial Data), `xml2`.

## Key Skills
*   **Automation:** Batch processing files without manual intervention.
*   **Functional Programming:** Using `map()`, `map_dfr()` instead of for-loops.
*   **Error Handling:** Using `possibly()` or `safely()` to handle corrupt files.
*   **Data Engineering:** Extracting structured data from XML/GPX formats.

# 1.1.0

## Breaking  
* Soft deprecation of `site_masked`. Begin using new `site` variable that 
includes improved anonymization of participants. The `site$site` variable is 
6 characters versus `site_masked$site_masked` being 2 characters.
* Included deprecation warning on package load.

## Miscellaneous  
* Added labels to all tibbles

# 1.0.4

* Corrected the description of the fagerstrom table

# 1.0.3

* Fixed spelling errors
* Fixed URL re-directs
* Removed duplicated "project" column from `first_survey` data
* Fixed LaTeX manual errors

# 1.0.2

* Sorted everybody data set by project then by who
* Sorted all the other data sets to by who then when

# 1.0.1

* Fixed 11 incorrect dates
* Removed "High Stakes Manuscript" vignettes. 

# 1.0.0

* First CRAN release 

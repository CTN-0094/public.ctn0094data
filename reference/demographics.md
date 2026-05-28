# Patient demographics

This is baseline demographics. See the vignette [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.md)
for more details.

## Usage

``` r
demographics
```

## Format

A tibble with 3,560 rows and 9 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **age**:

  |                |               |
  |----------------|---------------|
  | *Type:*        | integer       |
  |                |               |
  | *Description:* | Age at intake |

- **is_hispanic**:

  |                |                                     |
  |----------------|-------------------------------------|
  | *Type:*        | factor (First/Reference level = No) |
  |                |                                     |
  | *Description:* | Hispanic heritage                   |
  |                |                                     |
  | *Levels:*      | No; Yes                             |

- **race**:

  |                |                                        |
  |----------------|----------------------------------------|
  | *Type:*        | factor (First/Reference level = Black) |
  |                |                                        |
  | *Description:* | Self-reported race                     |
  |                |                                        |
  | *Levels:*      | Black, Other Refused/missing, White    |

- **job**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Full Time) |
  |  |  |
  | *Description:* | Employment status at intake |
  |  |  |
  | *Levels:* | "" = Not asked, "Full Time", "Missing" = Missing from intake data, "Part Time", "Student", "Unemployed" |

- **is_living_stable**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | Living stability |
  |  |  |
  | *Levels:* | No = Not a stable living condition; Yes = Has a stable living place |

- **education**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = HS/GED) |
  |  |  |
  | *Description:* | Education level at intake |
  |  |  |
  | *Levels:* | "HS/GED" = High school graduate or GED, "Less than HS" = Less High school and no GED, "Missing", More than HS = "Some education beyond high school" |

- **marital**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Married or Partnered) |
  |  |  |
  | *Description:* | Marital status at intake |
  |  |  |
  | *Levels:* | "" = Not asked, "Married or Partnered", "Never married" "Not answered" = Not asked during at intake, "Separated/Divorced/Widowed" |

- **is_male**:

  |                |                                     |
  |----------------|-------------------------------------|
  | *Type:*        | factor (First/Reference level = No) |
  |                |                                     |
  | *Description:* | Sex (not gender)                    |
  |                |                                     |
  | *Levels:*      | No = Not Male); Yes = Is male       |

# Fagerstrom Test for Nicotine Dependence

Information on the intensity of physical addiction to nicotine at
baseline. See the vignette [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.md)
for more details.

## Usage

``` r
fagerstrom
```

## Format

A tibble with 3,119 rows and 4 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **is_smoker**:

  |                |                                         |
  |----------------|-----------------------------------------|
  | *Type:*        | factor                                  |
  |                |                                         |
  | *Description:* | No = Is not a smoker, Yes = Is a smoker |
  |                |                                         |
  | *Levels:*      | No, Yes                                 |

- **ftnd**:

  |                |                                                    |
  |----------------|----------------------------------------------------|
  | *Type:*        | factor                                             |
  |                |                                                    |
  | *Description:* | Fagerstrom Test For Nicotine Dependence Score 0-10 |
  |                |                                                    |
  | *Levels:*      | 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10                   |

- **per_day**:

  |                |                                        |
  |----------------|----------------------------------------|
  | *Type:*        | factor                                 |
  |                |                                        |
  | *Description:* | Cigarettes per day                     |
  |                |                                        |
  | *Levels:*      | , 10 OR LESS, 11-20, 21-30, 31 OR MORE |

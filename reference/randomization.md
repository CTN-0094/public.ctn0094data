# Randomization Data

This is the information on the treatment group. Note that CTN30 had two
randomization events.

## Usage

``` r
data(randomization)
```

## Format

A tibble with 4,691 rows and 4 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **treatment**:

  |                |                                                                                                        |
  |----------------|--------------------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = Inpatient BUP)                                                         |
  |                |                                                                                                        |
  | *Description:* | What treatment is prescribed?                                                                          |
  |                |                                                                                                        |
  | *Levels:*      | Inpatient BUP, Inpatient NR-NTX, Methadone, Outpatient BUP, Outpatient BUP + EMM, Outpatient BUP + SMM |

- **which**:

  |                |                                                                                      |
  |----------------|--------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)                                                   |
  |                |                                                                                      |
  | *Description:* | Indicator of which randomization. Needed because CTN 30 has two randomization dates. |
  |                |                                                                                      |
  | *Levels:*      | 1, 2                                                                                 |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

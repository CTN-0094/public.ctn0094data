# Risk Behavior Survey IV drug use information

This is aggregated data in IV drug use. See the [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#rbs)
vignette for more details.

## Usage

``` r
data(rbs_iv)
```

## Format

A tibble with 3,560 rows and 10 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **days**:

  |  |  |
  |----|----|
  | *Type:* | integer |
  |  |  |
  | *Description:* | Maximum number of days of IV drug use across all injected drug |

- **max**:

  |                |                           |
  |----------------|---------------------------|
  | *Type:*        | integer                   |
  |                |                           |
  | *Description:* | Number of drug use events |

- **amount**:

  |  |  |
  |----|----|
  | *Type:* | integer |
  |  |  |
  | *Description:* | Indicator of total IV drug exposure for the most used IV drug |

- **shared**:

  |                |                                            |
  |----------------|--------------------------------------------|
  | *Type:*        | factor (First/Reference level = No)        |
  |                |                                            |
  | *Description:* | Did you share needles in the last 30 days? |
  |                |                                            |
  | *Levels:*      | No, Yes                                    |

- **cocaine_inject_days**:

  |                |                                                         |
  |----------------|---------------------------------------------------------|
  | *Type:*        | integer                                                 |
  |                |                                                         |
  | *Description:* | Number of days out of last 30 when cocaine was injected |

- **heroin_inject_days**:

  |                |                                                        |
  |----------------|--------------------------------------------------------|
  | *Type:*        | integer                                                |
  |                |                                                        |
  | *Description:* | Number of days out of last 30 when heroin was injected |

- **speedball_inject_days**:

  |                |                                                           |
  |----------------|-----------------------------------------------------------|
  | *Type:*        | integer                                                   |
  |                |                                                           |
  | *Description:* | Number of days out of last 30 when speedball was injected |

- **opioid_inject_days**:

  |                |                                                        |
  |----------------|--------------------------------------------------------|
  | *Type:*        | integer                                                |
  |                |                                                        |
  | *Description:* | Number of days out of last 30 when opioid was injected |

- **speed_inject_days**:

  |                |                                                       |
  |----------------|-------------------------------------------------------|
  | *Type:*        | integer                                               |
  |                |                                                       |
  | *Description:* | Number of days out of last 30 when speed was injected |

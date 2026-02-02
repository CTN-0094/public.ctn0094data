# Self-Reported Pain

This is self-reported pain from the SF-36 (ctn_0027 and ctn_0030) and
EuroQoL (ctn_0051). See the [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#pain)
vignette for more details.

## Usage

``` r
data(pain)
```

## Format

A tibble with 3,082 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **pain**:

  |                |                                                           |
  |----------------|-----------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = Missing)                  |
  |                |                                                           |
  | *Description:* | Pain severity                                             |
  |                |                                                           |
  | *Levels:*      | Missing, No Pain, Severe Pain, Very mild to Moderate Pain |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

# Risk Behavior Survey

This is the drug use information on from the RBS. Questions ask, "How
many days did you use \_\_\_ in the last 30 days?" Days were categorized
in ctn_0051. See the [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#rbs)
vignette for more details.

## Usage

``` r
data(rbs)
```

## Format

A tibble with 15,410 rows and 4 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **what**:

  [TABLE]

- **did_use**:

  |                |                                          |
  |----------------|------------------------------------------|
  | *Type:*        | factor (First/Reference level = No)      |
  |                |                                          |
  | *Description:* | Is there a self-reported history of use? |
  |                |                                          |
  | *Levels:*      | No, Yes                                  |

- **days**:

  |                |                                                 |
  |----------------|-------------------------------------------------|
  | *Type:*        | integer                                         |
  |                |                                                 |
  | *Description:* | Number of days out of 30 that the drug was used |

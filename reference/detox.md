# Start and Stop of Detox

This is the start and stop date for detox (if known).

## Usage

``` r
data(detox)
```

## Format

A tibble with 1,316 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **what**:

  |                |                                            |
  |----------------|--------------------------------------------|
  | *Type:*        | factor (First/Reference level = admission) |
  |                |                                            |
  | *Description:* | Indicator for start or stop of detox       |
  |                |                                            |
  | *Levels:*      | admission, discharge                       |

- **when**:

  |                |                               |
  |----------------|-------------------------------|
  | *Type:*        | integer                       |
  |                |                               |
  | *Description:* | Day of start or stop of detox |

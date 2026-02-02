# Screening Date Information

The information on the screening data and baseline drug screening data
is complex and inconsistent across studies. This file has information on
dates around the screening visit and baseline timeline follow back
assessments.

## Usage

``` r
data(screening_date)
```

## Format

A tibble with 3,430 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **screening_day**:

  |                |                      |
  |----------------|----------------------|
  | *Type:*        | integer              |
  |                |                      |
  | *Description:* | The day of screening |

- **day_zero**:

  |                |                               |
  |----------------|-------------------------------|
  | *Type:*        | integer                       |
  |                |                               |
  | *Description:* | Best guess at the end of TLFB |

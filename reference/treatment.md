# Amount of Study Drug Per Day

The doses (usually in milligrams) of the study drug administered to each
subject by day. When the study drug is listed as an injection, then the
amount is recorded as 1.

## Usage

``` r
data(treatment)
```

## Format

A tibble with 216,242 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **amount**:

  |  |  |
  |----|----|
  | *Type:* | integer |
  |  |  |
  | *Description:* | The amount of drugs received on a day. Value is 1 for injections and mg otherwise |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

# Patient Withdrawal Symptoms Pre and Post Induction

This is a information on the severity of withdrawal symptoms.

## Usage

``` r
data(withdrawal_pre_post)
```

## Format

A tibble with 4,805 rows and 4 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **what**:

  |                |                                                  |
  |----------------|--------------------------------------------------|
  | *Type:*        | factor (First/Reference level = post)            |
  |                |                                                  |
  | *Description:* | Indicator of induction day type: "pre" or "post" |
  |                |                                                  |
  | *Levels:*      | post, pre                                        |

- **withdrawal**:

  [TABLE]

- **when**:

  |                |                   |
  |----------------|-------------------|
  | *Type:*        | integer           |
  |                |                   |
  | *Description:* | Day of assessment |

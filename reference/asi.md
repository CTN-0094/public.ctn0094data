# Did patient use intravenous drugs

IV drug use information from the Addiction Severity Index

## Usage

``` r
data(asi)
```

## Format

A tibble with 3,560 rows and 2 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **used_iv**:

  |                |                                      |
  |----------------|--------------------------------------|
  | *Type:*        | factor (First/Reference level = No)  |
  |                |                                      |
  | *Description:* | Self-reported history of IV drug use |
  |                |                                      |
  | *Levels:*      | No, Yes                              |

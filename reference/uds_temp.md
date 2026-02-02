# Urine Drug Screening (UDS) Temperature

This is information on whether the urine temperature was in the
acceptable range.

## Usage

``` r
data(uds_temp)
```

## Format

A tibble with 36,680 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **was_temp_ok**:

  |                |                                                                                                                 |
  |----------------|-----------------------------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = 0)                                                                              |
  |                |                                                                                                                 |
  | *Description:* | was the temperature 92°F \\\le X \le\\ 96°F OR 33.3°C \\\le X \le\\ 35.5°C? 0 = "No", 1 = "Yes", 99 = "Unknown" |
  |                |                                                                                                                 |
  | *Levels:*      | 0, 1, 99                                                                                                        |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

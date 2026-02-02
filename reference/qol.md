# Quality of Life

This is quality of life data from the PhenX Quality of Life survey (see
<https://www.phenxtoolkit.org/protocols/view/221302>). This was used by
the Clinical Trials Network protocol CTN-0051.

## Usage

``` r
data(qol)
```

## Format

A tibble with 657 rows and 2 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **is_homeless**:

  |                |                                                    |
  |----------------|----------------------------------------------------|
  | *Type:*        | factor (First/Reference level = No)                |
  |                |                                                    |
  | *Description:* | Are you currently homeless or living in a shelter? |
  |                |                                                    |
  | *Levels:*      | No, Yes                                            |

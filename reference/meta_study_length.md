# Metadata About Study Length

This is information on the duration of CTN-0094 trial periods.

## Usage

``` r
data(meta_study_length)
```

## Format

A tibble with 16 rows and 6 variables:

- **project**:

  |                |                                     |
  |----------------|-------------------------------------|
  | *Type:*        | factor (First/Reference level = 27) |
  |                |                                     |
  | *Description:* | CTN project number                  |
  |                |                                     |
  | *Levels:*      | 27, 30, 51                          |

- **treatment**:

  [TABLE]

- **phase**:

  |                |                                        |
  |----------------|----------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)     |
  |                |                                        |
  | *Description:* | Study phase (needed because of CTN 30) |
  |                |                                        |
  | *Levels:*      | 1, 2                                   |

- **stage**:

  |                |                                                                                           |
  |----------------|-------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)                                                        |
  |                |                                                                                           |
  | *Description:* | Treatment stage used with `description` to capture different treatment phase/stage/period |
  |                |                                                                                           |
  | *Levels:*      | 1, 2, 3                                                                                   |

- **weeks**:

  |                |                             |
  |----------------|-----------------------------|
  | *Type:*        | integer                     |
  |                |                             |
  | *Description:* | Treatment duration in weeks |

- **description**:

  |                |                                                                                                                     |
  |----------------|---------------------------------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = Buprenorphine-naloxone stabilization)                                               |
  |                |                                                                                                                     |
  | *Description:* | Description of the treatment duration                                                                               |
  |                |                                                                                                                     |
  | *Levels:*      | Buprenorphine-naloxone stabilization, Buprenorphine-naloxone treatment, Post-medication follow-up, Taper, Treatment |

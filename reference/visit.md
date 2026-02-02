# Patient Visit Data

This contains planned visits. Not all appointments were kept. Indicator
variables show reasons for a missed appointment (if known). This data is
not simple. There are more than 1300+ dates duplicated with different
visit types. There are week 24 visits that happen at the wrong time
(e.g., the date of week 24 is the same as week 8). There are also many
cases where two adjacent visits happen on the same day (e.g., both week
7 and week 8 have their visits on the same day). There are both visit
and no visit reports on the same day for some people. There are nearly
850 “Cross Active Study” visits and all but 43 happen on the same date
as another visit. Many variables have a "1" indicating "Yes". Other are
NA because we don't know if those values are real "No" or actually
"Unknown". **Proceed with great caution.**

|                      |          |          |          |
|----------------------|----------|----------|----------|
| Visit Type           | ctn_0027 | ctn_0030 | ctn_0051 |
| "BASELINE"           | yes      | yes      | no       |
| "WK\_\_"             | yes      | no       | yes      |
| "Cross Active Study" | no       | yes      | no       |
| "Cross Active Study" | no       | yes      | no       |
| "P1\_\_\_\_"         | no       | yes      | no       |
| "P2\_\_\_\_"         | no       | yes      | no       |
| "EOT"                | no       | no       | yes      |
| "M1F"                | no       | no       | yes      |
| "M3F"                | no       | no       | yes      |

## Usage

``` r
data(visit)
```

## Format

A tibble with 53,899 rows and 19 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **visit**:

  |                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
  |----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = BASELINE)                                                                                                                                                                                                                                                                                                                                                                                                                              |
  |                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
  | *Description:* | Indicator of the visit type. For example, "WK12" is week 12 of ctn_0027 or "P2Wk13" is week 13 of phase 2 of ctn_0030. See the table above.                                                                                                                                                                                                                                                                                                                            |
  |                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
  | *Levels:*      | BASELINE, Cross Active Study, EOT, M1F, M3F, P1Finl, P1Unsc, P1Wk10, P1Wk12, P1Wk1A, P1Wk1B, P1Wk2, P1Wk3, P1Wk4, P1Wk6, P1Wk8, P2Finl, P2Unsc, P2Wk10, P2Wk11, P2Wk12, P2Wk13, P2Wk14, P2Wk15, P2Wk16, P2Wk18, P2Wk1A, P2Wk1B, P2Wk2, P2Wk20, P2Wk22, P2Wk24, P2Wk3, P2Wk4, P2Wk5, P2Wk6, P2Wk7, P2Wk8, P2Wk9, WK0, WK1, WK10, WK11, WK12, WK13, WK14, WK15, WK16, WK17, WK18, WK19, WK2, WK20, WK21, WK22, WK23, WK24, WK28, WK3, WK32, WK4, WK5, WK6, WK7, WK8, WK9 |

- **what**:

  |                |                                                                                                     |
  |----------------|-----------------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = )                                                                   |
  |                |                                                                                                     |
  | *Description:* | Disposition of appointment - visit, no visit or MISSING. Note there are records with no disposition |
  |                |                                                                                                     |
  | *Levels:*      | , final, MISSING, no visit, visit                                                                   |

- **is_no_note**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | UNKNOWN                            |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_dead**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Patient died                       |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_no_show**:

  |                |                                          |
  |----------------|------------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)       |
  |                |                                          |
  | *Description:* | Patient did not show with no explanation |
  |                |                                          |
  | *Levels:*      | 1                                        |

- **is_no_funding**:

  |                |                                                |
  |----------------|------------------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)             |
  |                |                                                |
  | *Description:* | Patient could not afford to get to appointment |
  |                |                                                |
  | *Levels:*      | 1                                              |

- **is_left_study**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Patient withdrew from the study    |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_in_jail**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Patient is incarcerated            |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_forgot**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Patient forgot appointment         |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_in_hospital**:

  |                |                                         |
  |----------------|-----------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)      |
  |                |                                         |
  | *Description:* | Patient hospitalized during appointment |
  |                |                                         |
  | *Levels:*      | 1                                       |

- **is_illness**:

  |                |                                          |
  |----------------|------------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)       |
  |                |                                          |
  | *Description:* | Patient reported being to sick to attend |
  |                |                                          |
  | *Levels:*      | 1                                        |

- **is_moved**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Patient moved from the study area  |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_missing_14_consecutive**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Patient dropped for non-compliance |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_window**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | UNKNOWN                            |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_unable**:

  |                |                                        |
  |----------------|----------------------------------------|
  | *Type:*        | factor (First/Reference level = 1)     |
  |                |                                        |
  | *Description:* | Patient reports being unable to attend |
  |                |                                        |
  | *Levels:*      | 1                                      |

- **is_on_vacation**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Patient reports being on vacation  |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **is_other**:

  |                |                                    |
  |----------------|------------------------------------|
  | *Type:*        | factor (First/Reference level = 1) |
  |                |                                    |
  | *Description:* | Other reason given                 |
  |                |                                    |
  | *Levels:*      | 1                                  |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

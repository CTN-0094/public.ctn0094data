# Psychiatric History

Information on psychiatric symptoms and diagnoses. The same constructs
were measured using different instruments. For example, the Addition
Severity Index (ASI) asks "Have you had a significant period of time
(that was not a direct result of drug/alcohol use) in which you have
experienced hallucinations - saw things or heard voices that other
people did not hear or see?" and the medical and psychiatric history
evaluation asks about schizophrenia. The definitions of substance abuse
have changed in the American Psychiatric Association's Diagnostic and
Statistical Manual of Mental Disorders. Also see the [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#psychiatric)
vignette for more details.

## Usage

``` r
data(psychiatric)
```

## Format

A tibble with 3,560 rows and 16 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **has_schizophrenia**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | Medical and psychiatric history interview indicates schizophrenia |
  |  |  |
  | *Levels:* | No, Yes |

- **has_major_dep**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | Medical and psychiatric history interview indicates major depression |
  |  |  |
  | *Levels:* | No, Yes |

- **has_bipolar**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | Medical and psychiatric history interview indicates bipolar disorder |
  |  |  |
  | *Levels:* | No, Yes |

- **has_anx_pan**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | Medical and psychiatric history interview indicates anxiety panic disorder |
  |  |  |
  | *Levels:* | No, Yes |

- **has_brain_damage**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | Medical and psychiatric history interview indicates brain damage |
  |  |  |
  | *Levels:* | No, Yes |

- **has_epilepsy**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | Medical and psychiatric history interview indicates epilepsy |
  |  |  |
  | *Levels:* | No, Yes |

- **depression**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Yes) |
  |  |  |
  | *Description:* | Addiction Severity Index-Lite Follow-up depression: P4 = "Experienced serious depression-sadness, hopelessness, loss of interest, difficulty with daily function?" See the Details section below |
  |  |  |
  | *Levels:* | Yes, No, Not answered, Missing, |

- **anxiety**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Yes) |
  |  |  |
  | *Description:* | Addiction Severity Index-Lite Follow-up anxiety: P5 = "Experienced serious anxiety/tension, uptight, unreasonably worried, inability to feel relaxed?" See the Details section below |
  |  |  |
  | *Levels:* | Yes, No, Not answered, Missing, |

- **schizophrenia**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Yes) |
  |  |  |
  | *Description:* | Addiction Severity Index-Lite Follow-up schizophrenia P6 = "Experienced hallucinations – saw things or heard voices that other people did not hear or see?" See the Details section below |
  |  |  |
  | *Levels:* | Yes, No, Not answered, Missing, |

- **has_opiates_dx**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | DSM-4 opioid abuse or dependence diagnosis or DSM-5 "opioid use disorder" (OUD) diagnosis |
  |  |  |
  | *Levels:* | No, Yes |

- **has_alcol_dx**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | DSM-4 alcohol abuse or dependence diagnosis or DSM-5 "alcohol use disorder" (AUD) diagnosis |
  |  |  |
  | *Levels:* | No, Yes |

- **has_amphetamines_dx**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | DSM-4 amphetamine and similar sympathomimetics abuse or dependence diagnosis or DSM-5 amphetamine-type substance use disorder |
  |  |  |
  | *Levels:* | No, Yes |

- **has_cannabis_dx**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | DSM-4 cannabis abuse or dependence diagnosis or DSM-5 cannabis use disorder |
  |  |  |
  | *Levels:* | No, Yes |

- **has_cocaine_dx**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | DSM-4 cocaine abuse or dependence diagnosis or DSM-5 cocaine use disorder |
  |  |  |
  | *Levels:* | No, Yes |

- **has_sedatives_dx**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = No) |
  |  |  |
  | *Description:* | DSM-4 sedatives abuse or dependence diagnosis or DSM-5 sedative hypnotic/anxiolytic use disorder |
  |  |  |
  | *Levels:* | No, Yes |

## Source

[doi:10.1001/jama.1994.03520100096046](https://doi.org/10.1001/jama.1994.03520100096046)
DSM-IV: Diagnostic and Statistical Manual of Mental Disorders, JAMA.
1994;272(10):828-829.

[doi:10.1176/appi.books.9780890425596](https://doi.org/10.1176/appi.books.9780890425596)
Diagnostic and Statistical Manual of Mental Disorders (Fifth ed.).
Arlington, VA: American Psychiatric Publishing. ISBN 978-0-89042-555-8.

## Details

Note that the data from the ASI (depression, anxiety, and schizophrenia)
contains four levels plus `NA`. People who did not take the ASI are
coded with NA. People who took the ASI but are completely missing an
answer to a question are coded as "Missing". Others who are known to not
answer (i.e., refused to answer) are coded with "Not Answered".

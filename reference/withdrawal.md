# Patient Withdrawal Symptoms Per Day

CTN 27 and 30 use the Clinical Opiate Withdrawal Scale (COWS). CTN 51
uses SOWS. See harmonization vignette for more details.

## Usage

``` r
data(withdrawal)
```

## Format

A tibble with 14,983 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **withdrawal**:

  [TABLE]

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

## Source

Clinical Opiate Withdrawal Scale (COWS) [Wesson, DR, & Ling, W.
(2003)](https://nida.nih.gov/sites/default/files/ClinicalOpiateWithdrawalScale.pdf)

Subjective Opiate Withdrawal Scale (SOWS) [Handelsman L, Cochrane KJ,
Aronson MJ, Ness R, Rubinstein KJ, Kanof, PD (1987). Two New Rating
Scales for Opiate Withdrawal. The American journal of drug and alcohol
abuse, 1987, Vol.13 (3),
p.293-308](https://www.asam.org/docs/default-source/education-docs/sows_8-28-2017.pdf)

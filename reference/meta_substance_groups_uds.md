# Metadata About UDS Groupings

A table of the substances assessed in three clinical trials via urine
drug screen (UDS) and their groupings.

## Usage

``` r
data(meta_substance_groups_uds)
```

## Format

A tibble with 13 rows and 4 variables:

- **Substance**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Alcohol) |
  |  |  |
  | *Description:* | substances screened by UDS per study; names drawn from trial case report forms |
  |  |  |
  | *Levels:* | Alcohol, Amphetamine, Barbiturate, Benzodiazepine, Buprenorphine, Cannabinoids, Cocaine, Methadone, Methamphetamine, Opiate 2000, Opiate 300, Oxycodone, Propoxyphene |

- **CTN-0027**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Alcohol) |
  |  |  |
  | *Description:* | Derived label used to group substances of interest, or "NO" if the substance was not screened for in ctn_0027 |
  |  |  |
  | *Levels:* | Alcohol, Amphetamine, Benzodiazepine, Cocaine, Methadone, NO, Opioid, THC |

- **CTN-0030**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Amphetamine) |
  |  |  |
  | *Description:* | Derived label used to group substances of interest, or "NO" if the substance was not screened for in ctn_0030 |
  |  |  |
  | *Levels:* | Amphetamine, Benzodiazepine, Buprenorphine, Cocaine, Methadone, NO, Opioid, THC |

- **CTN-0051**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Amphetamine) |
  |  |  |
  | *Description:* | Derived label used to group substances of interest, or "NO" if the substance was not screened for in ctn_0051 |
  |  |  |
  | *Levels:* | Amphetamine, Barbiturate, Benzodiazepine, Buprenorphine, Cocaine, Methadone, NO, Opioid, THC |

## Details

This table indicates which substances were screened in each trial. The
first column (`substance`) is drawn from labels which appear in case
report forms for the three clinical trials. The remaining three columns
hold `"NO"` if a substance was not screened in that trial, or a grouping
label indicating what type of drug was screened. The ungrouped data can
be found in
[all_drugs](https://ctn-0094.github.io/public.ctn0094data/reference/all_drugs.md).

For example, `"Opiate 300 ng"` and `"Oxycodone"` are assigned to the
grouping label `"Opioid"`, and they were assessed in each clinical trial
(so none of the rows show `"NO"`). In contrast, while `"Opiate 2000 ng"`
is also assigned to the grouping label `"Opioid"`, it was neither
assessed in ctn_0027 nor ctn_0030; thus, the grouping label is `"NO"`
for these trials. For more details, see the [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#uds)
vignette.

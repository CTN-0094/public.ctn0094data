# Urine Drug Screening (UDS) Results

UDS findings. Note that oxycodone and propoxyphene are grouped into the
opioid category. ctn_0051 did not specifically screen for propoxyphene.
For details on substances screened, see the vignette [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#uds).

## Usage

``` r
data(uds)
```

## Format

A tibble with 42,906 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **what**:

  |                |                                                                                                                    |
  |----------------|--------------------------------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = Alcohol)                                                                           |
  |                |                                                                                                                    |
  | *Description:* | Name of drug identified                                                                                            |
  |                |                                                                                                                    |
  | *Levels:*      | Alcohol, Amphetamine, Benzodiazepine, Buprenorphine, Cocaine, Mdma/Hallucinogen, Methadone, Opioid, Sedatives, Thc |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

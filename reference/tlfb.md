# Timeline Followback (TLFB) Drug Use Information

This is self-reported drug use. The values are the result of extensive
processing of free text as well as structured values. These substances
are group grouped as opioids: Codeine, Fentanyl, Hydrocodone,
Merperidine, Oxycodone, Oxymorphone, Propoxyphene. ***NOTE: Records
where people self-reported the study drug after it was prescribed have
been removed from this file.*** The `all_drugs` dataset contains these
nebulous records. See the vignette [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#tlfb)
for more information.

## Usage

``` r
data(tlfb)
```

## Format

A tibble with 237,778 rows and 3 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **what**:

  |                |                                                                                                                                                                                                                                                                                                                                                                                    |
  |----------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | *Type:*        | factor (First/Reference level = Alcohol)                                                                                                                                                                                                                                                                                                                                           |
  |                |                                                                                                                                                                                                                                                                                                                                                                                    |
  | *Description:* | Text description of drugs; for more information, see [Harmonization Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.html#tlfb)                                                                                                                                                                                                                        |
  |                |                                                                                                                                                                                                                                                                                                                                                                                    |
  | *Levels:*      | Alcohol, Amphetamine, Analgesic, Antibiotic, Antidepressant, Antiemetic, Antihistamine, Antipsychotic, Benadryl, Benzodiazepine, Buprenorphine, Caffeine, Cathinones, Clonidine, Cocaine, Dextromethorphan, Ghb, Hallucinogen, Heroin, Inhalant, K2, Kratom, Mdma/Hallucinogen, Methadone, Methylphenidate, Muscle Relaxant, Opioid, Pcp, Pseudoephedrine, Sedatives, THC, Unknown |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study Day |

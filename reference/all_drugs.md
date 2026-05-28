# All drugs taken

This is a record of both self-reported drug use and positive drug
screening results. See the vignette [Harmonization
Information](https://ctn-0094.github.io/public.ctn0094data/doc/harmonization.md)
for more details.

## Usage

``` r
data(all_drugs)
```

## Format

A tibble with 307,523 rows and 4 variables:

- **who**:

  |                |            |
  |----------------|------------|
  | *Type:*        | integer    |
  |                |            |
  | *Description:* | Patient ID |

- **what**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = Acetaminophen) |
  |  |  |
  | *Description:* | Name of drug (or alcohol) from self-reported or drug screening |
  |  |  |
  | *Levels:* | Acetaminophen, Alcohol, Amphetamine, Antibiotic, Antidepressant, Antiemetic, Antihistamine, Antipsychotic, Barbiturate, Benadryl, Benzodiazepine, Buprenorphine, Caffeine, Cathinones, Clonidine, Cocaine, Codeine, Crack, Dextromethorphan, Fentanyl, Gabapentin, Ghb, Hallucinogen, Heavy Drinking, Heroin, Hydrocodone, Hydromorphone, Inhalant, K2, Kratom, Light Drinking, Mdma, Merperidine, Methadone, Methamphetamine, Methylphenidate, Morphine, Musclerelax, Nalbuphine, Opioid, Opium, Oxycodone, Oxymorphone, Pcp, Propoxyphene, Pseudoephedrine, Sedative-Hypnotic, Suboxone, Thc, Tramadol, Trazodone, Tryclic-Antidepressant, Unknown |

- **source**:

  |  |  |
  |----|----|
  | *Type:* | factor (First/Reference level = TFB) |
  |  |  |
  | *Description:* | Source of reported drug use. TLFB = Timeline Follow Back; UDS = Urine Drug Screening; UDSAB = Urine Drug Screening & Alcohol Breathalyzer |
  |  |  |
  | *Levels:* | TFB, UDS, UDSAB |

- **when**:

  |                |           |
  |----------------|-----------|
  | *Type:*        | integer   |
  |                |           |
  | *Description:* | Study day |

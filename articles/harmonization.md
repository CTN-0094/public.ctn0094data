# Harmonization Information

One of the objectives for CTN-0094 was to harmonize data from three
clinical trials, ctn_0027, ctn_0030, and ctn_0051. This vignette
describes harmonization details and the identification/fixing of
problematic values in the trial data. Every dataset in this package has
its own documentation. To help protect the anonymity of the study
participants two steps were taken. First, the study site information was
modified (see the documentation for
[`public.ctn0094data::site_masked`](https://ctn-0094.github.io/public.ctn0094data/reference/site_masked.md)
for details). Second, all dates have been replace by the number of days
relative to study consent. Therefore, some information, like the day of
drug use in the month before enrollment is stored as negative numbers.
Below, you will find additional details on the harmonization process.
Section headings correspond to data sets.

## The `all_drugs` dataset

The
[`public.ctn0094data::all_drugs`](https://ctn-0094.github.io/public.ctn0094data/reference/all_drugs.md)
dataset is an agglomeration of all self-reported drugs, drugs found in
urine drug screening and alcohol screening in ctn_0027, ctn_0030, and
ctn_0051. This data is the result of extensive preprocessing of free
text to harmonize drug names, but drugs were not collapsed into groups.
For example, the many descriptions, abbreviations, and spellings of
variants of suboxone (e.g., “street suboxone”, “bup/nx”, “buxnx”,
“bupnx”, “pbupnx”, “bupxx”) were harmonized into a single “suboxone”
group but suboxone was not collapsed with other buprenorphine
formulations.

While there were **many** spellings and text variants (including mg and
location where drug was administered), the list in [Table 1](#tab:final)
summarizes the additional text and the changes were made to the free
text entries. Many free text entries included the combination of two or
more drugs. In these cases, a record was created for each drug. For
example, the free text entry of ‘Amitiptyline & Trazadone’ (literal
incorrect spelling from record used here for example) was converted two
records: ‘Tryclic-antidepressant’ and ‘Antidepressant’.

Table 1: Recoded Free Text Descriptions of Drugs.

| Original Text | Final Text |
|:---|:---|
| ‘Acid’ | ‘Hallucinogen’ |
| ‘Adderall’ | ‘Amphetamine’ |
| ‘Ambien’ | ‘Sedative-Hypnotic’ |
| ‘Amitiptyline & Trazadone’ | ‘Tryclic-antidepressant’ & ‘Antidepressant’ |
| ‘Angel Dust’ | ‘PCP’ |
| ‘Ativan’ | ‘Benzodiazepine’ |
| ‘Baclofen’ | ‘Muscle Relaxant’ |
| ‘Bath Salts’ | ‘Cathinones’ |
| ‘Bup/Nx & Tramadol’ | ‘Suboxone’ & ‘Tramadol’ |
| ‘Cannabinoids’ | ‘THC’ |
| ‘Carisoprodol’ | ‘Muscle Relaxant’ |
| ‘Darvocet’ | ‘Propoxyphene’ & ‘Acetaminophen’ |
| ‘DXM’ | ‘Dextromethorphan’ |
| ‘Dust’ | ‘PCP’ |
| ‘Ecstasy’ | ‘MDMA’ |
| ‘Fioricet’ | ‘Barbiturate’ & ‘Caffeine’ |
| ‘Flexeral’ | ‘Muscle Relaxant’ |
| ‘Hallucinogens inc mdma’ | ‘Hallucinogen’ & ‘MDMA’ |
| ‘Heroin/Opium’ | ‘Heroin’ & ‘Opium’ |
| ‘Hydroxyzin’ | ‘Antihistamine’ |
| ‘Keflex’ | ‘Antibiotic’ |
| ‘Klonopin’ | ‘Benzodiazepine’ |
| ‘Librium Detox’ | ‘Benzodiazepine’ |
| ‘LSD’ | ‘Hallucinogen’ |
| ‘Lunesta’ | ‘Sedative-Hypnotic’ |
| ‘Marijuana’ | ‘THC’ |
| ‘Meth’ | ‘Methamphetamine’ |
| ‘Ms Contin’ | ‘Morphine’ |
| ‘Mushroom’ | ‘Hallucinogen’ |
| ‘Neurotin’ | ‘Gabapentin’ |
| ‘Norco’ | ‘Hydrocodone’ & ‘Acetaminophen’ |
| ‘Participant Was Unsure Whether She Took A Percocet Or A Vicodin’ | ‘Opioid’ |
| ‘Penicilin (Not Ppt Rx)’ | ‘Antibiotic’ |
| ‘Penicillin - Mushrooms (Psilocybin)’ | ‘Hallucinogen’ |
| ‘Soma Codeine’ | ‘Muscle Relaxant’ & ‘Codeine’ |
| ‘Somas’ | ‘Muscle Relaxant’ |
| ‘Percocets And Vicodin’ | ‘Oxycodone’ & ‘Hydrocodone’ |
| ‘Percoset’ | ‘Hydrocodone’ |
| ‘Phenagrin’ | ‘Antiemetic’ |
| ‘Phenergran With Codeine’ | ‘Antiemetic’ & ‘Codeine’ |
| ‘Phenobarbi’ | ‘Barbiturate’ |
| ‘Promethazine, Clonidine’ | ‘Antiemetic’ & ‘Clonidine’ |
| ‘Quetiapine’ | ‘Antipsychotic’ |
| ‘Remeron’ | ‘Antidepressant’ |
| ‘Ritalin’ | ‘Methylphenidate’ |
| ‘Seroquel’ | ‘Antipsychotic’ |
| ‘Sleeping Pill’ | ‘Sedative-Hypnotic’ |
| ‘Snow’ | ‘Cathinones’ |
| ‘Speed’ | ‘Amphetamine’ |
| ‘Speed Ball’ | ‘Heroin’ & ‘Cocaine’ |
| ’Spice | ‘K2’ |
| ‘Subutex’ | ‘Buprenorphine’ |
| ‘Sudafed’ | ‘Pseuedoephidrine’ |
| ‘Tranquilizers’ | ‘Sedative-Hypnotic’ |
| ‘Trazodone(Desyrel)’ | ‘Trazodone’ |
| ‘Tylonol 3’ | ‘Codeine’ & ‘Acetaminophen’ |
| ‘Tylenol PM’ | ‘Acetaminophen’ & ‘Benadryl’ |
| ‘Ultracet’ | ‘Tramadol’ & ‘Acetaminophen’ |
| ‘Valium’ | ‘Benzodiazepine’ |
| ‘Vicodin’ | ‘Hydrocodone’ |
| ‘Vistaril’ | ‘Antihistamine’ |
| ‘Wet (Pcp)’ | ‘PCP’ |
| ‘Zolpidem’ | ‘Sedative-Hypnotic’ |

The timeline-followback (TLFB) data had many dozens of typos in dates.,
nearly all of which could be fixed by looking at form completion dates
and the dates before and after the problematic records. In ctn_0030, out
of nearly 40 problematic dates, only one could not be fixed and the
record was dropped. ctn_0051 stored TLFB data in two files. One file
contained start and stop dates for the baseline TLFB assessment. The
second contained the results for each day. These files were occasionally
inconsistent. Five start/stop records were modified based on the
randomization data and the dated data.

Urine drug screening (UDS) records also had many date problems. In
ctn_0027, approximately 100 records had UDS screening dates that were
problematic. There were a dozen problematic dates in ctn_0030. All could
be unambiguously fixed using other dated records and form date stamps.

Self-reported drug information in the TLFB in ctn_0027 allowed for
free-text entry of any substance. The TLFB for ctn_0030 and ctn_0051
used structured questions to assess the use of alcohol and drugs.
Specifically, the TLFB for ctn_0030 only checked for these drugs listed
in [Table 2](#tab:ctn3051tlfb). It allowed for ***free-text entry of
only other opiates***, all other abused substances are unknown.
Frequently appearing “other opiates” included “Suboxone”,
“Buprenorphine”, “Darvocet” and “Fentanyl.” CTN-51 used the more
comprehensive set of drugs listed in [Table 2](#tab:ctn3051tlfb) and it
allowed for up to two additional drugs per day. Frequently occurring
free text drugs from ctn_0051 included: Fioricet, Adderall, Baclofen,
K2/Spice, Codeine, Fentanyl, Kratom, Bath Salts, Gabapentin, PCP, and
Ambien.

Table 2: Drugs Assessed by ctn_0030 and ctn_0051 Timeline Followback
Questionnaires.

| substance                            | ctn_0030     | ctn_0051              |
|:-------------------------------------|:-------------|:----------------------|
| Alcohol                              | Yes          | Yes (Standard Drinks) |
| Amphetamine                          | Yes          | Yes                   |
| Buprenorphine                        | No           | Yes                   |
| Ecstasy                              | No           | Yes                   |
| Sedative Barbiturates                | No           | Yes                   |
| Sedatives other than Benzodiazepines | Yes          | No                    |
| Benzodiazepines                      | Yes          | Yes                   |
| Cannabinoids (THC)                   | Yes          | Yes                   |
| Cocaine                              | Yes          | Yes                   |
| Crack                                | No           | Yes                   |
| Inhalants                            | No           | Yes                   |
| Methadone                            | Yes          | Yes                   |
| Methamphetamine                      | Yes          | No                    |
| Opioid Analgesics                    | No           | Yes                   |
| Heroin                               | Heroin/Opium | Yes                   |
| Morphine                             | Yes          | No                    |
| Hydromorphone                        | Yes          | No                    |
| Codeine                              | Yes          | No                    |
| Oxycodone                            | Yes          | No                    |
| Hydrocodone                          | Yes          | No                    |
| Propoxyphene                         | Yes          | No                    |
| Other Opiates                        | Yes          | No                    |
| Other Drug 1                         | No           | Yes                   |
| Other Drug 2                         | No           | Yes                   |

A few participants (who = 116,166, 250, 934, 1331, 3325) had some TLFB
data after the last date with treatment drug which included their
treatment medication (buprenorphine).

See
[`public.ctn0094data::all_drugs`](https://ctn-0094.github.io/public.ctn0094data/reference/all_drugs.md)
for additional details/information.

#### Buprenorphine Details

ctn_0051 consistently gathered self-reported drug use and urine drug
screening (UDS) data on buprenorphine even after it was prescribed, but
ctn_0027 and ctn_0030 did not. In the rare cases where a subject in
ctn_0027 and ctn_0030 self-reported taking the drugs prescribed as part
of the trial, those records were *left in the dataset*. Analysts should
proceed with caution because it is unclear if these are data entry
issues or if people were supplementing their prescribed drugs. In
ctn_0027 there were no self-reports of buprenorphine but 16 people
self-reported their methadone at least once after it was prescribed for
them. This accounted for only 112 out of more than 100,000 self-reported
drug events in ctn_0027. In ctn_0030, suboxone use was self-reported,
after prescription, by six people (for eight problematic records out of
tens of thousands of drug use events).

ctn_0027 did not include buprenorphine in its UDS, ctn_0030 had
scheduled screenings for it (in phase 1 at the week 10 and 12/final
visits and in phase 2 at the week 22 and 24/final visits) and ctn_0051
consistently checked for it. There are many buprenorphine UDS screenings
in ctn_0030 that were not in week 10, 12, 22 or 24 (N = 40). Nearly
always, these seem to be duplicates of the “final visit” records.
Analysts should proceed with caution when looking at UDS records for
buprenorphine in ctn_0030.

#### Alcohol

The timeline followback data for ctn_0027 included free text
descriptions of the number of alcoholic beverages consumed on a day.
Free text included entries that ran the gamut from casual drinking
(e.g., “1/2 beer for birthday”), through heavy drinking (e.g., “3 16oz
beer, 1 shot hard alcohol, 1 mixed drink”), out to dangerous quantities
(e.g., “6pk beer & 1/2 gal. rum”). All entries were converted to
standard drinks using information at the [National Institute on Alcohol
Abuse and
Alcoholism](https://www.niaaa.nih.gov/alcohols-effects-health/what-standard-drink),
Wikipedia. Bartending references were used to estimate the number of
shots contained in larger containers
(`https://www.thespruceeats.com/how-many-shots-in-a-bottle-761232`).
Ambiguous entries like “many glasses of wine” were coded as five
standard drinks. For women, between half a standard drink to less than
four standard drinks was considered light drinking for a day. For men,
half a standard drink to less than five was considered light drinking
for a day. In ctn_0027 less than eight people were marked as drinking
something on a particular day but no details were provided. The drinking
records for each person were reviewed. Four people had *no other of
alcohol use*, so these records were dropped. Three others had a history
of light alcohol use so problematic days were marked as light drinking
and one person had an unambiguous history of very heavy drinking,
therefore the unknown day was marked as heavy drinking.

See
[`public.ctn0094data::all_drugs`](https://ctn-0094.github.io/public.ctn0094data/reference/all_drugs.md)
for additional details/information.

## The `asi` dataset

See
[`public.ctn0094data::asi`](https://ctn-0094.github.io/public.ctn0094data/reference/asi.md)
for details/information.

## The `demographics` dataset

See
[`public.ctn0094data::demographics`](https://ctn-0094.github.io/public.ctn0094data/reference/demographics.md)
for details/information.

## The `detox` dataset

See
[`public.ctn0094data::detox`](https://ctn-0094.github.io/public.ctn0094data/reference/detox.md)
for details/information.

## The `everybody` dataset

See
[`public.ctn0094data::everybody`](https://ctn-0094.github.io/public.ctn0094data/reference/everybody.md)
for details/information.

## The `fagerstrom` dataset

Tobacco use was not assessed in ctn_0027. ctn_0030 subjects are scored
as being smokers or nonsmokers (in the past 30 days). ctn_0051 assessed
current smoking and the Fagerstrom Test For Nicotine Dependence Score.

See
[`public.ctn0094data::fagerstrom`](https://ctn-0094.github.io/public.ctn0094data/reference/fagerstrom.md)
for additional details/information.

## The `first_survey` dataset

See
[`public.ctn0094data::first_survey`](https://ctn-0094.github.io/public.ctn0094data/reference/first_survey.md)
for details/information.

## The `pain` dataset

Baseline pain was assessed using the SF-36 in ctn_0027 and ctn_0030 and
using the EuroQoL in CTN-51. SF-36 responses to the question “How much
bodily pain have you had during the past 4 weeks?” were aggregated into
three categories “No Pain”, “Very mild to Moderate Pain”, “Severe Pain”.
The EuroQoL as ask respondents to rank “Pain/discomfort” in one of three
categories. These levels were labeled using the same categories
described above.

| SF-36 Original Response | Grouped Response           |
|:------------------------|:---------------------------|
| None                    | None                       |
| Very mild               | Very mild to Moderate Pain |
| Mild                    | Very mild to Moderate Pain |
| Moderate                | Very mild to Moderate Pain |
| Severe                  | Severe Pain                |
| Very Severe             | Severe Pain                |

| EuroQoL Original Response          | Grouped Response           |
|:-----------------------------------|:---------------------------|
| I have no pain or discomfort       | None                       |
| I have moderate pain or discomfort | Very mild to Moderate Pain |
| I have extreme pain or discomfort  | Severe Pain                |

## The `psychiatric` dataset

The medical history assessment for all three trails included:
schizophrenia, depression, bipolar disorder, anxiety (anxiety was
grouped with panic disorder in ctn_0027 and ctn_0030), brain damage, and
epilepsy.

While ctn_0027 and ctn_0030 gathered psychiatric symptoms using DSM-4
criteria, ctn_0051 used DSM-5 criteria. CTN-027 checked for diagnosis of
dependency on opiates, alcohol, amphetamines, cannabis, cocaine,
sedatives, benzodiazepines, and dependence on other depressants, or
dependence on other stimulants. ctn_0030 only scored people as having a
diagnosis of dependency on opiates.

## The `randomization` dataset

See
[`public.ctn0094data::randomization`](https://ctn-0094.github.io/public.ctn0094data/reference/randomization.md)
for details/information.

## The `rbs` dataset

ctn_0027 and ctn_0030 assessed drug use as the count of days out of the
last 30 that drugs (cocaine, heroin alone, speedball, opiate,
amphetamine) were used ctn_0051 assessed the number of days of drug use
on an ordinal scale which was converted to number of days. The
conversion is show in [Table 3](#tab:ivdays).

Table 3: Estimated Days of Drug Use Based on ctn_0051 Categories

| Reported amount       | Days of Use Per Month |
|:----------------------|:----------------------|
| Not at all            | 0                     |
| A few times           | 4                     |
| A few times each week | 14                    |
| Every day             | 30                    |

## The `rbs_iv` dataset

See
[`public.ctn0094data::rbs_iv`](https://ctn-0094.github.io/public.ctn0094data/reference/rbs_iv.md)
for details/information.

## The `screening_date` dataset

See
[`public.ctn0094data::screening_date`](https://ctn-0094.github.io/public.ctn0094data/reference/screening_date.md)
for details/information.

## The `sex` dataset

See
[`public.ctn0094data::sex`](https://ctn-0094.github.io/public.ctn0094data/reference/sex.md)
for details/information.

## The `tlfb` dataset

These are drugs that were self-reported. Some of the drugs listed in the
[all_drugs](#all_drugs) file have been grouped. Note the “medical use”
opioids are grouped as “Opioid” but “Heroin” and “Opium” are grouped
together as “Heroin”.

Table 4: Drug Groupings Used in the tflb File.

| *all_drugs* Description | *tlfb* After Grouping |
|:------------------------|:----------------------|
| Acetaminophen           | Analgesic             |
| Amphetamine             | Amphetamine           |
| Barbiturate             | Sedatives             |
| Codeine                 | Opioid                |
| Crack                   | Cocaine               |
| Fentanyl                | Opioid                |
| Heroin                  | Opioid                |
| Gabapentin              | Analgesic             |
| Hydrocodone             | Opioid                |
| Hydromorphone           | Opioid                |
| Mdma                    | MDMA/hallucinogen     |
| Merperidine             | Opioid                |
| Methamphetamine         | Amphetamine           |
| Morphine                | Opioid                |
| Muscle Relaxant         | Analgesic             |
| Nalbuphine              | Analgesic             |
| Opium                   | Heroin                |
| Oxycodone               | Opioid                |
| Oxymorphone             | Opioid                |
| Propoxyphene            | Opioid                |
| Suboxone                | Buprenorphine         |
| Sedative-Hypnotic       | Sedatives             |
| Thc                     | Thc                   |
| Tramadol                | Opioid                |
| Trazodone               | Antidepressant        |
| Tryclic-Antidepressant  | Antidepressant        |

A few participants (who = 116, 166, 250, 934, 1331, 3325) had some TLFB
data after the last date on the dispensed study drug which included
their treatment medication (buprenorphine). All treatment drug records
have been removed from the `tlfb` file but they remain in `all_drugs`.

See the section [all_drugs](#all_drugs) for additional details.

## The `treatment` dataset

The date information for administration of treatment drugs required
*extensive* processing to find and fix problematic dates. Many
algorithms were used to identify problems. These included:

1.  treatment dates far before randomization
2.  identifying dates past the end of the study period
3.  duplicate dates

When such problematic dates were identified, the data were manually
reviewed to try to find gaps in the medication history. Nearly always
the values were found to be typos in the year and month. In these cases,
the dates were fixed. ctn_0027 had more than 250 such typos and all but
10 could be fixed unambiguously. ctn_0030 had approximately two dozen
such typos, two of which could not be fixed. The records which could not
be fixed were dropped. One person in ctn_0030 had multiple drug records
for the same date. The lower mg records were deleted.

Further ctn_0027 had approximately 100 data entry problems mislabeling
the drug administered on random days. That is, in the source data,
subjects were listed as receiving a single dose of methadone, with the
mg appropriate for buprenorphine, in the middle of dozens or hundreds of
doses of buprenorphine. Similar mistakes happened for people receiving
methadone. These mislabeling mistakes were fixed.

## The `uds` dataset

The Urine Drug Screening (UDS) protocols were not identical across the
three trials. In [Table 5](#tab:uds) shows the details of what was
tested. Note that this table has many opiates grouped into an “Opioid”
category and both Amphetamine and Methamphetamine are grouped as
“Amphetamine”. The not-grouped data can be found in the `all_drugs`
table.

Table 5: Drugs Assessed in UDS for Trials with Grouping Categories.

| Substance       | CTN-0027       | CTN-0030       | CTN-0051       |
|:----------------|:---------------|:---------------|:---------------|
| Alcohol         | Alcohol        | NO             | NO             |
| Amphetamine     | Amphetamine    | Amphetamine    | Amphetamine    |
| Barbiturate     | NO             | NO             | Barbiturate    |
| Benzodiazepine  | Benzodiazepine | Benzodiazepine | Benzodiazepine |
| Buprenorphine   | NO             | Buprenorphine  | Buprenorphine  |
| Cannabinoids    | THC            | THC            | THC            |
| Cocaine         | Cocaine        | Cocaine        | Cocaine        |
| Methadone       | Methadone      | Methadone      | Methadone      |
| Methamphetamine | Amphetamine    | Amphetamine    | Amphetamine    |
| Opiate 300      | Opioid         | Opioid         | Opioid         |
| Opiate 2000     | NO             | NO             | Opioid         |
| Oxycodone       | Opioid         | Opioid         | Opioid         |
| Propoxyphene    | Opioid         | Opioid         | NO             |

See the section [all_drugs](#all_drugs) for additional details.

## The `visit` dataset

Missed visits in ctn_0027 as missing the appointment dates but they have
the visit week.

ctn_0027 and ctn_0030 logged reasons for missed appointments as free
text. ctn_0051 categorized reasons for missing appointments into 10
groups plus an “Other” categorized. All reasons were harmonized into a
set 14 excuse categories. The free text was scanned for key
words/phrases (including frequently occurring misspellings) and these
were converted into the indicator variables shown in [Table
6](#tab:excuse).

Table 6: Reasons for Not Attending Appointments.

| Key Words                | Category                            |
|:-------------------------|:------------------------------------|
| ‘deceased’               | Dead                                |
| ‘no show’                | No Show                             |
| ‘no-show’                | No Show                             |
| ‘not show’               | No Show                             |
| ‘no visit’               | No Show                             |
| ‘Missed visit’           | No Show                             |
| ‘MIA’                    | No Show                             |
| ‘did not attend’         | No Show                             |
| ‘never showed’           | No Show                             |
| ‘did not contact’        | No Show                             |
| ‘abscent’                | No Show                             |
| ‘Absent’                 | No Show                             |
| ‘unable to contact’      | No Show                             |
| ‘no funding’             | No Funding                          |
| ‘left study’             | Left Study                          |
| ‘terminated’             | Left Study                          |
| ‘withdraw’               | Left Study                          |
| ‘withdrew’               | Left Study                          |
| ‘withdrawn’              | Left Study                          |
| ‘did not schedule’       | Left Study                          |
| ‘drop out’               | Left Study                          |
| ‘early term’             | Left Study                          |
| ‘out of the study’       | Left Study                          |
| ‘Pt dropped out’         | Left Study                          |
| ‘prison’                 | In Jail                             |
| ‘jail’                   | In Jail                             |
| ‘incarcerated’           | In Jail                             |
| ‘forgot’                 | Forgot                              |
| ‘hospital’               | In Hospital                         |
| ‘illness’                | Illness                             |
| ‘moved’                  | Moved                               |
| ‘14’                     | Missing 14 Consecutive Appointments |
| ‘window’                 | Study Window                        |
| ‘unable to attend visit’ | Unable                              |
| ‘vacation’               | On Vacation                         |

## The `withdrawal` dataset

Note that ctn_0027 and ctn_0030 used the Clinical Opiate Withdrawal
Scale (COWS) and ctn_0051 used the Subjective Opiate Withdrawal Scale
(SOWS) to assess withdrawal symptoms. While COWS makes a distinction
between moderately severe and severe withdrawal, SOWS does not.
Therefore, we combine the severe and moderately severe categories and
label them as “severe”.

#### CTN 27

The Clinical Opiate Withdrawal Scale (COWS)

        select;
            when(score >= 37) withdrawl = 3; * severe;
            when(score >= 25) withdrawl = 3; * moderately severe same as severe;
            when(score >= 13) withdrawl = 2; * moderate;
            when(score >= 5)  withdrawl = 1; * mild;
            when(score >= 0)  withdrawl = 0; * none;
        end;

#### CTN 30

The Clinical Opiate Withdrawal Scale (COWS)

        select;
            when(score >= 37) withdrawl = 3; * severe;
            when(score >= 25) withdrawl = 3; * moderately severe same as severe;
            when(score >= 13) withdrawl = 2; * moderate;
            when(score >= 5)  withdrawl = 1; * mild;
            when(score >= 0)  withdrawl = 0; * none; 
        end;

#### CTN 51

Subjective Opiate Withdrawal Scale (SOWS)

            select;
                when (score >= 21) withdrawl = 3; * severe;
                when (score >= 11) withdrawl = 2; * moderate;
                when (score >= 1)  withdrawl = 1; * mild;
                when (score = 0)   withdrawl = 0; * none;
                when (score = .)   withdrawl = .;
            end;

## The `withdrawal_pre_post` dataset

See
[`public.ctn0094data::withdrawal_pre_post`](https://ctn-0094.github.io/public.ctn0094data/reference/withdrawal_pre_post.md)
for details/information.

``` r

sessionInfo()
#> R version 4.6.0 (2026-04-24)
#> Platform: x86_64-pc-linux-gnu
#> Running under: Ubuntu 24.04.4 LTS
#> 
#> Matrix products: default
#> BLAS:   /usr/lib/x86_64-linux-gnu/openblas-pthread/libblas.so.3 
#> LAPACK: /usr/lib/x86_64-linux-gnu/openblas-pthread/libopenblasp-r0.3.26.so;  LAPACK version 3.12.0
#> 
#> locale:
#>  [1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C           LC_TIME=C.UTF-8       
#>  [4] LC_COLLATE=C.UTF-8     LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8   
#>  [7] LC_PAPER=C.UTF-8       LC_NAME=C              LC_ADDRESS=C          
#> [10] LC_TELEPHONE=C         LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C   
#> 
#> time zone: UTC
#> tzcode source: system (glibc)
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> other attached packages:
#> [1] kableExtra_1.4.0
#> 
#> loaded via a namespace (and not attached):
#>  [1] vctrs_0.7.3              svglite_2.2.2            cli_3.6.6               
#>  [4] knitr_1.51               rlang_1.2.0              xfun_0.58               
#>  [7] stringi_1.8.7            otel_0.2.0               textshaping_1.0.5       
#> [10] jsonlite_2.0.0           glue_1.8.1               htmltools_0.5.9         
#> [13] ragg_1.5.2               sass_0.4.10              scales_1.4.0            
#> [16] rmarkdown_2.31           evaluate_1.0.5           jquerylib_0.1.4         
#> [19] fastmap_1.2.0            yaml_2.3.12              lifecycle_1.0.5         
#> [22] stringr_1.6.0            compiler_4.6.0           RColorBrewer_1.1-3      
#> [25] fs_2.1.0                 htmlwidgets_1.6.4        public.ctn0094data_1.1.0
#> [28] rstudioapi_0.18.0        farver_2.1.2             systemfonts_1.3.2       
#> [31] digest_0.6.39            viridisLite_0.4.3        R6_2.6.1                
#> [34] magrittr_2.0.5           bslib_0.11.0             tools_4.6.0             
#> [37] xml2_1.5.2               pkgdown_2.2.0            cachem_1.1.0            
#> [40] desc_1.4.3
```

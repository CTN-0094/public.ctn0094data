library(tidyverse)
library(labelled)

# loading the data sets
load("./data/all_drugs.rda")
load("./data/asi.rda")
load("./data/demographics.rda")
load("./data/detox.rda")
load("./data/everybody.rda")
load("./data/fagerstrom.rda")
load("./data/first_survey.rda")
load("./data/meta_study_length.rda")
load("./data/meta_substance_groups_uds.rda")
load("./data/pain.rda")
load("./data/psychiatric.rda")
load("./data/qol.rda")
load("./data/randomization.rda")
load("./data/rbs.rda")
load("./data/rbs_iv.rda")
load("./data/screening_date.rda")
load("./data/sex.rda")
load("./data/site_masked.rda")
load("./data/tlfb.rda")
load("./data/treatment.rda")
load("./data/uds.rda")
load("./data/uds_temp.rda")
load("./data/visit.rda")
load("./data/withdrawal.rda")
load("./data/withdrawal_pre_post.rda")

# labeling them all
all_drugs <- as_tibble(all_drugs) |>
  set_variable_labels(
    who = "PatientID",
    what = "Name of Drug",
    source = "Source of Reported Drug Use",
    when = "Study Day"
  )

asi <- as_tibble(asi) |>
  set_variable_labels(
    who = "PatientID",
    used_iv = "Self-Reported History of IV Drug Use"
  )

demographics <- as_tibble(demographics) |>
  set_variable_labels(
    who = "PatientID",
    age = "Age at Intake",
    is_hispanic = "Hispanic Heritage?",
    race = "Self-reported Race",
    job = "Employment Status at Intake",
    is_living_stable = "Living Stability",
    education = "Education Level at Intake",
    marital = "Marital Status at Intake",
    is_male = "Sex is Male"
  )

detox <- as_tibble(detox) |>
  set_variable_labels(
    who = "PatientID",
    what = "Start or Stop of Detox",
    when = "Day of Start or Stop of Detox"
  )

everybody <- as_tibble(everybody) |>
  set_variable_labels(
    who = "PatientID",
    project = "CTN Project Number"
  )

fagerstrom <- as_tibble(fagerstrom) |>
  set_variable_labels(
    who = "PatientID",
    is_smoker = "Is a Smoker",
    ftnd = "Fagerstrom Test for Nicotine Dependence Score 0-10",
    per_day = "Cigarettes per Day"
  )

first_survey <- as_tibble(first_survey) |>
  set_variable_labels(
    who = "PatientID",
    when = "Study Day"
  )

meta_study_length <- as_tibble(meta_study_length) |>
  set_variable_labels(
    project = "CTN Project Number",
    treatment = "Treatment Method",
    phase = "Study Phase",
    stage = "Treatment Stage",
    weeks = "Treatment Duration in Weeks",
    description = "Description of the Treatment Duration"
  )

meta_substance_groups_uds <- as_tibble(meta_substance_groups_uds) |>
  set_variable_labels(
    Substance = "Substances Screened by UDS Per Study",
    `CTN-0027` = "Derived Label Used to Group Substances of Interest in CTN-0027",
    `CTN-0030` = "Derived Label Used to Group Substances of Interest in CTN-0030",
    `CTN-0051` = "Derived Label Used to Group Substances of Interest in CTN-0051"
  )

pain <- as_tibble(pain) |>
  set_variable_labels(
    who = "PatientID",
    pain = "Pain Severity",
    when = "Study Day"
  )

psychiatric <- as_tibble(psychiatric) |>
  set_variable_labels(
    who = "PatientID",
    has_schizophrenia = "Medical and Psychiatric History Indicates Schizophrenia",
    has_major_dep = "Medical and Psychiatric History Indicates Major Depression",
    has_bipolar = "Medical and Psychiatric History Indicates Bipolar",
    has_anx_pan = "Medical and Psychiatric History Indicates Anxiety Panic Disorder",
    has_brain_damage = "Medical and Psychiatric History Indicates Brain Damage",
    has_epilepsy = "Medical and Psychiatric History Indicates Epilepsy",
    depression = "Addiction Severity Index-Lite Follow-up Depression",
    anxiety = "Addiction Severity Index-Lite Follow-up Anxiety",
    schizophrenia = "Addiction Severity Index-Lite Follow-up Schizophrenia",
    has_opiates_dx = "DSM-4 Opiod Abuse or Dependence Diagnosis or DSM-5 Opiod Use Disorder Diagnosis",
    has_alcol_dx = "DSM-4 Alcohol Abuse or Dependence Diagnosis or DSM-5 Alcohol Use Disorder Diagnosis",
    has_amphetamines_dx = "DSM-4 Amphetamine and Similar Sympathomimetics Abuse or Dependence Diagnosis or DSM-5 Amphetamine-type Substance Use Disorder",
    has_cannabis_dx = "DSM-4 Cannabis Abuse or Dependence Diagnosis or DSM-5 Cannabis Use Disorder",
    has_cocaine_dx = "DSM-4 Cocaine Abuse or Dependence Diagnosis or DSM-5 Cocaine Use Disorder",
    has_sedatives_dx = "DSM-4 Sedatives Abuse or Dependence Diagnosis or DSM-5 Sedative Hypnotic/Anxiolytic Use Disorder"
  )

qol <- as_tibble(qol) |>
  set_variable_labels(
    who = "PatientID",
    is_homeless = "Currently Homeless"
  )

randomization <- as_tibble(randomization) |>
  set_variable_labels(
    who = "PatientID",
    treatment = "Treatment Prescribed",
    which = "Randomization Date (CTN-30)"
  )

rbs <- as_tibble(rbs) |>
  set_variable_labels(
    who = "PatientID",
    what = "Drug Used",
    did_use = "Self-Reported History of Use",
    days = "Number of Days Out of 30 that the Drug was Used"
  )

rbs_iv <- as_tibble(rbs_iv) |>
  set_variable_labels(
    who = "PatientID",
    days = "Maximum Number of Days of IV Drug Use Across All Injected Drug",
    max = "Number of Drug Use Events",
    amount = "Total IV Durg ",
    shared = "Shared Needles in Last 30 Days?",
    cocaine_inject_days = "Number of Days Out of Last 30 in Which Cocaine was Injected",
    heroin_inject_days = "Number of Days Out of Last 30 in Which Heroin was Injected",
    speedball_inject_days = "Number of Days Out of Last 30 in Which Speedball was Injected",
    opioid_inject_days = "Number of Days Out of Last 30 in Which Opiod was Injected",
    speed_inject_days = "Number of Days Out of Last 30 in Which Speed was Injected"
  )

screening_date <- as_tibble(screening_date) |>
  set_variable_labels(
    who = "PatientID",
    screening_day = "The Day of Screening",
    day_zero = "Best Guess at the End of TLFB"
  )

sex <- as_tibble(sex) |>
  set_variable_labels(
    who = "PatientID",
    txx_prt = "Total Sex Partners",
    txx_mprt = "Total Male Sex Partners",
    txx_fprt = "Total Female Sex Partners",
    msw_npt = "Men Who have Sex with Women, Sex Partners",
    msw_frq = "MSW Count of Sex",
    msw_pxx = "MSW Count of Protected Sex",
    msw_uxx = "MSW Count of Unprotected Sex",
    msm_npt = "Men Who have Sex with Men, Sex Partners",
    msm_frq = "MSM Count of Sex",
    msm_pxx = "MSM Count of Protected Sex",
    msm_uxx = "MSM Count of Unprotected Sex",
    wsm_npt = "Women Who have Sex with Men, Sex Partners",
    wsm_frq = "WSM Count of Sex",
    wsm_pxx = "WSM Count of Protected Sex",
    wsm_uxx = "WSM Count of Unprotected Sex",
    txx_frq = "Total Count of Sex",
    txx_pxx = "Total Count of Protected Sex",
    txx_uxx = "Total Count of Unprotected Sex",
    mvw_frq = "Men Vaginal Sex with Women Count",
    maw_frq = "Men Anal Sex with Women Count",
    mim_frq = "Men Insertive Sex with Men Count",
    mrm_frq = "Men Receptive Sex with Men Count",
    wvm_frq = "Women Vaginal Sex with Men Count",
    wam_frq = "Women Anal Sex with Men Count",
    mvw_pxx = "Men Vaginal Sex with Women Protected Count",
    maw_pxx = "Men Anal Sex with Women Protected Count",
    mim_pxx = "Men Insertive Sex with Men Protected Count",
    mrm_pxx = "Men Receptive Sex with Men Protected Count",
    wvm_pxx = "Women Vaginal Sex with Men Protected Count",
    wam_pxx = "Women Anal Sex with Men Protected Count",
    mvw_uxx = "Men Vaginal Sex with Women Unprotected Count",
    maw_uxx = "Men Anal Sex with Women Unprotected Count",
    mim_uxx = "Men Insertive Sex with Men Unprotected Count",
    mrm_uxx = "Men Receptive Sex with Men Unprotected Count",
    wvm_uxx = "Women Vaginal Sex with Men Unprotected Count",
    wam_uxx = "Women Anal Sex with Men Unprotected Count",
    t_p = "Total Count of Sex Partners",
    t_fp = "Total Count of Female Sex Partners",
    t_mp = "Total Count of Male Sex Partners"
  )

site_masked <- as_tibble(site_masked) |>
  set_variable_labels(
    who = "PatientID",
    site_masked = "Study Site Regrouped"
  )

# site_masked_original <- as_tibble(site_masked_original) |>
#   set_variable_labels(
#     who = "PatientID",
#     site_masked = "Study Site Regrouped"
#   )

tlfb <- as_tibble(tlfb) |>
  set_variable_labels(
    who = "PatientID",
    what = "Description of Drugs",
    when = "Study Day"
  )

treatment <- as_tibble(treatment) |>
  set_variable_labels(
    who = "PatientID",
    amount = "Amount of Drugs Recieved on a Day",
    when = "Study Day"
  )

uds <- as_tibble(uds) |>
  set_variable_labels(
    who = "PatientID",
    what = "Name of Drug Identified",
    when = "Study Day"
  )

uds_temp <- as_tibble(uds_temp) |>
  set_variable_labels(
    who = "PatientID",
    was_temp_ok = "Temperature was Normal",
    when = "Study Day"
  )

visit <- as_tibble(visit) |>
  set_variable_labels(
    who = "PatientID",
    visit = "Indicator of Vist Type",
    what = "Disposition of Appointment",
    is_dead = "Patient Died",
    is_no_show = "Patient Did Not Show With no Explanation",
    is_no_funding = "Patient Could Not Afford to Get to Appointment",
    is_left_study = "Patient Withdrew From the Study",
    is_in_jail = "Patient is Incarcerated",
    is_forgot = "Patient Forgot Appointment",
    is_in_hospital = "Patient Hospitalized During Appointment",
    is_illness = "Patient Reported Being too Sick to Attend", # Hey Ray, the documentation has the wrong "to/too" here.
    is_moved = "Patient Moved from the Study Area",
    is_missing_14_consecutive = "Patient Dropped for Non-compliance",
    is_unable = "Patient Reports Being Unable to Attend",
    is_on_vacation = "Patient Reports Being on Vacation",
    is_other = "Other Reason Given",
    when = "Study Day"
  )

withdrawal <- as_tibble(withdrawal) |>
  set_variable_labels(
    who = "PatientID",
    withdrawal = "Level of Withdrawal",
    when = "Study Day"
  )

withdrawal_pre_post <- as_tibble(withdrawal_pre_post) |>
  set_variable_labels(
    who = "PatientID",
    what = "Induction Day Type",
    withdrawal = "Level of Withdrawal",
    when = "Study Day"
  )

usethis::use_data(all_drugs, overwrite = TRUE)
usethis::use_data(asi, overwrite = TRUE)
usethis::use_data(demographics, overwrite = TRUE)
usethis::use_data(detox, overwrite = TRUE)
usethis::use_data(everybody, overwrite = TRUE)
usethis::use_data(fagerstrom, overwrite = TRUE)
usethis::use_data(first_survey, overwrite = TRUE)
usethis::use_data(meta_study_length, overwrite = TRUE)
usethis::use_data(meta_substance_groups_uds, overwrite = TRUE)
usethis::use_data(pain, overwrite = TRUE)
usethis::use_data(psychiatric, overwrite = TRUE)
usethis::use_data(qol, overwrite = TRUE)
usethis::use_data(randomization, overwrite = TRUE)
usethis::use_data(rbs, overwrite = TRUE)
usethis::use_data(rbs_iv, overwrite = TRUE)
usethis::use_data(screening_date, overwrite = TRUE)
usethis::use_data(sex, overwrite = TRUE)
usethis::use_data(site_masked, overwrite = TRUE)
usethis::use_data(tlfb, overwrite = TRUE)
usethis::use_data(treatment, overwrite = TRUE)
usethis::use_data(uds, overwrite = TRUE)
usethis::use_data(uds_temp, overwrite = TRUE)
usethis::use_data(visit, overwrite = TRUE)
usethis::use_data(withdrawal, overwrite = TRUE)
usethis::use_data(withdrawal_pre_post, overwrite = TRUE)


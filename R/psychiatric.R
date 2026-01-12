#' @title Psychiatric History
#'
#' @description Information on psychiatric symptoms and diagnoses. The same
#'   constructs were measured using different instruments. For example, the
#'   Addition Severity Index (ASI) asks "Have you had a significant period of
#'   time (that was not a direct result of drug/alcohol use) in which you have
#'   experienced hallucinations - saw things or heard voices that other people
#'   did not hear or see?" and the medical and psychiatric history evaluation
#'   asks about schizophrenia. The definitions of substance abuse have changed
#'   in the American Psychiatric Association's Diagnostic and Statistical Manual
#'   of Mental Disorders. Also see the
#'   [Harmonization Information](../doc/harmonization.html#psychiatric) vignette
#'   for more details.
#'
#' @details Note that the data from the ASI (depression, anxiety, and
#'   schizophrenia) contains four levels plus `NA`.  People who did not take the
#'   ASI are coded with NA.  People who took the ASI but are completely missing
#'   an answer to a question are coded as "Missing". Others who are known to not
#'   answer (i.e., refused to answer) are coded with "Not Answered".
#'
#' @docType data
#'
#' @usage data(psychiatric)
#'
#' @format A tibble with `r scales::comma(nrow(psychiatric))` rows and
#' `r ncol(psychiatric)` variables:
#'
#' \describe{
#'   \item{**who**}{
#'
#' | _Type:_        | integer       |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Patient ID |
#'
#'  }
#'   \item{**has_schizophrenia**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_schizophrenia)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Medical and psychiatric history interview indicates schizophrenia |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_schizophrenia)` |
#'
#'   }
#'   \item{**has_major_dep**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_major_dep)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Medical and psychiatric history interview indicates major depression |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_major_dep)` |
#'
#'   }
#'   \item{**has_bipolar**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_bipolar)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Medical and psychiatric history interview indicates bipolar disorder |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_bipolar)` |
#'
#'   }
#'   \item{**has_anx_pan**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_anx_pan)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Medical and psychiatric history interview indicates anxiety panic disorder |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_anx_pan)` |
#'
#'   }
#'   \item{**has_brain_damage**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_brain_damage)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Medical and psychiatric history interview indicates brain damage |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_brain_damage)` |
#'
#'   }
#'   \item{**has_epilepsy**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_epilepsy)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Medical and psychiatric history interview indicates epilepsy |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_epilepsy)` |
#'
#'   }
#'   \item{**depression**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$depression)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Addiction Severity Index-Lite Follow-up depression: P4 = "Experienced serious depression-sadness, hopelessness, loss of interest, difficulty with daily function?" See the Details section below |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$depression)` |
#'
#'   }
#'   \item{**anxiety**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$anxiety)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Addiction Severity Index-Lite Follow-up anxiety: P5 = "Experienced serious anxiety/tension, uptight, unreasonably worried, inability to feel relaxed?" See the Details section below |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$anxiety)` |
#'
#'   }
#'   \item{**schizophrenia**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$schizophrenia)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Addiction Severity Index-Lite Follow-up schizophrenia P6 = "Experienced hallucinations -- saw things or heard voices that other people did not hear or see?" See the Details section below |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$schizophrenia)` |
#'
#'   }
#'   \item{**has_opiates_dx**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_opiates_dx)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | DSM-4 opioid abuse or dependence diagnosis or DSM-5 "opioid use disorder" (OUD) diagnosis |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_opiates_dx)` |
#'
#'   }
#'   \item{**has_alcol_dx**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_alcol_dx)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | DSM-4 alcohol abuse or dependence diagnosis or DSM-5 "alcohol use disorder" (AUD) diagnosis |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_alcol_dx)` |
#'
#'   }
#'   \item{**has_amphetamines_dx**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_amphetamines_dx)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | DSM-4 amphetamine and similar sympathomimetics abuse or dependence diagnosis or DSM-5 amphetamine-type substance use disorder |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_amphetamines_dx)` |
#'
#'   }
#'   \item{**has_cannabis_dx**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_cannabis_dx)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | DSM-4 cannabis abuse or dependence diagnosis or DSM-5 cannabis use disorder |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_cannabis_dx)` |
#'
#'   }
#'   \item{**has_cocaine_dx**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_cocaine_dx)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | DSM-4 cocaine abuse or dependence diagnosis or DSM-5 cocaine use disorder |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_cocaine_dx)` |
#'
#'   }
#'   \item{**has_sedatives_dx**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(psychiatric$has_sedatives_dx)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | DSM-4 sedatives abuse or dependence diagnosis or DSM-5 sedative hypnotic/anxiolytic use disorder |
#' |                |               |
#' | _Levels:_      | `r levels(psychiatric$has_sedatives_dx)` |
#'
#'   }
#'  }
#' @source \doi{10.1001/jama.1994.03520100096046} DSM-IV: Diagnostic and Statistical Manual of Mental Disorders, JAMA. 1994;272(10):828-829.
#' @source \doi{10.1176/appi.books.9780890425596} Diagnostic and Statistical Manual of Mental Disorders (Fifth ed.). Arlington, VA: American Psychiatric Publishing. ISBN 978-0-89042-555-8.
"psychiatric"

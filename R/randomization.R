#' @title Randomization Data
#'
#' @description This is the information on the treatment group. Note that CTN30
#'   had two randomization events.
#'
#' @docType data
#'
#' @usage data(randomization)
#'
#' @format A tibble with `r scales::comma(nrow(randomization))` rows and
#' `r ncol(randomization)` variables:
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
#'   \item{**treatment**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(randomization$treatment)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | What treatment is prescribed? |
#' |                |               |
#' | _Levels:_      | `r levels(randomization$treatment)` |
#'
#'   }
#'   \item{**which**}{
#'
#' | _Type:_        | factor (First/Reference level = `r levels(randomization$which)[1]`)    |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Indicator of which randomization. Needed because CTN 30 has two randomization dates. |
#' |                |               |
#' | _Levels:_      | `r levels(randomization$which)` |
#'
#'   }
#'   \item{**when**}{
#'
#' | _Type:_        | integer       |
#' | -------------- | ------------- |
#' |                |               |
#' | _Description:_ | Study day of treatment entry |
#'
#'  }
#'  }
"randomization"

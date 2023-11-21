#' Metadata for all xkcd comics (thus far)
#'
#' @format A data frame with 2850 rows and 12 columns
#' \describe{
#'   \item{num}{Comic number (minimim 1, maximim 2850)}
#'   \item{year}{Year the comic was published}
#'   \item{month}{Month the compic was published}
#'   \item{day}{Day the comic was published}
#'   \item{link}{URl linking to relevant context, source information, or a large version of the comic}
#'   \item{news}{Seemingly random information about the comic, like a backstory, contributors, merchandise links. May contain raw HTML}
#'   \item{title}{Title of the comic}
#'   \item{safe_title}{We still don't know what this is safe for. Embedding maybe?}
#'   \item{transcript}{Transcription of the text in the comic}
#'   \item{alt}{Alt text for the image in web browser}
#'   \item{img}{URL for the comic image itself}
#' }
#' @source <https://xkcd.com/json.html>
"xkcd_data"

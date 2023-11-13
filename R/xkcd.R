xkcd <- function(number) {

  url <- file.path("https://xkcd.com", number, "info.0.json")
  x <- jsonlite::read_json(url)
  x <- new_xkcd(x)
  x <- validate_xkcd(x)
  x
}


new_xkcd <- function(x) {

  stopifnot(is.list(x))

  structure(x,
            class = "xkcd"
            )
}

validate_xkcd <- function(x) {

  required_fields <- c("month", "num", "link", "year", "news", "safe_title",
                       "transcript", "alt", "img", "title", "day"
                       )

  if(!all(required_fields %in% names(x))) {
    difference <- setdiff(required_fields, names(x))
    stop ("xkcd object is missing the required fields: ",
          paste(difference, collapse = ", ")
          )
  }

  character_fields <- c("month", "link", "year", "news", "safe_title",
                       "transcript", "alt", "img", "title", "day")

  for (f in character_fields) {
    if (!(is.character(x[[f]]) && length(x[[f]]) == 1)) {
      stop("The ", f, "field in an xkcd object must be an character vector of length 1")
    }
  }

  if (!(is.numeric(x[["num"]]) && length(x[["num"]]) == 1)) {
    stop("The num field in an xkcd object must be a numeric vector of length 1")
  }

  return(x)
}


#' @exportS3Method
plot.xkcd <- function(x) {

  img_type <- tools::file_ext(x$img)

  tmp <- tempfile(pattern = "file",
                  tmpdir = tempdir()
                  )

  utils::download.file(x$img, destfile = tmp)

  if (img_type == "png") {
    p <- png::readPNG(tmp)
  } else if (img_type == "jpg" || img_type == "jpeg") {
    p <- jpeg::readJPEG(tmp)
  } else {
    stop("Unknown image format", img_type)
  }

  plot.new()
  grid::grid.raster(p)
}



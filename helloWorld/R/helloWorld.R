#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
helloWorld <- function(message, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    message = "hi!"
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'helloWorld',
    x,
    width = width,
    height = height,
    package = 'helloWorld',
    elementId = elementId
  )
}

#' Shiny bindings for helloWorld
#'
#' Output and render functions for using helloWorld within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @import htmlwidgets
#'
#' @param text A character string to be displayed in the widget
#' @param width An integer, default null
#' @param height An  integer, default null
#'
#' @export
helloWorld <- function(text, width=NULL, height=NULL)
{
   x <- list(message=text)
   htmlwidgets::createWidget("helloWorld", x, width=width, height=height)

} # helloWorld

#' @param expr An expression that generates a helloWorld
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name helloWorld-shiny
#'
#' @export
helloWorldOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'helloWorld', width, height, package = 'helloWorld')
}

#' @rdname helloWorld-shiny
#' @export
renderHelloWorld <- function(expr, env = parent.frame(), quoted = FALSE) {
   if(!quoted){
      expr <- substitute(expr)
      } # force quoted
  htmlwidgets::shinyRenderWidget(expr, helloWorldOutput, env, quoted = TRUE)
}

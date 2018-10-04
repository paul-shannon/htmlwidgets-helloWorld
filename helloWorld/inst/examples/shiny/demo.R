library(shiny)
library(helloWorld)
ui = shinyUI(fluidPage(
   titlePanel("Hello World demo"),
   sidebarLayout(
      sidebarPanel(
         actionButton("changeTextButton", "Change Text")
      ),
      mainPanel(
         helloWorldOutput(outputId="helloWorld")
      )
   )
))


server <- function(input, output) {
   observeEvent(input$changeTextButton, {
                   printf("button clicked")
                   })
   output$helloWorld <- renderHelloWorld({
      helloWorld("ABC")
      })
}

app <- shinyApp(ui = ui, server = server)


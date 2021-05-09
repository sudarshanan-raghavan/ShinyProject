library(shiny)

shinyServer(function(input, output) {
    outdat <- reactive({rnorm(input$n, input$mn, sqrt(input$vr))})
    gausx <- reactive({seq(floor(min(outdat())), ceiling(max(outdat())), length = input$n)})
    gausy <- reactive({dnorm(gausx(), mean = input$mn, sd = sqrt(input$vr))})
    output$plt <- renderPlot({
        hist(outdat(),
             freq = FALSE,
             xlim = c(-30, 30),
             ylim = c(0, 1),
             xlab = "Value of Data",
             ylab = "Probability",
             col = "linen",
             main = NULL)
        lines(gausx(), gausy(), col = "navyblue", lty = 2, lwd = 2)
    })
})

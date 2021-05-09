library(shiny)

shinyUI(fluidPage(
    titlePanel("Generate your own Gaussian Distributions!"),
    sidebarLayout(
        sidebarPanel(
            h3("Choose how many points to generate"),
            sliderInput("n", "Size of Data", 1, 10000, 10000),
            h3("Please choose a mean for your data set"),
            sliderInput("mn", "Mean of Data", -10, 10, 0),
            h3("Please choose a variance for your data set"),
            sliderInput("vr", "Variance of Data", 0, 10, 1),
            submitButton("Submit")
        ),
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Documentation",
                                 br(),
                                 h3("This application lets you play around with
                                    the Gaussian Distribution."),
                                 h3("You can choose
                                    the number of Gaussian data points, the
                                    mean of the data and the variance of the
                                    data using the sliders."),
                                 h3("The application will then plot the
                                    corresponding probability distribution, 
                                    which you can view in the 'Distribution 
                                    Plot' tab."),
                                 h3("Don't forget to click on the 'Submit'
                                    button!"),
                                 br(),
                                 h4("The range of the size of the data can be
                                    between 1 and 10000."),
                                 h4("The mean of the data can be between -10
                                    and 10."),
                                 h4("The variance of the data can be between 0
                                    and 10.")),
                        tabPanel("Distribution Plot",
                                 br(),
                                 titlePanel("Density Plot of Normal Distribution"),
                                 plotOutput("plt"))
        )
    )
)))
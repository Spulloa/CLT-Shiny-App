library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("Central Limit Theorem"),

    # Sidebar with a slider input, numeric input, checkbox, and action button
        sidebarPanel(
            sliderInput(inputId = "n",
                        "Sample Size (n)",
                        min = 1,
                        max = 100,
                        step = 1,
                        value = 10),
            numericInput(inputId = "m", "Sample Mean (X):", 10),
            numericInput(inputId = "sd", "Sample Standard Deviation:", 2),
            checkboxInput(inputId = "ml", "Show Mean Line", value = FALSE),
            actionButton("graph", "Graph Distribution")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
))

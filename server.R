library(shiny)

shinyServer(function(input, output) {
    rv <- reactiveValues(mean = NULL)
    observeEvent(input$graph, {
      x.means <- matrix(rnorm(input$n*1000, input$m, input$sd), 1000)
      rv$mean <- as.numeric(x.means[1,])
    })
    
    output$distPlot <- renderPlot({
      
      if(input$graph){
       hist(rv$mean, main="Central Limit Theorem: Normal Distribution", col="steelblue")
        if(input$ml){
          abline(v=input$m, lty ="dashed")
        }
      }
    })
})

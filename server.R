library(shiny)

shinyServer(
  function(input, output) {
          output$newHist <- renderPlot({
                  set.seed(3344)
                  par(fig=c(0,1,0,1))
                  n <- input$n
                  p <- input$p
                  x <- dbinom(0:n, n, p)
                  names(x) <- as.character(0:n)
                  barplot(x,space=0, main="Histogram fo Successes", xlab="Number of Successes")
                  lines(x, col = 'blue', lwd = 3)
                  par(fig=c(0,1,0,1), new=TRUE)
                  plot(-700:700/100, dnorm(-700:700/100,0,1), col = 'red', lwd = 3, type="l",
                       axes=FALSE, xlab="", ylab="", ylim=c(0,.39))
                  legend("topright", c("Binomial","Normal"),lwd=3, lty=c(1, 1), col=c("blue", "red"))
          })
          output$text1 <- renderText({
                  paste("Number of independent trials - ",input$n)})
          output$text2 <- renderText({
                  paste("Individual Success Probability - ",input$p)})
          output$text3 <- renderText({
                  paste("n * p - ",(input$n * input$p))})
          output$text4 <- renderText({
                  paste("n * (1 - p) - ",(input$n * (1 - input$p)))})
  }
)

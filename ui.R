library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Binomial Distribution"),
    sidebarPanel(
            sliderInput('n', 'Number of independent trials', 10, min = 2, max = 100, step = 1),
            sliderInput('p', 'Individual Success Probability',value = .5, min = 0, max = 1, step = 0.05,)
    ),
    mainPanel(
            h4('Documentation'),
            p(em("Documentation:",a("Binomial Distribution",href="index.html"))),
            br(),
            br(),
            plotOutput('newHist'),
            h4('Data'),
            textOutput("text1"),
            textOutput("text2"),
            textOutput("text3"),
            textOutput("text4"),
            textOutput("text5")
            )
  )
)


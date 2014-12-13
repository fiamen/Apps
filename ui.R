library(shiny)
shinyUI(fluidPage(
        titlePanel("Lotto Number Generator"),
        
        
        sidebarLayout(
                sidebarPanel(
                        h3("Australian Lotto"),
                        selectInput("game", 
                                    label = "Choose a game bellow from the Australian Lotto",
                                    choices = list("Gold Lotto", "Powerball"),
                                    selected = "Gold Lotto"),
                        
                        
                        numericInput("num", 
                                     label = ("Enter the number of games to play"), 
                                     value = 6),
                        br(),
                        br(),
                        
                        
                        br(),
                        p("The Gold Lotto and the PowerBall games are part of the Golden Casket Australian Lotto"), 
                        p(" The Powerball have six winning number selected from the range from 1 to 40 plus the one number, the power ball that is selected from the range 1 to 20"),
                        p("The Gold Lotto has 6 winning number selected from the range of 1 to 45"),
                        p("It sometimes difficult to people to came up with a random selection of numbers to play these games"),
                       p("Therefore we created a random number generated app to select possible winning numbers")
                        ),
                mainPanel(
                        
                        dataTableOutput('results')
                )
        )
))
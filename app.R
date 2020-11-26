library(shiny)
ui <- navbarPage(
  strong("Das Lichtmikroskop"),
  
  tabPanel(
    strong("Lichtmikroskop"),
    titlePanel(h4("Lichtmikroskop")),
    
    br(),
    fluidRow(column(4,
                    mainPanel(
                      img(
                        src = "MikroskopAnsicht2.jpg",
                        height = 702,
                        width = 526
                        
                        
                      )
                    )),
             
             column(4,
                    mainPanel(
                      img(
                        src = "MikroskopAnsicht1.jpg",
                        height = 702,
                        width = 526
                        
                        
                      )
                    ))),
    
    list(tags$head(
      tags$style("body {background-color: #BEBEBE; }")
    ))
  ),
  
  
  ##
  
  tabPanel(
    strong("Versuch"),
    titlePanel(h4(
      "Vermessung der Strukturen auf einem PrÃ¤parat"
    )),
    
    br(),
    sidebarPanel(
      radioButtons(
        "typeob",
        "Objektiv:",
        c("Objektiv 10/0,22",
          "Objektiv 40/0,65",
          "Objektiv 100/1,25")
      ),
      
      # #
      conditionalPanel(condition = "input.typeob == 'Objektiv 100/1,25'",
                       selectInput("breaks", "",
                                   c("Mit Ãl",
                                     "Ohne Ãl"))),
      
      radioButtons(
        inputId = "val",
        "PrÃ¤parat",
        choices = c("kein",
                    "Objektmikrometerskala",
                    "Schweinelunge")
      )
      
      
    ),
    #
    conditionalPanel(
      "input.typeob=='Objektiv 10/0,22'",
      mainPanel(conditionalPanel("input.val=='kein'",
                                 
                                 ((
                                   img(
                                     src = "MObj10keinPrÃ¤p.jpg",
                                     height = 665,
                                     width = 499
                                   )
                                 ))))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 10/0,22'",
      mainPanel(conditionalPanel(
        "input.val=='Objektmikrometerskala'",
        
        ((
          img(
            src = "MObj10Mikro.jpg",
            height = 665,
            width = 499
          )
        ))
      ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 10/0,22'",
      mainPanel(conditionalPanel("input.val=='Schweinelunge'",
                                 
                                 ((
                                   img(
                                     src = "MObj10PrÃ¤p.jpg",
                                     height = 665,
                                     width = 499
                                   )
                                 ))))
    ),
    #
    conditionalPanel(
      "input.typeob=='Objektiv 40/0,65'",
      mainPanel(conditionalPanel("input.val=='kein'",
                                 
                                 ((
                                   img(
                                     src = "MObj40keinPrÃ¤p.jpg",
                                     height = 665,
                                     width = 499
                                   )
                                 ))))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 40/0,65'",
      mainPanel(conditionalPanel(
        "input.val=='Objektmikrometerskala'",
        
        ((
          img(
            src = "MObj40Mikro.jpg",
            height = 665,
            width = 499
          )
        ))
      ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 40/0,65'",
      mainPanel(conditionalPanel("input.val=='Schweinelunge'",
                                 
                                 ((
                                   img(
                                     src = "MObj40PrÃ¤p.jpg",
                                     height = 665,
                                     width = 499
                                   )
                                 ))))
    ),
    #
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Mit Ãl'",
                       mainPanel(
                         conditionalPanel("input.val=='kein'",
                                          
                                          ((
                                            img(
                                              src = "MObj100keinPrÃ¤pmitÃl.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Mit Ãl'",
                       mainPanel(
                         conditionalPanel("input.val=='Objektmikrometerskala'",
                                          
                                          ((
                                            img(
                                              src = "MObj100MikromitÃl.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Mit Ãl'",
                       mainPanel(
                         conditionalPanel("input.val=='Schweinelunge'",
                                          
                                          ((
                                            img(
                                              src = "MObj100PrÃ¤pmitÃl.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    #
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Ohne Ãl'",
                       mainPanel(
                         conditionalPanel("input.val=='kein'",
                                          
                                          ((
                                            img(
                                              src = "MObj100keinPrÃ¤pohneÃl.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Ohne Ãl'",
                       mainPanel(
                         conditionalPanel("input.val=='Objektmikrometerskala'",
                                          
                                          ((
                                            img(
                                              src = "MObj100MikroohneÃl.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Ohne Ãl'",
                       mainPanel(
                         conditionalPanel("input.val=='Schweinelunge'",
                                          
                                          ((
                                            img(
                                              src = "MObj100PrÃ¤pohneÃl.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    )
    
    
  )
)

server <- function(input, output) {
  
}

shinyApp(ui = ui, server = server)

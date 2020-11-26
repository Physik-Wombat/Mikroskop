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
      "Vermessung der Strukturen auf einem Praeparat"
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
                                   c("Ohne Oel",
                                     "Mit Oel"))),
      
      radioButtons(
        inputId = "val",
        "Praeparat",
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
                                     src = "MObj10keinPraep.jpg",
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
                                     src = "MObj10Praep.jpg",
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
                                     src = "MObj40keinPraep.jpg",
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
                                     src = "MObj40Praep.jpg",
                                     height = 665,
                                     width = 499
                                   )
                                 ))))
    ),
    #
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Mit Oel'",
                       mainPanel(
                         conditionalPanel("input.val=='kein'",
                                          
                                          ((
                                            img(
                                              src = "MObj100keinPraepmitOel.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Mit Oel'",
                       mainPanel(
                         conditionalPanel("input.val=='Objektmikrometerskala'",
                                          
                                          ((
                                            img(
                                              src = "MObj100MikromitOel.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Mit Oel'",
                       mainPanel(
                         conditionalPanel("input.val=='Schweinelunge'",
                                          
                                          ((
                                            img(
                                              src = "MObj100PraepmitOel.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    #
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Ohne Oel'",
                       mainPanel(
                         conditionalPanel("input.val=='kein'",
                                          
                                          ((
                                            img(
                                              src = "MObj100keinPraepohneOel.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Ohne Oel'",
                       mainPanel(
                         conditionalPanel("input.val=='Objektmikrometerskala'",
                                          
                                          ((
                                            img(
                                              src = "MObj100MikroohneOel.jpg",
                                              height = 665,
                                              width = 499
                                            )
                                          )))
                       ))
    ),
    
    conditionalPanel(
      "input.typeob=='Objektiv 100/1,25'",
      conditionalPanel("input.breaks=='Ohne Oel'",
                       mainPanel(
                         conditionalPanel("input.val=='Schweinelunge'",
                                          
                                          ((
                                            img(
                                              src = "MObj100PraepohneOel.jpg",
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

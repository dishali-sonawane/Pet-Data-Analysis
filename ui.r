library(shiny)
library(shinyWidgets)
library(ggplot2)
shinyUI(fluidPage(
  setBackgroundImage(src = "https://thoughtcatalog.files.wordpress.com/2016/01/cesar-cardoso-574867-unsplash.jpg?w=1920&h=1280&crop=1&resize=1920,1280&quality=95&strip=all"),
  titlePanel("PET ADOPTION ANALYSIS . "),
  sidebarLayout(
    
    sidebarPanel(
      
      checkboxGroupInput(inputId = "checkbox",
                         label = "Select your pet Type ",
                         selected ="Dogs",
                         choices = list("Dogs" = "Dogs",
                                        "Cats" = "Cats")),
      
      selectInput("dropdown","Check the health of the Pet",choices = list( "Healthy"="Healthy",
                                                                           "Minor Injury"="Minor Injury",
                                                                           "Serious Injury"="Serious Injury")),
      sliderInput("slider","Age of the pet  !  ",min=0,max=255,value=10,step=5),
      #actionButton("actbtn", "Status"),
      
      
      radioButtons("radio","MEDICAL CHECK !!  ",list("Vaccination","Deworming","Sterilization"),selected = "Vaccination")),
    
    #actionButton("actbtn","Status of Adoption")),
    
    mainPanel(
      navbarPage(title = "Graphical Representations",
                 tabPanel(" "),
                 tabPanel("Medical Condition",plotOutput("graph2")),
                 tabPanel("Age vs apt Speed",plotOutput("graph3")),
                 tabPanel("Health",plotOutput("graph4")),
                 tabPanel("Status of Adoption", plotOutput("graph1"))
                 
      )
    ))
))


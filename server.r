library(shinyWidgets)
library(shiny)

shinyServer(function(input,output){
  library(ggplot2)
  dst<- read.csv("C:\\Users\\Dishali Sonawane\\Desktop\\week 6\\Final_Project_data(1).csv")
  #############
  
  output$graph3 <- renderPlot ({ 
    
    ggplot(dst,aes(x=dst$AdoptionSpeed ,y = dst$Age))+geom_point()
    
  })
  
  
  
  output$graph4 <- renderPlot({
    p4<-ggplot(data=dst)+geom_bar(aes(x=as.factor(AdoptionSpeed),fill=as.factor(Health)))+theme(panel.border = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
    P4<-p2+labs(x="Adoption Speed" ,y="Count of Animals",title = " Adoption speed depending on Health")+scale_fill_discrete(name = " Health", labels = c("Healthy", "Minor Injury","Serious Injury" ))+theme(
      # Change legend background color
      legend.background = element_rect(fill = "darkgray"),
      legend.key = element_rect(fill = "lightblue", color = NA),
      # Change legend key size and key width
      legend.key.size = unit(1.5, "cm"),
      legend.key.width = unit(0.5,"cm") 
    )
    P4
    

  })
  
  
  output$graph1 <- renderPlot ({
    
    p1<-ggplot(data=dst,aes(x=as.factor(Adopted),fill=as.factor(Type)))+geom_bar(stat = "count",position = position_dodge())
    P1<-p1+labs(legend=c("0=NA","1=A"),x="Adoption Status" ,y="Count of animals ",title = " Adoption Speed VS Type of Animal")+scale_fill_discrete(name = "Type of animal", labels = c("Cats", "Dogs" ))+theme(
      # Change legend background color
      legend.background = element_rect(fill = "darkgray"),
      legend.key = element_rect(fill = "lightblue", color = NA),
      # Change legend key size and key width
      legend.key.size = unit(1.5, "cm"),
      legend.key.width = unit(0.5,"cm") 
    )
    P1
    
  })
  #################
  
  
  
  output$graph2 <- renderPlot({
    
    
    
    selected_medi_cond <- input$radio
    if(selected_medi_cond == "Vaccination"){
    
    # adaption speed vs Vaccinated 
    p2<-ggplot(data=dst)+geom_bar(aes(x=as.factor(AdoptionSpeed),fill=as.factor(Vaccinated)))+theme(panel.border = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
    P2<-p2+labs(x="Adoption Speed" ,y="Count of Animals",title = " Adoption speed depending on medical check")+scale_fill_discrete(name = " Vaccination", labels = c("Yes", "No","Not Sure" ))+theme(
      # Change legend background color
      legend.background = element_rect(fill = "darkgray"),
      legend.key = element_rect(fill = "lightblue", color = NA),
      # Change legend key size and key width
      legend.key.size = unit(1.5, "cm"),
      legend.key.width = unit(0.5,"cm") 
    )
  P2
    }
  
  
 else if(selected_medi_cond == "Deworming"){
    # adaption speed vs dewormed 
    
    p3<- ggplot(data=dst)+geom_bar(aes(x=as.factor(AdoptionSpeed),fill=as.factor(Dewormed)))+theme(panel.border = element_blank(),panel.grid.major = element_blank(),panel.grid.minor = element_blank())
    P3<-p3+labs(x="Adoption Speed" ,y="Count of animals ",title = " Adoption speed depending on medical check")+scale_fill_discrete(name = "Dewormed", labels = c("Yes", "No","Not Sure" ))+theme(
      # Change legend background color
      legend.background = element_rect(fill = "darkgray"),
      legend.key = element_rect(fill = "lightblue", color = NA),
      # Change legend key size and key width
      legend.key.size = unit(1.5, "cm"),
      legend.key.width = unit(0.5,"cm") 
    )
    P3
 }

  

 else if(selected_medi_cond == "Sterilization"){
    
    p4<-ggplot(data=dst)+geom_bar(aes(x=as.factor(AdoptionSpeed),fill=as.factor(dst$Sterilized)))
    P4<-p4+labs(x="Adoption Speed" ,y="Count of animals ",title = " Adoption speed depending on medical check")+ scale_fill_discrete(name = "Sterilized", labels = c("Yes", "No","Not Sure" ))+theme(
      # Change legend background color
      legend.background = element_rect(fill = "darkgray"),
      legend.key = element_rect(fill = "lightblue", color = NA),
      # Change legend key size and key width
      legend.key.size = unit(1.5, "cm"),
      legend.key.width = unit(0.5,"cm") 
    )
    P4   
    
 }
  }
  )})
  
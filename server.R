#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)

HeartRate<-function(beats,secs){(beats)/(secs/60.)}

percent_f<-function(age,beats,secs){
  Rate_val <- (beats)/(secs/60.) 

  if (age < 22.5){
    ifelse(Rate_val<110,"Light",ifelse((Rate_val >=110) & (Rate_val < 130),"Fat burning",ifelse(Rate_val>=130,"Cardio")))  
  } else if ((age >= 22.5) & (age < 27.5)){
    ifelse(Rate_val<107,"Light",ifelse((Rate_val >=107) & (Rate_val < 126),"Fat burning",ifelse(Rate_val>=126,"Cardio")))  
  } else if ((age >= 27.5) & (age < 32.5)){
    ifelse(Rate_val<104,"Light",ifelse((Rate_val >=104) & (Rate_val < 123),"Fat burning",ifelse(Rate_val>=123,"Cardio")))  
  } else if ((age >= 32.5) & (age < 37.5)){
    ifelse(Rate_val<101,"Light",ifelse((Rate_val >=101) & (Rate_val < 120),"Fat burning",ifelse(Rate_val>=120,"Cardio")))  
  } else if ((age >= 37.5) & (age < 42.5)){
    ifelse(Rate_val<99,"Light",ifelse((Rate_val >=99) & (Rate_val < 117),"Fat burning",ifelse(Rate_val>=117,"Cardio")))  
  } else if ((age >= 42.5) & (age < 47.5)){
    ifelse(Rate_val<96,"Light",ifelse((Rate_val >=96) & (Rate_val < 113),"Fat burning",ifelse(Rate_val>=113,"Cardio")))  
  } else if ((age >= 47.5) & (age < 52.5)){
    ifelse(Rate_val<93,"Light",ifelse((Rate_val >=93) & (Rate_val < 110),"Fat burning",ifelse(Rate_val>=110,"Cardio")))  
  } else if ((age >= 52.5) & (age < 57.5)){
    ifelse(Rate_val<91,"Light",ifelse((Rate_val >=91) & (Rate_val < 107),"Fat burning",ifelse(Rate_val>=107,"Cardio")))  
  } else if (age >= 57.5){
    ifelse(Rate_val<88,"Light",ifelse((Rate_val >=88) & (Rate_val < 104),"Fat burning",ifelse(Rate_val>=104,"Cardio")))  
  }
}

# Define server logic 
shinyServer(
  function(input,output) {
    output$yourage <- renderPrint({input$age})
    output$hrate <- renderPrint({HeartRate(input$beats,input$secs)})
    output$actlevel <- renderPrint({percent_f(input$age,input$beats,input$secs)})
  } 
)

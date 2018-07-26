#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Activity calculator"),
    
    sidebarPanel(
      numericInput('age', 'Enter your age in years', 35) ,
      numericInput('beats', 'Enter the number of heart beats',60, min = 10, max = 120000, step = 1),
      numericInput('secs', 'Enter the time in seconds', 60, min = 5, max = 600, step = 1),
      submitButton('Calculate activity level')
    ), 
    mainPanel(
      p('Physical exercise is a great way to improve your chances of living a long and healthy life. '),
      p('Your heart rate during exercise determines whether or not you are doing a light or intense workout.'),
      p('This application takes your age and heart rate in order to determine your level of activity based on a lookup table.'),
      
      h4('Calculating your activity level based on the values you have provided:'), 
      p('Age in years:'), verbatimTextOutput("yourage"),
      p('Heart rate in beats per minute:'),verbatimTextOutput("hrate"),
      p('Your activity level is:'),verbatimTextOutput("actlevel")
    )
    
  )   
)
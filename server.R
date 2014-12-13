library(shiny)


shinyServer(function(input, output) {
        
        
        
        output$results<-renderDataTable({ 
                
                
                
                
                if(input$game=="Gold Lotto"&input$num>0 & !is.na(input$num))
                
        
                table<-data.frame(replicate(as.integer(input$num),sort(sample(1:45,6))))
                
        
        else if(input$game=="Powerball"&input$num>0 & !is.na(input$num)){(
                table<-data.frame(replicate(as.integer(input$num),c(sort(sample(1:40,6)),"-",
                sample(1:20,1)))))}
        
        if(!is.na(input$num)) names(table)<-c(1:as.integer(input$num))
        
        table
             
                                           
        })
})
              
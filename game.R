init<-function()
   {
         name<-c("ACE   ","TWO   ","THREE ","FOUR  ","FIVE  ","SIX   ","SEVEN ","EIGHT ","NINE  ","TEN   ","JACK  ","QUEEN ","KING  ")
         name<-c(name,name,name,name)
         suit<-c()
         for ( i in 1:52)
            {
             if (i<13)
              suit<-c(suit,"spade   ")
             else if (i<27)
               suit<-c(suit,"club    ")
              else if (i<40)
                suit<-c(suit,"diamond ")
              else
                suit<-c(suit,"heart   ")
                   }
         rank<-c(11,2,3,4,5,6,7,8,9,10,10,10,10)
         rank<-c(rank,rank,rank,rank)

         dim(suit)<-c(52,1)
         dim(name)<-c(52,1)
         dim(rank)<-c(52,1)

         PlayingCards<-cbind(name,rank,suit)

         PlayingCards
       }
PlayingCards<-init()

shuffle <- function()
            {
          for ( i in 1:50)
              {
               #print(i)
               j<-sample(1:52,1)
               #print(j)
               temp<-PlayingCards[i,]
               PlayingCards[i,]<-PlayingCards[j,]
               PlayingCards[j,]<-temp
             
                }
               PlayingCards
              }

PlayingCards<-shuffle()

DEAL<-function(PlayingCards,score_count)
       {
       PlayingCards[score_count[1,2],]

       }
TopCard<-DEAL(PlayingCards,score_count)


count<-0
score<-0
score_count<-cbind(score,count)


pickCard<-function(PlayingCards,score_count)
            { 
              score_count[1,2]<-score_count[1,2]+1
              TopCard<-DEAL(PlayingCards,score_count)
              dim(TopCard)<-c(1,3)

              score_count[1,1]<-score_count[1,1]+as.integer(TopCard[1,2])
      
              if(TopCard[1,1]=="ACE   ")
                 { if(score_count[1,1]>21)
                      {score_count[1,1]=score_count[1,1]-10}
                   }

             print( paste(TopCard[1,1]," of ",TopCard[1,3],"   ",score_count[1,1]))
              score_count
      
            }

score_count<-pickCard(PlayingCards,score_count)

enterChoice<-function()
         { 
            repeat
                     {  
                        choice<-readline(prompt=" HIT or STAY ? ")
                       if(choice=="STAY" | choice =="stay"|choice=="HIT"|choice=="hit")
                         break
                       else 
                         print("unrecognized input!!!")
  
                      }
          choice
         }
#choice<-enterChoice()

yn<-function()
         { 
         repeat
                     {  
                        ynchoice<-readline(prompt=" wanna play again ? Y/N  ")
                       if(ynchoice=="Y" | ynchoice =="y"|ynchoice=="n"|ynchoice=="N")
                         break
                       else 
                         print("unrecognized input!!!")
  
                      }
         ynchoice
         }
#ynchoice<-yn()

result<-function(scoreboard)
        {
         print(paste("YOUR SCORE IS ",scoreboard[1,1]))         
         print(paste("COMPUTER'S SCORE IS ",scoreboard[1,2]))

          if(scoreboard[1,2]==21)
             print("YOU LOOSE!!!")
          else if(scoreboard[1,2]<scoreboard[1,1])
             print("YOU WIN!!!")
          else if(21<scoreboard[1,2])
             print("YOU WIN!!!")
          else print("YOU LOOSE!!!")

           }


yourTurn<-function()
      { 
         PlayingCards<-init()
         #print(PlayingCards[1:10,])
         count<-0
         score<-0
         score_count<-cbind(score,count)
         print("Shuffling Cards....")
         PlayingCards<-shuffle()
         #print(PlayingCards[1:10,])
         print("YOUR TURN")
         score_count<-pickCard(PlayingCards,score_count)
         score_count<-pickCard(PlayingCards,score_count)
     
         repeat
              {
                  probability(PlayingCards,score_count)    
                  choice<-enterChoice()
                  
                 if(choice=="STAY"|choice=="stay")  
                      break              
                  score_count<-pickCard(PlayingCards,score_count)
                if(score_count[1,1]>=21)
                      break
                
              }
  score_count[1,1]            
      }
#yourTurn()
complimit<-17
compTurn<-function()
     { 
       
       compCards<-init()
       compCards<-shuffle()
       count<-0
       score<-0
       score_count<-cbind(score,count)
       repeat
         {
           score_count<-pickCard(compCards,score_count)
           if(score_count[1,1]>21)
             print("you win !!")
           if(score_count[1,1]>=complimit)
              break
          
          }
       score_count[1,1]
       }
#compTurn()

probability<-function(PlayingCards,score_count)
         { 
           req<-21-(score_count[1,1])
           print( paste("Prbability of getting a card less than or equal to ",req))
           cardsLeft<-table(PlayingCards[(score_count[1,2]+1):52,2])
           print(cardsLeft)
           
           if(req >= 11)
             print("100%")
           else if(req==0)
             print("0%")
           else
          {
           sumcards<-sum(cardsLeft)
           print(sumcards) 
           reqcards<-cardsLeft[2:(req+1)]
           print(reqcards)
           
           probwin<-reqcards/sumcards
           if(req>=10)
            {probwin<-probwin+cardsLeft[1]}
           print(sum(probwin))
          }
         }



main<-function()
       { 
         repeat
         {  
         scoreboard<-c(0,0)
         dim(scoreboard)<-c(1,2) 
         scoreboard[1,1]<-yourTurn()
         print(paste("your score is ",scoreboard[1,1]))
        
       if(scoreboard[1,1]<21)
           { 
             print(" Computer's TURN   ")
             scoreboard[1,2]<-compTurn()
             result(scoreboard)
            }
         else if(scoreboard[1,1]==21) 
              print(" you WIN !!!")
         else print("you LOOSE!!!") 
         
        ynchoice<-yn()
           if(ynchoice=="n" | ynchoice =="N")
              break

         }

        }





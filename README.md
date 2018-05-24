# R-codes
************************************************************************************
			Assignment On R
			Submitted By 
					(1) Vidul Kumar 42
					(2) Vikas Goswami 43
					(3) Kachuipam Rungsung 17
************************************************************************************

****************************How to Use***********************************************
Start:- 
		Open Q1.R file.
		Select all and run.
		Type main() and hit enter on the console.
		Choose either hit or stay.
		To hit type hit and to stay type stay and.
		If you want to play again enter "y" and if you want to quit enter "n".

Global Variables:
	1.score_count: A dataframe of dimensions 1x2 containing the score corresponding to the given card in first column "score" and one counter variable(pointer) for specifying the current location of the top of card in second column "count".
Functions:- 
		init():-
			Input Parameters:-None
			Return Type:-DATA frame of dimension 52*3 i.e "PlayingCards"
			columns:    card name
						rank
						suit

		shuffle():- 
			input parameters: None
			shuffles and return the deck(Dataframe) of 52 shuffled cards  

		deal():-
			input parameters: 
				1. "PlayingCards"  i.e. Deck of cards
				2. "score_count" i.e that is a matrix 1x2 which saves the dcore and pointer of the Deck
			
			return type: It returns the top card of the deck.

		pickcard():- 
				input parameters: 
					1. PlayingCards
					2. score_count
				objective: It computes score correspoding the card and records the number of cards drawn from the deck.
							It also moves the counter to the next top card.

				Return value: Updated score_count

		probability(): 
				input parameters: 
						1. PlayingCards
						2.score_count
				objective: It calculates and print the probability of winning.

				return value: None


		
		yourTurn():
			input parameters: none
			objective: lets user play and saves the score in score_count 
				    calls the probability function to calculate the probability of winning
					
		compTurn():
			input Parameters: none
			objective: it lets computer play the game after user has input "stay"
			
		ynchoice(): 
			input parameters: none
			objective: it asks user to play the next game after current game is over.
                enterchoice():
                        objective: reptetedly ask user to hit or stay
                main():
                        objective: makes whole routine to play game

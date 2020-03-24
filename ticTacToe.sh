#!/bin/bash -x 
#Tic Tac Toe Game:-
#As a Tic Tac Toe Player would like to challenge computer
echo "===================================================================="
echo "==============: WELCOME TO THE TIC-TAC-TOE GAME :=================="
echo "===================================================================="

#Function For The Print The GameBoard
function printBoard() 
{
	for (( row=0; row<3; row++ ))
	 do
		echo "========================"
		echo "========================"

		for (( column=0; column<3; column++))
		 do
			printf "||    ||"
		 done
		printf "\n"
	 done
		echo "========================="
		echo "========================="

}
printBoard


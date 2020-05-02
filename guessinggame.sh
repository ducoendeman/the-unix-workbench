function game()
{
	correct=$(find -maxdepth 1 -type f | wc -l)
	answer=0
	until [ $answer = $correct ]
	do
		echo -n "Guess how many files are in the current directory or press 'q' to quit: "
		read answer
		if [ $answer = "q" ]
		then 
			echo "The correct answer was $correct. Quitting."
			break
		elif ! [[ "$answer" =~ ^[0-9]+$ ]]
		then
 		  echo "Bad input: Not a number. Please try again"
		elif [ $answer = $correct ]
		then
			echo "Congratulations, you guessed it!"
		elif [ $answer -gt $correct ]
		then
			echo "Too high"
		elif [ $answer -lt $correct ]
		then
			echo "Too low"
		else
			echo "Bad input, please try again"
		fi
	done
}

game


function game()
{
	correct=$(find -maxdepth 1 -type f | wc -l)
	echo $correct
	answer=0
	until [ $answer = "q" ]
	do
		echo -n "Guess how many files are in the current directory or press 'q' to quit:"
		read answer
		if [ $answer = "q" ]
		then 
			echo "The correct answer was $correct. Quitting."
		elif [ $answer = $correct ]
		then
			echo "Congratulations, you guessed it!" 
			break
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


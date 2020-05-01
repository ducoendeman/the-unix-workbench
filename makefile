readme.md: guessinggame.sh
	echo "# The guessing game" > readme.md
	echo "Make was run on: " >> readme.md
	date >> readme.md
	echo "The guessing game contains the following number of lines: " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

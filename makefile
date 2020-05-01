readme.md: guessinggame.sh
	echo "# Guessing game of the number of files in current folder" > readme.md
	echo "Make was run on: " >> readme.md
	date >> readme.md
	echo "The guessing game contains the following number of lines: " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

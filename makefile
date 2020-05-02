README.md: guessinggame.sh
	echo "# Guessing game of the number of files in current folder" > README.md
	echo "Make was run on: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo "The guessing game contains the following number of lines: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

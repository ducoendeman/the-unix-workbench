all: README.md

README.md: guessinggame.sh
	echo "# Guessing game of the number of files in current directory" > README.md
	echo "Make was run on: $$(date)" >> README.md
	echo "The guessing game contains $$(cat guessinggame.sh | wc -l) lines." >> README.md

clean:
	rm README.md

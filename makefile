#/usr/bin/bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# GUESSING_GAME by Vishi Agrawal for Coursera course The Unix Workbench" > README.md
	echo $$(date) >> README.md
	echo "  \n" >> README.md
	echo "Below is the count of lines for guessingganem.sh :-"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md

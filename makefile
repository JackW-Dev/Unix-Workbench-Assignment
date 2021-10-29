all: README.md

README.md: GuessingGame.sh
	echo "Peer Assignment for The Unix Workbench" > README.md
	echo "A course by John Hopkins University" >> README.md
	echo "Available on [Coursera](https://coursera.org/)" >> README.md
	echo -n "Make date: " >> README.md
	date >> README.md
	echo -n "No of lines in GuessingGame.sh: " >> README.md
	grep -c '' GuessingGame.sh >> README.md
	
clean:
	rm README.md
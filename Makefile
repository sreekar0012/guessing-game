README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "### Instructions:" >> README.md
	@echo "Run the guessinggame.sh script by executing 'bash guessinggame.sh' in the terminal." >> README.md
	@echo "The script will ask how many files are in the current directory and prompt for a guess." >> README.md
	@echo "The game continues until the correct number of files is guessed." >> README.md

.PHONY: clean

clean:
	rm -f README.md

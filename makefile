README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of lines in guessinggame.sh" >> README.md
	grep -c '' guessinggame.sh >> README.md
	echo "" >> README.md
	echo "## Repository URLs" >> README.md
	echo "1. [GitHub Repository](https://github.com/<your-username>/<your-repo-name>)" >> README.md
	echo "2. [GitHub Pages Site](https://<your-username>.github.io/<your-repo-name>/)" >> README.md

.PHONY: clean

clean:
	rm -f README.md

README.md:
	touch README.md
	# TITLE
	echo "# The title of this project is "guessinggame" " >> README.md
	# DATE
	echo "Make file was run at " >> README.md
	date >> README.md
	# NUMBER OF LINES OF CODE
	echo "- The number of lines in guessinggame.sh code is " >> README.md
	cat guessinggame.sh | wc -l >> README.md

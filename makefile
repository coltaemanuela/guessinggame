README.md:
	echo "#Guessing Game" > README.md
	echo "The readme file has been generated from the *makefile* and the make command has been executed on 8th of December 16:02 UK time" >> README.md
	echo "The code is contained in the guessinggame.sh file, which is got the following number of lines of code:">> README.md
	wc -l guessinggame.sh  >> README.md

README.md:
	touch README.md
	echo "BASH UNIX Course" > README.md
	date "+%Y-%m-%d.%H:%M:%s" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md


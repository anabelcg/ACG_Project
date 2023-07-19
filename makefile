all: README.md

README.md: guessinggame.sh
        echo "## The Unix Workbench Project" > README.md
        echo "by Ana Belen Carpintero Gomez, DE, Orange Spain" >> README.md
        echo "\n**Description**: Create a program called *guessinggame.sh*. This program should continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
        echo -n "\n**Created on $$(date +%D) at $$(date +%H:%M:%S)** " >> README.md
        echo -n "\n**Number of lines of code contained in guessinggame.sh:** " >> README.md
        grep -c '' guessinggame.sh >> README.md

clean:
        rm README.md

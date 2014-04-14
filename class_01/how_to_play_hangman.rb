puts "It's hangman time!"

@game_on = true

# how to play hangman

# a world gets selected
	# dictionary is read into file

array = IO.readlines('dictionary.txt')
words_length = Random.rand(array.length)

# the blanks get displayed

# the alphabet gets displayed

# you make a guess

# guessed letters get displayed

# the letter either returns as correct and replaces a dash or get pushed into guessed letters

# make guesses until either there are no more guesses or the word gets solved


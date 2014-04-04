puts "Let's get ready to play!"

@game_on = true

@words = ["cat", "four", "pizza", "source", "ruby", "dog"]

words_length = Random.rand(@words.length)

guesses=0


random_word = @words[words_length]
if words_length == 3 
	guesses == 8
elsif words_length == 4
	guesses == 7
elsif words_length == 5
	guesses == 6
elsif words_length == 6
	guesses == 6	
end

alphabet = [*('a'..'z')]

puts alphabet.join(', ')

random_word.length.times do
puts "_"	
end

guessed = []
guessed_letter = gets.chomp
guessed.push(guessed_letter)

puts "You guessed #{guessed_letter}"
puts "Guessed Letters: #[guessed_letter.join(" ")]"
alphabet.delete(guessed_letter)
puts "Unguessed Letters: #{alphabet.join(' ')}"


variable = "dog".split("") 
# will be ["d","o", "g"]

["d","o", "g"].each_with_index do |letter, index|
	if guessed_letter == letter
		test[index] == guessed_letter
	end
end



while @game_on == true

	guessed = []
	guessed_letter = gets.chomp
	guessed.push(guessed_letter)

	alphabet.delete(guessed_letter)
	puts guessed_letter

	random_word.length.times do
	puts "_"	
	end
end

	
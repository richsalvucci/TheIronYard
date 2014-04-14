puts "Let's get ready to play!"

@game_on = true

@words = IO.readlines('dictionary.txt')

random_word = @words[Random.rand(@words.length)]

guesses=0


total_guesses = case random_word.length
when 3
	8
when 4
	8
when 5
	7
when 6
	7
when 7
	6
when 8
	6
when 9
	5
end

alphabet = [*('a'..'z')]

puts alphabet.join(', ')

random_word.length.times do
print "_ "	
end

guessed = []
guessed_letter = gets.chomp
guessed.push(guessed_letter)

puts "You guessed #{guessed_letter}"
puts "Guessed Letters: #{guessed_letter}"
alphabet.delete(guessed_letter)
puts "Unguessed Letters: #{alphabet.join(' ')}"


while @game_on == true

	guessed += []
	guessed_letter = gets.chomp
	guessed.push(guessed_letter)

	puts "You guessed #{guessed_letter}"
	puts "Guessed Letters: #{guessed}"
	alphabet.delete(guessed_letter)
	puts "Unguessed Letters: #{alphabet.join(' ')}"

	random_word.length.times do
	print "_ "	
	end
end

	
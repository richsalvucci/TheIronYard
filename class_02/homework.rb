# Fix a nice drink
# Keep game going!
# I need cards
cards_in_hand = []
dealer_cards = []
@gameon = true

def get_card
	rand(1..11)
end

def check_win(card_values, dealer_values)  # parameters is anything passed inside a function
	if card_values > 21
		@gameon = false
		puts "BUST"
	elsif card_values == 21
		@gameon = false
		puts "I WIN"
	elsif dealer_values > 21
		@gameon = false
		puts "Dealer Bust"
	elsif dealer_values > card_values
		@gameon = false
		puts "GIVE ME YOUR MONEY!"
	elsif dealer_values < card_values
		@gameon = false
		puts "I Win!"
	elsif dealer_values == card_values
		@gameon = false
		puts "Push"
	end
end

# Dealer needs to give me two cards
cards_in_hand.push(get_card)
cards_in_hand.push(get_card)

while @gameon == true
	card_values = 0
	puts "You have the following cards: "
	cards_in_hand.each do |card|
		puts card
		card_values += card
	end
	puts "Card values: #{card_values}"
	puts "Do you want to hit or stay (h to hit, s to stay)?"
	hit_or_stay = gets.chomp
	if hit_or_stay == 'h'
		new_card = get_card
		cards_in_hand.push(new_card)
		puts "This is your new card #{new_card}"
		card_values += new_card
		puts "Your total is now: #{card_values} "
		if card_values > 21
			@gameon = false
		end	
	end

	if hit_or_stay == 's'
		@gameon = false
	end
end

if card_values > 21
		@gameon = false		
end

if card_values < 21
		@gameon = true
end

dealer_cards.push(get_card)
dealer_cards.push(get_card)

while @gameon == true
	dealer_values = 0
	puts "Dealer has the following cards: "
	dealer_cards.each do |card|
		puts card
		dealer_values += card
	end
	puts "Dealer values: #{dealer_values}"
	if dealer_values < 17
		new_card = get_card
		dealer_cards.push(new_card)
	elsif dealer_values >= 17
		
		@gameon = false
		
	end	
end
check_win(card_values, dealer_values)









# 10 - Hit or stay
# hit
#   I get an additional card
#   check to see if someone wins
#   goto 10
# stay
#   dealer deals himself cards
#   if dealer is < 17
#     he gets more cards
#   check to see if someone wins
# end


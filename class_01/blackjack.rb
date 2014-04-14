puts "Shuffle up and deal!"
@game_on = true
@game_winner = "Winner Winner Chicken Dinner!"
@game_board = [ [0,0,0], [0,0,0], ]
@game_loser = "Give me your money!"

@cards = ["2","3","4","5","6","7","8","9","10","11"]

card_one = Random.rand("2","3","4","5","6","7","8","9","10","11")

card_two = Random.rand("2","3","4","5","6","7","8","9","10","11")

def display_board
	puts @game_board
	puts " #{display_player(card_one)}  |  #{display_player(card_two)}  | #{display_player(card_three)} "
	puts '------------------------------------------------------------------------------------------------'
	puts " #{display_player(card_one)}  |  #{display_player(card_two)}  | #{display_player(card_three)} " 
end


def display_player(player_choice)
	if player_choice == 1
		'card_one'
	elsif player_choice == 2
		'card_two'
    else ''
	end
end

display_board
while @game_on == true
	puts "Player 1 Choice (1):"
	player_1_choice = gets.chomp
	game_play(player_1_choice, 1)
	display_board
	puts "Player 2 Choice (4):"
	player_2_choice = gets.chomp
	game_play(player_2_choice, 1)
	display_board
	puts "Player 2 Choice (5):"
	player_2_choice = gets.chomp
	game_play(player_2_choice, 2)
	display_board
	puts "Player 1 Choice (2):"
	player_1_choice = gets.chomp
	game_play(player_1_choice, 1)
	display_board
	check_win(2)
	check_win(1)
end


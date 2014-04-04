puts "Hello World"
player1 = gets
puts "Player 1 says: "
puts player1.inspect
game_board = [ [0,0,0], [0,0,0], [0,0,0] ]


def display_board 
	puts " #{display_player(@game_board[0][0])} | #{display_player(@game_board[0][1])} | #{display_player(@game_board[0][2])}  "
	puts'--------'
	puts " #{display_player(@game_board[1][0])} | #{display_player(@game_board[1][1])} | #{display_player(@game_board[1][2])} "
	puts'--------'
	puts " #{display_player(@game_board[2][0])}| #{display_player(@game_board[2][1])} | #{display_player(@game_board[2][2])} "

end

def display_player(player_choice)
	if player_choice == 1
		'X'
	elsif player_choice == 2
		'O'
	else ''
	end
end

while game_on == true
	puts "Player 1 Choice (1-9):"
	player_1_choice = gets.chomp
	case player_1_choice
	when "1"
		@game_board[0][0] = 1
	when "2"
		@game_board[0][1] = 1

def game_play(player_choice, player_number)
	case player_choice

end 

def check


display_board

10.times do 
	puts "Hey man"
	
end
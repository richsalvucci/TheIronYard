require "./user_horse.rb"
require "./villan_horse.rb"

@race = true

def check_win(user_horse, villan_one, villan_two, villan_three)
  if @user_horse.position >= 20
    puts "You Won"
    @race = false
  elsif @villan_one.position >= 20
    puts "Blinky Won"
    @race = false
  elsif @villan_two.position >= 20
    puts "Winky Won"
    @race = false
  elsif @villan_three.position >= 20
    puts "Stinky Won"
    @race = false
  end
end

track = "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"

@user_horse = User_horse.new("Glue Factory")
@villan_one = Villan_horse.new("Blinky")
@villan_two = Villan_horse.new("Winky")
@villan_three = Villan_horse.new("Stinky")

puts "Welcome to a day at the races!"
puts "Your horse Glue Factory is ready to race!"
puts "Hit return to start your race."

while @race == true
  move = gets.chomp

  system "clear"
  if User_horse::CHEAT_CODES.include?(move)
    puts track
    @user_horse.cheat_move
    puts
    @villan_one.move_villan
    puts
    @villan_two.move_villan
    puts
    @villan_three.move_villan
    puts
    puts track
  else
    puts track
    @user_horse.move_user
    puts
    @villan_one.move_villan
    puts
    @villan_two.move_villan
    puts
    @villan_three.move_villan
    puts
    puts track
  end 

  check_win(@user_horse, @villan_one, @villan_two, @villan_three)
end
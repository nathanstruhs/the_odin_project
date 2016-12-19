require_relative 'board'
require_relative 'player'

puts "TIC TAC TOE"

puts "Player one please enter name: "
player_one_name = gets.chomp.capitalize

puts "Excellent #{player_one_name}. \nPlayer two please enter name: "
player_two_name = gets.chomp.capitalize

puts "Superb #{player_two_name}."

player_one = Player.new(player_one_name, "X")
player_two = Player.new(player_two_name, "O")

puts "#{player_one_name} is crosses. #{player_two_name} is noughts."

board = Board.new
board.display

9.times do |i|
	current_player = (i % 2 == 0) ? player_one : player_two 
	puts "#{current_player.name}'s move."
  current_move = board.process_move(gets.chomp).to_i\
	board.move(current_player, $current_move)
	board.display
	if board.win?(current_player)
		puts "#{current_player.name} wins!"
		break
	end
end





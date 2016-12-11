require_relative 'board'
require_relative 'player'

puts "TIC TAC TOE"

loop do 
	puts "Player One: Choose X or O."
	player_one_choice = gets.chomp.upcase
	if player_one_choice != "X" && player_one_choice != "O"
		print "Invalid input. "
	else
		puts "Player One chooses #{player_one_choice}!"
		$player_one = Player.new(player_one_choice)
		player_one_choice == "X" ? $player_two = Player.new("O") : $player_two = Player.new("X")
		break
	end
end

#update to use players name from input, rather than calling person "player 1, player2". Player one is always crosses

board = Board.new
board.display

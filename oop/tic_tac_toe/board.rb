
class Board
	def initialize
		@board = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
		@current_player = ""
	end

	def display 
		puts
		puts "3|#{@board[0]}|#{@board[1]}|#{@board[2]}|"
	  puts "2|#{@board[3]}|#{@board[4]}|#{@board[5]}|"
	  puts "1|#{@board[6]}|#{@board[7]}|#{@board[8]}|"
	  puts "  a b c "
	  puts
	end

	def process_move(input)
		case
		when input == "a3" || input == "3a"
			return 0
		when input == "b3" || input == "3b"
			return 1
		when input == "c3" || input == "3c"
			return 2
		when input == "a2" || input == "2a"
			return 3
		when input == "b2" || input == "2b"
			return 4
		when input == "c2" || input == "2c"
			return 5
		when input == "a1" || input == "1a"
			return 6
		when input == "b1" || input == "1b"
			return 7
		when input == "c1" || input == "1c"
			return 8
		else 
			puts "Error, please enter move coordinates."
			return nil
		end
	end

	def move(player, position)
		@board[position] = player.type
	end	

	def win?(current_player)
		case 
		when @board[0] == current_player.type && @board[1] == current_player.type && @board[2] == current_player.type 
			return true 
		when @board[3] == current_player.type && @board[4] == current_player.type && @board[5] == current_player.type 
			return true 
		when @board[6] == current_player.type && @board[7] == current_player.type && @board[8] == current_player.type 
			return true 
		when @board[0] == current_player.type && @board[3] == current_player.type && @board[6] == current_player.type 
			return true 
		when @board[1] == current_player.type && @board[4] == current_player.type && @board[7] == current_player.type 
			return true 
		when @board[2] == current_player.type && @board[5] == current_player.type && @board[8] == current_player.type 
			return true 
		when @board[0] == current_player.type && @board[4] == current_player.type && @board[8] == current_player.type 
			return true 
		when @board[2] == current_player.type && @board[4] == current_player.type && @board[6] == current_player.type 
			return true 
		else
			return false
		end
	end

end



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

end

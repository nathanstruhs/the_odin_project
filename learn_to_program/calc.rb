
# second_in_minute = 60
# minute_in_hour = 60
# hour_in_day = 24
# day_in_year = 365

# puts "Seconds in a year #{second_in_minute * minute_in_hour * hour_in_day * day_in_year}"

# years_in_decade = 10

# puts "Seconds in a decade #{second_in_minute * minute_in_hour * hour_in_day * day_in_year * years_in_decade}"

# years_i_lived = 25

# puts "Seconds in my life #{second_in_minute * minute_in_hour * hour_in_day * day_in_year * years_i_lived}"

# mystery_age_seconds = 1246000000

# puts "Mstery age in years is #{mystery_age_seconds / second_in_minute / minute_in_hour / hour_in_day / day_in_year }"
# puts ''
# puts ''

#------------------------------------

# puts 'what is your first name'
# f_name = gets.chomp
# puts 'great, what about the middle?'
# m_name = gets.chomp
# puts 'oh excellent, last name?'
# l_name = gets.chomp
# puts 'hi ' + f_name + ' ' + m_name + ' ' + l_name

#------------------------------------

# puts 'what is your favorite number?'
# fav_num = gets.chomp
# num_better = fav_num.to_i + 1
# puts 'isnt ' + num_better.to_s + ' better?'

#------------------------------------ 99 Bottles

# num_bottles = 99
# beer_left = true

# while beer_left != false 
# 	puts num_bottles.to_s + ' bottles of beer on the wall, ' + num_bottles.to_s + 'bottles of beer, take one down pass it around, ' + num_bottles.to_s + ' of beer on the wall'
# 	num_bottles -= 1
# 	if num_bottles == 0
# 		beer_left = false
# 		puts 'No more beerrrrrrrrr....'
# 	end
# end

#------------------------------------

# words = ["butt", "pee", "lemniscate"]

# words.each do |i| 
# 	puts i 
# end

# 3.times do 
# 	puts words[0]
# end

# foods = ["spinach", "lettuce", "beef"]
# puts foods
# puts
# puts foods.to_s
# puts foods.join(', ')
# foods.push 'jobby'
# puts foods[0]
# puts foods.last
# puts foods.length
# puts foods.pop
# puts foods
# puts foods.length

#Let's write a program which asks us to type in as many words as we want 
#(one word per line, continuing until we just press Enter on an empty line), and which then repeats the words back to us in alphabetical order.


# puts "Type in as many words as you want. When you are done, press \'Enter'\ on the next line."
# # array for the entries
# words = []
# entry = "0"
# # taking responses and pushing them into the array
# while entry != ""
# entry = gets.chomp
# words.push entry
# end
# # displaying data
# puts "Thanks for your input. Sorting data ..."

# # words = [...]
# temp = 0

# words.length.times do |i| 
# 	(words.length-1).times do |j|
# 		if ((words[j+1])[0].to_c) > ((words[j])[0].to_c)
# 			temp = words[j]
# 			words[j] = words[j+1]
# 			words[j+1] = temp
# 		end
# 	end
# end

# puts words

#------------------------------------

# def bottles_song bottles_quantity
# 	bottles_quantity.times do |i|
# 		num_bottles = bottles_quantity - i
# 		num_bottles_s = num_bottles.to_s
# 		puts num_bottles_s + " bottles of beer on the wall.. " + num_bottles_s + " bottles of beer, take one down pass it around."
# 	end
# 	puts "No more beer."
# end

# bottles_song 9999

#------------------------------------

# now = Time.new
# my_b_day = Time.mktime(1991, 2, 28)

# puts now.to_s
# puts my_b_day.to_s

# puts now - my_b_day

#------------------------------------

# class Die
#   def initialize
#     roll
#   end
#   def roll
#     @numberShowing = 1 + rand(6)
#   end
#   def showing
#     @numberShowing
#   end
# end
# puts Die.new.showing

#------------------------------------

# class Orange_tree

# 	def initialize
# 		@height = 1
# 		@age = 0
# 		@oranges_qty = 0
# 	end

# 	def height
# 		puts "Yo tree is " + @height.to_s + " units tall."
# 	end

# 	def year_pass
# 		puts "One year passes, growth and abundance ensues."
# 		@height = @height + 1
# 		@age = @age + 1
# 		@oranges_qty = 0
# 		if @age > 3
# 			@oranges_qty = @age * 10
# 		end
# 	end

# 	def oranges_count
# 		if @oranges_qty > 0
# 			puts "The tree bears fruit, the fruit is of the number " + @oranges_qty.to_s + "."
# 		else
# 			puts "The tree bears no fruit."
# 		end
# 	end

# 	def pick_orange
# 		if @oranges_qty > 0
# 			@oranges_qty = @oranges_qty - 1
# 			"You have picked one orange, my friend."
# 		else 
# 			puts "Sorry, no fruits."
# 		end
# 	end
# end

# puts ''
# tree = Orange_tree.new
# tree.height
# tree.oranges_count
# tree.pick_orange
# tree.year_pass
# tree.year_pass
# tree.year_pass
# tree.year_pass
# tree.year_pass
# tree.year_pass
# tree.height
# tree.oranges_count
# tree.pick_orange
# tree.height
# tree.oranges_count
# tree.pick_orange
# tree.height
# tree.oranges_count
# tree.pick_orange

#------------------------------------

def compose proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = Proc.new do |x|
  x * x
end

doubleIt = Proc.new do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)










def caesar_cipher(message, key)
	new_word = ""
	message.each_char do |i|
		key.times do
			if(i == "z")
				i = "a"
				next
			elsif(i == "Z")
				i = "A"
				next
			end
			i.next!
			i == "%" ? i = " " : ""
		end
		new_word += i	
	end
	puts new_word
end

caesar_cipher("What a string!", 5)
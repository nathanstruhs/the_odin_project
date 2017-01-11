lines = File.readlines("twist.txt")
line_count = lines.size 
text = lines.join

puts "#{line_count} lines"

total_characters = text.length
puts "#{total_characters} characters"

total_chars_nospaces = text.gsub(/\s+/, '').length
puts "#{total_chars_nospaces} characters excluding whitespace"

word_count = text.split.length
puts "#{word_count} words"

sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

paragraph_count = text.split(/\n\n/).length 
puts "#{paragraph_count} paragraphs"

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count } words per sentence (average)"

stop_words = %w{the a by on for of are with just but and to the my I has some in}

key_words = text.to_s.select { |word| !stop_words.include?(word) }

puts key_words.join(" ")


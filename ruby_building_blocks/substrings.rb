# Implement a method substrings that takes a word as the first argument and then an array of valid 
# substrings (your dictionary) as the second argument. It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
	substring_hash = {}
    array.each do |word|
      arr_of_counts = string.downcase.scan(word)
      count = arr_of_counts.count

      if count > 0
      	substring_hash[word] = count
      end

    end
    return substring_hash
end


puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

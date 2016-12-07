# Implement a method substrings that takes a word as the first argument and then an array of valid 
# substrings (your dictionary) as the second argument. It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many times it was found.


def substrings(str, arr)
	results = {}
    arr.each do |word|
      arr_of_counts = str.downcase.scan(word)
      count = arr_of_counts.count

      if count > 0
      	results[word] = count
      end

    end
    return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
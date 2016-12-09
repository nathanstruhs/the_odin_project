# Now create a similar method called #bubble_sort_by which sorts an array but accepts a block. 
# The block should take two arguments which represent the two elements currently being compared. 
# Expect that the block's return will be similar to the spaceship operator you learned about before --
# if the result of the block is negative, the element on the left is "smaller" than the element on the 
# right. 0 means they are equal. A positive result means the left element is greater. Use this to 
# sort your array.


def bubble_sort_by(array)
	n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
    	comparison = yield(array[i], array[i+1])
    	if comparison == 1
       	array[i], array[i+1] = array[i+1], array[i]
       	swapped = true
      end
    end
    break if !swapped
  end
  array
end

puts bubble_sort_by([4,3,2,1]) { |left, right| left <=> right }
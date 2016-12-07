#Bubble Sort_______________________________

def bubble_sort(arr) 
	arr_size = arr.length

	loop do 
		swapped = false
		(arr_size-1).times do |i|
			if (arr[i] > arr[i+1])
				arr[i], arr[i+1] = arr[i+1], arr[i]
				swapped = true
				end
			end
		break if not swapped
	end
	arr 
end

arrayy = [6,3,4,8,3,23,43,122,1,2,3,2,9,98]
print "Bubble sort: " 
p bubble_sort(arrayy)

#Bubble Sort that takes a block____________
def bubble_sort_by(list)
  loop do
    i = 0
    swapped = false
    while i < list.length - 1
      if yield(list[i], list[i + 1]) > 0
        list[i], list[i + 1] = list[i + 1], list[i]
        swapped = true
      end
      i += 1
    end
    break if swapped == false
  end
  list
end

arrayyy = ["hi","hello","hey"]
bubble_sort_by(arrayyy) do |left,right|
	left.length - right.length
end
print "Bubble sort with block: "
p arrayyy
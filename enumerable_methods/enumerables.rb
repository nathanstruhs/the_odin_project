module Enumerable
	
  def my_each
  	array = self.to_a
  	(array.length).times do |index|
  		yield(array[index])
  	end
  end

  def my_each_with_index
  	array = self.to_a
  	(array.length).times do |index|
  		yield(array[index], index)
  	end
  end

  # def my_select
  # end

  # def my_all?
  # end

  # def my_any?
  # end

  # def my_none?
  # end

  # def my_count
  # end

  # def my_map
  # end

  # def my_inject
  # end

end

numbers = [1,2,3,4]

numbers.my_each { |i| puts i * 3 }

numbers.my_each_with_index { |element, index| puts "Value of #{element} at index #{index}" }










module Enumerable

  def my_each 
    return self.to_enum unless block_given?
    array = self.to_a 
    n = array.length 
    n.times do |i|
      yield array[i]
    end
  end

  def my_each_with_index
    return self.to_enum unless block_given?
    array = self.to_a
    offset = 1
    array.my_each { |i| yield(array[i-offset], i-offset) }
  end

  def my_select
    return self.to_enum unless block_given?
    result = []
    self.my_each { |i| result << i if yield(i) }
    return result
  end

  def my_all?
    if block_given?
      my_each { |i| return false unless yield(i) }
    else
      my_each { |i| return false unless i }
    end
    true
  end

  def my_any?
    if block_given?
      my_each { |i| return true if yield(i) }
    else
      my_each { |i| return true if i }
    end
    false
  end

  def my_none?
    if block_given?
      my_each { |i| return false if yield(i) }
    else
      my_each { |i| return false if i }
    end
    true
  end

  def my_count
    count = 0
    my_each { |i| i += 1 }
    count = i
  end

  def my_map
    return self.to_enum unless block_given?
    array = []
    my_each { |i| array << yield(i) }
    array
  end

  def my_inject(num=0)
    accumulator = num
    self.my_each {|i| accum=yield(accum,i)}
    accum
  end

end

numbers = [1,2,3,4,5,6]

numbers.my_each { |i| puts i * 3 }

numbers.my_each_with_index { |element, index| puts "Element: #{element}, index: #{index}" }

evens = numbers.my_select { |i| i % 2 == 0 }
print evens 
puts

puts numbers.my_all? { |number| number < 7 }

puts numbers.my_any? { |number| number > 5 }

puts numbers.my_none? { |number| number > 6 }

puts numbers.count { |number| number % 2 == 0 }

puts numbers.my_map { |number| number * 3 }










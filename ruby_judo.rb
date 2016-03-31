=begin
1. Power

Write a method power which takes two integers (base and exponent) and returns the base raised to the power of exponent. Do not use Ruby’s ** operator for this!
=end

def power(base, exponent)
  result = 1
  exponent.times { result *= base }
  return result
end

# check if works:

puts "1. Power Method = #{power(3, 5)}"


#################################################################

=begin
2. Factorial

Write a method factorial which takes a number and returns the 
product of every number up to the current number multiplied 
together.
=end

def factorial(number)
  result = (1..number).inject(1) {|total, next_number| total *= next_number }
  result
end

# check if works:

puts "2. Factorial Method = #{factorial(5)}"


#################################################################

=begin
3. Uniques

Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!
=end

require 'set'
def uniques(array)
  new_array = array.to_set
  uniq_array = new_array.to_a
end

def uniques?(array)
  array & array
end


# check if works:

puts "3. Uniques Method = #{uniques( [1, 5, "frog", 2, 1, 3, "frog"])}"
puts "3.1 Uniques Method2 = #{uniques?( [1, 5, "frog", 2, 1, 3, "frog"])}"

#################################################################

=begin
4. Combinations

Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.
=end

def combinations(array1, array2)
  x = 0
  new_array = []
  while x < array2.length
    array1.each_with_index do |item|
      new_combo = item + array2[x]
      new_array << new_combo
      x += 1
    end
  end
  return new_array
end

# check if works:

puts "4. Combinations Method = #{combinations(["on", "in"],["to", "rope"])}"


#################################################################

=begin
5. Primes

Write a method is_prime? which takes in a number and returns true if it is a prime number.
=end

def is_prime?(number)
  (2..(number-1)).each { |divider| return false if number % divider == 0 }
  true
end

# check if works:

puts "5. Prime Method. 7 is a prime? = #{is_prime?(7)} and 14 is a prime? = #{is_prime?(14)}"


#################################################################

=begin
6. Rectangle Overlap

Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers.
=end

def overlap

end

# check if works:

puts "6. Overlap Method = #{overlap()}"

# Ruby Basics Practice

#======================================
# Hello World
#======================================

# 1. Print Hello World in the console

puts "Hello World"
adjective = "Big Bad"

# 2. Interpolate the adjective variable in the Hello World string

p "Hello #{adjective} World!"

# 3. Save "Hello World" to a variable. Without changing the letters in your code manually, permanently change "Hello World" to all uppercased letters.

hello = "Hello World"
p hello.upcase

#========================================
# Nums Array and Enumberables
#========================================

# With the following array:

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# 1. Use .uniq to print the array with all duplicate entries removed

p nums.uniq

# 2. Next, use .push and .pop , .shift .unshift and .length on the array as you would with javaScript (if you need to add a number, add 5)

p nums.length #shows length 
p nums.push(5) #add 5 to the end
p nums.pop #pops last number off and returns it
p nums.shift #retrieves and removes first item
p nums.unshift(555) #adds a new item to the beginning of an array

# 3. Use .include? to check if the array contains the number 8

p nums.include?(8)

# 4. Use .find_all to find all the numbers greater than 10

p nums.find_all {|i| i < 10}

# 5. Use .all? to check if all the numbers are greater than 0?

p nums.any? { | num | num > 0}

# 6. use any? to check if there are any numbers that are divisible by 8

p nums.any? { | num | num % 8 == 0 if num > 0 }

# 7. use .count to let you know how many numbers are greater than 4

p nums.count { |num| num > 4}

# 8. use .each_with_index to print each item times its index

p nums.each_with_index { | num, index | p num * index}

# 9. .find the number that is divisible by 7 and 5 and is greater than 0

p nums.find { |num| num % 7 == 0 and num % 5 == 0 and num > 0 }

# 10. .find_index of the number that is divisible by 5 and 7 and is greater than 0

p nums.find_index { |num| num % 5 == 0 and num % 7 == 0 and num > 0}

# 11. return the .first 3 numbers

p nums.first(3)

# 12. return the .last 5 numbers

p nums.last(3)

# 13. .group_by the modulo of 3 ( % 3 )

p nums.group_by { |num| num % 3 }

# 14. use minmax to return the smallest and largest number

p nums.minmax 

# 15. use .reject to return all the numbers that are NOT divisible by 3

p nums.reject { |num| num % 3 == 0}

# 16. use .select to return all the numbers divisible by 5

p nums.select { |num| num % 5 == 0 }

#========================================
# Color Array
#========================================

# With the following array:

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# 1. Print out a random color.

puts colors[rand(colors.length)]

# 2. Print out the colors array in reverse order.

p colors.reverse

# 3. Print out all of the colors in the array with all capital letters.

p colors.map(&:upcase)

#========================================
# Methods
#========================================

# 1. Write a method named find_area that finds the area of a rectangle when given values for width and height

def find_area height, width
    height * width
end

p find_area 4, 4

# 2. Write a method named multiply_each_by_five that will loop over the given nums array below and print each number multiplied by 5

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
    arr.each{ |i| p i * 5}
end

multiply_each_by_five nums

#========================================
# Methods with a hash
#========================================

# Use the following given hashes to solve the problems below

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

# 1. Write a method named print_price that will take in any hash and return the price of the item.

def print_price any_hash
    p any_hash[:price]
end

print_price table
print_price lamp
print_price book

# 2. Write a method named print_item_sums that will take in two hashes and will return the sum of the prices for the items in the hashes.

def print_items_sums (hash1, hash2)
    p hash1[:price] + hash2[:price]
end
print_items_sums(lamp, table)

#========================================
# Solving Problems with Ruby
#========================================

# 1. Euler Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

p (1...10).select{|n| n % 3 == 0 || n % 5 == 0}.reduce(:+)

# Find the sum of all the multiples of 3 or 5 below 1000.

p (1...1000).select{|n| n % 3 == 0 || n % 5 == 0}.reduce(:+)


#========================================
# Primes
#========================================

# 1. Write a method called check_prime? that will test whether a number is Prime. The method will return true if Prime, false if not.

def check_prime 
    
end

# ruby docs
# primes: https://ruby-doc.org/stdlib-2.5.3/libdoc/prime/rdoc/Prime.html#method-i-prime-3F
# arrays: https://ruby-doc.org/core-2.5.3/Array.html
# Strings: https://ruby-doc.org/core-2.5.3/String.html
# Enumerator: https://ruby-doc.org/core-2.5.3/Enumerator.html
# Enumerable: https://ruby-doc.org/core-2.5.3/Enumerable.html#method-i-reduce 
# 



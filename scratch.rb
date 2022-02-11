first_name = 'Mark'
last_name = 'Rutto'

full_name = first_name + ' ' + last_name
puts full_name

# Using modulo, division or a combination of both, take a 4 digit
# number and find thousands, hundreds, tens and ones
number = 2345
thousands = number / 1000
puts "The number in thousands is #{thousands}"
hundreds = number % 1000 / 100
puts "The number in hundreds is #{hundreds}"
tens = number % 100 / 10
puts "The number in tens is #{tens}"
ones = number % 10
puts "The number in ones is #{ones}"

movies = { 'Coming Home' => 1975, 'I love kenya' => 2004, 'War' => 2013 }
puts movies.keys

# A program that returns the factorial of 5

puts "Five factorial is #{5 * 4 * 3 * 2 * 1}"

# Calculate 3 squares of 3 float numbers of your choosing

puts 'Enter Num 1'
num1 = gets.chomp.to_i
puts 'Enter Num 2'
num2 = gets.chomp.to_i
puts 'Enter Num 3'
num3 = gets.chomp.to_i

puts "The square of Num 1 (#{num1}) = #{num1 * num1}"
puts "The square of Num 2 (#{num2}) = #{num2 * num2}"
puts "The square of Num 3 (#{num3}) is #{num3 * num3}"

# Ask users name and print out a greeting message with name included
puts 'What is your name? :'
name = gets.chomp
puts "Hello there #{name}, what is your age? :"
age = gets.chomp.to_i
puts "In 10 years you will be #{age + 10} years old"

# print user name 10 times
10.times do
  puts name
end

# Write a program that prints a greeting message.
# This program should contain a method called greeting
# that takes a name as its parameter and returns a string.
def greeting(name)
  puts "Hello #{name}"
end
greeting('Mark')

# Write a program that includes a method called multiply that takes two
# arguments and returns the product of the two numbers
def multiply(a, b)
  a * b
end
multiply(12, 34)

# Correct the following code
# def scream(words)
#   words = words + "!!!!"
#   return
#   puts words
# end
#
# scream("Yippeee")
def scream(words)
  word = words + '!!!!'
  puts word
end
scream('Yippeee')

# Write a method that takes a string as an argument. The method should return a
# new, all-caps version of the string, only if the string is
# longer than 10 characters. Example: change "hello world" to "HELLO WORLD".

def uppercase(word)
  word.upcase
end
puts uppercase('I love coding in ruby')

# Given a hash of family members, with keys as the title and an array of
#  names as the values, use Ruby's built-in select method to gather only
# immediate family members' names into a new array.
#
# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }

family = {  uncles: %w[bob joe steve],
            sisters: %w[jane jill beth],
            brothers: %w[frank rob david],
            aunts: %w[mary sally susan] }
immediate_family_members = family.select do |key, _val|
  %i[brothers sisters].include?(key)
end
arr = immediate_family_members.values.flatten
puts arr

# Using some of Ruby's built-in Hash methods, write a program that loops
# through a hash and prints all of the keys. Then write a program that does
# the same thing except printing the values. Finally, write a program that
# prints both.

family.each_key { |key| puts key }
family.each_value { |value| puts value }
family.each { |key, value| puts "The family of #{key} are #{value}" }

# Using loop, print out even numbers from 1-100

x = 1
loop do
  x += 1
  next unless x.even?

  puts x
  break if x >= 100
end

=begin
write a program that calculates
the number of milliseconds in one day. How would you approach this
problem? How many hours in one day? How many minutes in one hour?
How many seconds in one minute? How many milliseconds in one second?
=end

milliseconds = 24 * 60 * 60 * 1000
puts "The number of milliseconds a day are #{milliseconds}"

=begin
Learn midnight command for file system access.
cat filename ->Copy files content to the terminal
head -1
=end


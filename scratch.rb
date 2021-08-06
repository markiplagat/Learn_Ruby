first_name = "Mark"
last_name = "Rutto"

full_name = first_name + " " + last_name
puts full_name

=begin
Using modulo, division or a combination of both, take a 4 digit
number and find thousands, hundreds, tens and ones
=end
number = 2345
thousands = number / 1000
puts "The number in thousands is #{thousands}"
hundreds = number % 1000 / 100
puts "The number in hundreds is #{hundreds}"
tens = number % 100 / 10
puts "The number in tens is #{tens}"
ones = number % 10
puts "The number in ones is #{ones}"

movies = {"Coming Home" => 1975, "I love kenya" => 2004, "War" => 2013}
puts movies.keys

# A program that returns the factorial of 5

puts "Five factorial is #{5 * 4 * 3 * 2 * 1}"

# Calculate 3 squares of 3 float numbers of your choosing

puts "Enter Num 1"
num1 = gets.chomp.to_i
puts "Enter Num 2"
num2 = gets.chomp.to_i
puts "Enter Num 3"
num3 = gets.chomp.to_i

puts "The square of Num 1 (#{num1}) = #{num1 * num1}"
puts "The square of Num 2 (#{num2}) = #{num2 * num2}"
puts "The square of Num 3 (#{num3}) is #{num3 * num3}"

#Ask users name and print out a greeting message with name included
puts "What is your name? :"
name = gets.chomp
puts "Hello there #{name}, what is your age? :"
age = gets.chomp.to_i
puts "In 10 years you will be #{age + 10} years old"

# print user name 10 times
10.times do
  puts name
end

=begin
Write a program that prints a greeting message.
This program should contain a method called greeting
that takes a name as its parameter and returns a string.
=end
def greeting(name)
  puts "Hello #{name}"
end
greeting("Mark")

=begin
Write a program that includes a method called multiply that takes two
arguments and returns the product of the two numbers
=end
def multiply(a,b)
  a*b
end
multiply(12,34)

=begin
Correct the following code
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")
=end
def scream(words)
  word = words + "!!!!"
  puts word
end
scream("Yippeee")

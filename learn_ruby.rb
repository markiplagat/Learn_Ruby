# require "Gemfile"
# require "pry"

#print hello text in ruby
puts "Hello Mark"

#We can make it more interactive by prompting the user to input their name and we pass a greeting to them
print "What is your name? :"
name = gets.chomp
puts "Hello #{name}, Welcome to Maky limited."

#Here document
print <<EOF
This is the first way of creating here document.
EOF
print <<"EOF";
This is the second way of creating here document.
EOF
print <<`EOC`
echo Execute commands
EOC
print <<"foo", <<"bar"
Stacking - This is foo.
foo
Stacking - This is bar
bar

#Declare the code to be called before the program is run
BEGIN{
  puts "Hey Don't disturb Mark is learning Ruby"
}
#Declare the code to be called at the end of the document
END {
  puts "You can now talk, Mark is done"
}
=begin
A class is a blue print from which individual objects are created.
Example is a bicycle is an instance of a class of objects known as bicycles

Local variables are not available outside the method and begins with a lowercase letter or _ (an underscore)
Instance variables are available across methods for any particular object or instance. They are preceded by the sign @
Class variables are available across different objects. Preceded by @@
Global variable are not available across classes. Preceded by $
=end
class Customer
  @@no_of_customers = 0

  #Will be executed when the new method of the class is called with parameters.
  def initialize(id, name, addr)
    @@no_of_customers += 1
    @customer_id = id
    @customer_name = name
    @customer_addr = addr
  end

  def display_details
    puts "Customer id #{@customer_id}"
    puts "Customer name #{@customer_name}"
    puts "Customer address #{@customer_addr}"
  end
  def total_number_of_customers
    puts "Total number of customers: #{@@no_of_customers}"
  end
end
#Create Objects
customer1 = Customer.new("1", "Mark", "Nairobi")
customer2 = Customer.new("2", "Rutto", "Eldoret")

#Display Methods
customer1.display_details
customer1.total_number_of_customers
customer2.display_details

# Ruby method in a class
class Sample
  def hello
    puts "Hello again Mark"
  end
end
object = Sample.new
object.hello



#Global variables
$global_variable = 10
class Class1
  def print_global
    puts "Global variable  in Class1 is #{$global_variable}"
  end
end
class Class2
  def print_global
    puts "Global variable in Class2 is #{$global_variable}"
  end
end
class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global


#Instance variables
class Customer
  #Will be executed when the new method of the class is called with parameters.
  def initialize(id, name, addr)
    @customer_id = id
    @customer_name = name
    @customer_addr = addr
  end
  def display_details()
    puts "Customer id #{@customer_id}"
    puts "Customer name #{@customer_name}"
    puts "Customer address #{@customer_addr}"
  end
end
#Create Objects
customer1 = Customer.new("1", "Mark", "Nairobi")
customer2 = Customer.new("2", "Rutto", "Eldoret")

#Display Methods
customer1.display_details
customer2.display_details


#Ruby constants
class Example
  CON1 = 100
  CON2 =300
  def show
    puts "Value of first constant is #{CON1}"
    puts "Value of second constant is #{CON2}"
  end
end
#Create Objects
object = Example.new
object.show

#Ruby Hashes
hash_colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hash_colors.each do |key, value|
  puts key," is ", value, "\n"
end

#Ranges
(30..40).each do |n|
  print n, ' '
end

puts "Enter num1: "
num1 = gets.chomp
puts "Enter num2: "
num2 = gets.chomp
sum = num1.to_i + num2.to_i
puts "The sum is #{sum}"

# if elsif statements
x =4
if x>2
  puts "The number is greater than 4"
elsif x==2 || x < 2
  puts "the number is smaller or equal to 2"
else
  puts "Do you know what you are really doing?"
end


# while loop
$i = 1
$num = 6
while $i < $num do
  puts "The loop is #{$i}"
  $i += 1
end


#methods

def sayhi(name, age) #define a method and set parameters
  puts "Hello #{name} you're #{age} years old"
end
sayhi("mark", 35) #call the method


#return statement --making a method give us a feedback
def cube(num)
  [num * num * num, 50] #Nothing after the return value will be executed
end
puts cube(5)

# while loop
secret_word = "mark"
guess = ""
guess_count = 0
guess_limit = 4
out_of_guesses = false
while guess != secret_word and !out_of_guesses
  if guess_count < guess_limit
  puts "Enter the guess: "
  puts "HINT the owner of this file m..."
  guess = gets.chomp.downcase
  guess_count +=1
  else
    out_of_guesses = true
  end
end
if out_of_guesses
  puts"You lose"
else
  puts "You got it fella! Smile"
end

# for loop
cars = %w[Lamborghini Toyota Subaru Audi Ferrari Porsche Chevrolet Acura]
cars.each do |car|
  puts car
end

cars.each { |car_type| puts car_type }

#Exponent method
def pow(base_num, pow_num)
  result = 1
  pow_num.times do
    result = result * base_num
  end
  result
end
puts pow(5, 5)

#open a file
File.open("random_numbers.rb", "r+") do |file|
  file.readline
  file.write( "These are random numbers from 100 to 1")
end

#Handle Errors
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
begin
  puts numbers["me"]
rescue
  puts "Not in the array"
end

# Question with multiple choices
class Question
  attr_accessor :prompt, :answer

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "What color are oranges?\n(a)red\n(b)orange\n(c)yellow"
p2 = "What color is watermelon?\n(a)green\n(b)pink\n(c)red"
p3 = "What color are apples?\n(a)blue\n(b)yellow\n(c)red"

questions = [
  Question.new(p1, "b"),
  Question.new(p2, "a"),
  Question.new(p3, "c")
]
def run_test(questions)
  answer = ""
  score = 0
  questions.each { |question|
    puts question.prompt
    answer = gets.chomp
    if answer == question.answer
      score += 1
    end
  }
  puts "You got #{score}/#{questions.length}"
end
run_test(questions)


#Inheritance
class Chef
  def make_chicken
    puts "The chef makes chicken"
  end
  def make_salad
    puts "The chef makes salad"
  end
  def make_special_dish
    puts "The Chef makes barbeque ribs"
  end
end
class ItalianChef < Chef
  def make_snails
    puts "The chef can make delicious snails. Yummy!"
  end
end
chef = Chef.new
chef.make_chicken

italian_chef = ItalianChef.new
italian_chef.make_special_dish


#module
module Tools
  def sayhello(name)
    puts "Hello #{name}"
  end
  def saybye(user)
    puts "Bye #{user}"
  end
end
include Tools
Tools.saybye("mark")
Tools.sayhello("mark")


#Use information of a file
# require_relative 'random_numbers'


#Hashes optional parameters
def greeting(name, options = {})
  if options.empty?
    puts "Hello #{name}"
  else
    puts "Hello #{name} from #{options[:country]} your age is #{options[:age]}"
  end
end
greeting("Mark")
greeting("Kip", age: 13, country: "Kenya")


#Loop through an array and get value and its index
names = %w[Mark Rutto Kiplagat]
names.each_with_index do |name, index|
  puts "#{name} is index #{index+1}"
end

=begin
Using select and reject to pick a specific data rejecting the one you may
not want
=end
# Using the names array above, lets say we dont want to invite Norah to the party
puts names.select {|friend| friend != 'Mark'}
# Or
puts names.reject {|friend| friend == 'Mark'}

# take user input and calculate the frequencies of each word
puts "Enter text here. With repeated words please."
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each do |word|
  frequencies[word] += 1
  frequencies = frequencies.sort_by{|a, b| b}
  frequencies.reverse!
  frequencies.each do |word, frequency|
    puts word + " " +frequency.to_s
  end
end

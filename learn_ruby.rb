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
  def display_details()
    puts "Customer id #@customer_id"
    puts "Customer name #@customer_name"
    puts "Customer address #@customer_addr"
  end
  def total_number_of_customers()
    puts "Total number of customers: #@@no_of_customers"
  end
end
#Create Objects
customer1 = Customer.new("1", "Mark", "Nairobi")
customer2 = Customer.new("2", "Rutto", "Eldoret")

#Display Methods
customer1.display_details()
customer1.total_number_of_customers()
customer2.display_details()

# Ruby method in a class
class Sample
  def hello
    puts "Hello again Mark"
  end
end
object = Sample. new
object.hello



#Global variables
$global_variable = 10
class Class1
  def print_global
    puts "Global variable  in Class1 is #$global_variable"
  end
end
class Class2
  def print_global
    puts "Global variable in Class2 is #$global_variable"
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
    puts "Customer id #@customer_id"
    puts "Customer name #@customer_name"
    puts "Customer address #@customer_addr"
  end
end
#Create Objects
customer1 = Customer.new("1", "Mark", "Nairobi")
customer2 = Customer.new("2", "Rutto", "Eldoret")

#Display Methods
customer1.display_details()
customer2.display_details()


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
object = Example.new()
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

#
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
  return num*num*num, 50 #Nothing after the return value will be executed
end
puts cube(5)





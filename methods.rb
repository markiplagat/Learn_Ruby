# Method that mutates its argument permanently
a = [1, 4, 6, 7]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

# Stack -> helps ruby keep track of what method is executing as well
# as where execution should resume when it returns

# Tap method
class User
  attr_accessor :name, :age

  def self.my_tap(name, age)
    User.new.tap do |u|
      u.name = name
      u.age = age
    end
  end
end

new_user = User.my_tap('mark', 25)

puts "#{new_user.name.capitalize} is #{new_user.age} years old"

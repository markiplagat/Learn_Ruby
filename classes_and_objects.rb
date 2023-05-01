class Humans
  def evolve
    puts 'Human Beings evolve'
  end
end

class Person < Humans
  @@persons = 0

  def initialize(id, name, age)
    @id = id
    @name = name
    @age = age
    @@persons += 1
  end

  def intro
    puts "My name is #{@name} and I am #{@age} years old."
    puts 'And this is my speech:'
    evolve
  end

  def self.count_all_people
    @@persons
  end
end

p = Person.new(1, 'Mark', 23)
p1 = Person.new(2, 'Kip', 34)
p.intro
puts Person.count_all_people
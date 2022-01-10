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
    puts "My name is #{@name} and i am #{@age} years old"
    puts 'and this is my speech: '
    evolve
  end

  # Class method
  def self.count_all_people
    @@persons
  end
end

p = Person.new(1, 'mark', 23)
p1 = Person.new(2, 'kip', 34)
p.intro
puts Person.count_all_people

class Person
  # The initialize works hand in hand with new.
  # When Person.new is called initialize! is called and values are set
  def initialize(id, name, age)
    @id = id
    @age = age
    @name = name
  end
end

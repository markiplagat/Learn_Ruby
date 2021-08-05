class Humans
  def evolve
    puts "Human Beings evolve"
  end
end

class Person < Humans
  @@persons = 0
  def initialize(id,name,age)
    @id = id
    @name = name
    @age = age
    @@persons +=1
  end

  def intro
    puts "My name is #{@name} and i am #{@age} years old"
    puts "and this is my speech: "
    evolve
  end

  def self.count_all_people
    return @@persons
  end
end

p = Person.new(1, "mark", 23)
p1 = Person.new(2,"kip", 34)
p.intro
puts Person.count_all_people


class Person
  def initialize(id,name, age)
    @id = id
    @age = age
    @name = name
  end
end

# Sort and sort_by.

# Sorting an array in descending order
[1, 2, 3, 4].sort { |a, b| b <=> a }

# The sorting operator (<=>)(spaceship operator)
# 0 => Equal
# 1 => a>b
# -1 => a<b

#  Sort receives two objects and compares using <=>
#  Sort_by receives just one object, and you have to call a method
#  that will be used to map over the collection.

matrix = [
  [1, 2, 3, 4, 5, 6],
  [10, 11, 12, 13],
  %i[a b c]
]

matrix.sort_by { |obj| obj.size }

# Sort strings alphabetically
puts 'Mark'.chars.sort.join

# Case sensitive sort
puts 'CgefhSheShdgs'.chars.sort(&:casecmp).join

# Sort a hash
person = {
  name: 'Mark',
  age: 24,
  address: 'Main str'
}

person.sort_by { |k, _v| k }

# Sort array of hashes.
scores = [
  { name: 'mark', score: 1 },
  { name: 'kip', score: 20 }
]
scores.sort_by { |h| h[:name] }

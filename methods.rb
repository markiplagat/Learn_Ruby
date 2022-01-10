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

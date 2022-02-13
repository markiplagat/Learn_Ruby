@humans = 10
@machines = 10_000

def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)
  if luck?
    @machines -= diff
    puts "#{diff} machines destroyed"
  else
    @humans -= diff
    puts "#{diff} humans destroyed"
  end
end

def random_city
  dice = rand(1..5)
  if dice == 1
    'Nairobi'
  elsif dice == 2
    'Nakuru'
  elsif dice == 3
    'Eldoret'
  elsif dice == 4
    'Kisumu'
  else
    'Mombasa'
  end
end

def random_sleep
  sleep rand(0.3..1.5)
end

def status
  puts "#{@humans} humans and #{@machines} machines left"
end


def first_event
  puts "Missile launched against #{random_city}"
  random_sleep
  boom
end

def second_event
  puts "Nuclear weapon used against #{random_city}"
  random_sleep
  boom
end

def third_event
  puts "Group of soldiers have breached defence in #{random_city}"
  random_sleep
  boom
end

def victory?
  false

end

loop do
  if victory?
    exit
  end
  dice = rand(1..3)

  if dice == 1
    first_event
  elsif dice == 2
    second_event
  elsif dice == 3
    third_event
  end

  status
  random_sleep
end


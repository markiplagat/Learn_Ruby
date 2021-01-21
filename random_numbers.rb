#prompt the user to say something
def say_input
    print "What should we say? "
    input = gets.chomp
    puts "Okay, let's say #{input}!"
end
say_input
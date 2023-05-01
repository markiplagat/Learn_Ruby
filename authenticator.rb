USERS = [
  { username: 'test', password: 'pass' },
  { username: 'mark', password: 'pass1' },
  { username: 'kip', password: 'pass2' },
  { username: 'rutto', password: 'pass3' },
  { username: 'lagat', password: 'pass4' },
  { username: 'admin', password: 'password' }
]

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    return user_record if user_record[:username] == username && user_record[:password] == password
  end
  'Wrong credentials!!!'
end

puts 'Welcome'
50.times { print '-' }
puts
puts 'Enter your password to check if it matches the one in the database.'
puts ''

trials = 1
while trials < 4
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp
  authentication = auth_user(username, password, USERS)
  puts authentication
  puts 'Press Q to quit or any key to continue.'
  input = gets.chomp.downcase
  break if input == 'q'
  trials += 1
end

# Know the number of trials.
puts 'You have reached the maximum number of trials.' if trials == 4
# database
users=[
  {username: "test", password: "pass"},
  {username: "mark", password: "pass1"},
  {username: "kip", password: "pass2"},
  {username: "rutto", password: "pass3"},
  {username: "lagat", password: "pass4"},
  {username: "admin", password: "password"}

]

def auth_user(username, password, list_of_users)
  list_of_users.each do|user_record|
    if user_record[:username]==username && user_record[:password]==password
      return user_record
    end
  end
  return "Wrong credentials.!!!"
end
puts "Welcome"
50.times{print"-"}
puts
puts "Will prompt the user to input the password then check if it matches with the one in the database"
puts ""

trials=1
while trials<4
  print"Username:"
  username =gets.chomp
  print"Password:"
  password=gets.chomp
  authentication=auth_user(username, password, users)
  puts authentication
  puts "Press Q to quit or any key to continue"
  input=gets.chomp.downcase
  break if input=="q"
  trials +=1
end
# Know the number of trials.
if trials == 4
puts "Has reached the maximum number of trials"
end

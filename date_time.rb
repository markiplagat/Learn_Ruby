time = Time.new

# Current date and time
puts "The time is: " + time.inspect
# Year
puts time.year
# Month (1 to 12)
puts time.month
# Day (1 to 30)
puts time.day
# 0: is sunday
puts time.wday
# Days of the year
puts time.yday
# 23: 24-hour clock
puts time.hour
# 59
puts time.min
# 59
puts time.sec
# 999999: microseconds
puts time.usec
# Time Zone name
puts time.zone

# To format time [sec,min,hour,day,month,year,wday,yday,isdst,zone]
Time.local(2021, 7, 20, 9, 10)

=begin
For more:
https://www.tutorialspoint.com/ruby/ruby_date_time.htm
=end

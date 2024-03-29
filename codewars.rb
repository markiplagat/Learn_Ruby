# Write a function that takes in a string of one or more words,
# and returns the same string, but with all five or more letter words reversed
# (Just like the name of this Kata). Strings passed in will consist of
# only letters and spaces. Spaces will be included only when more than one word is present.

# Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
# spinWords( "This is a test") => returns "This is a test"
# spinWords( "This is another test" )=> returns "This is rehtona test"

string = 'I love and lovedddd yoooooou'
solution = ''

# Solution 1
string.split(' ').each { |word| solution += word.length > 4 ? word.reverse! + ' ' : word + ' ' }
# or Solution 2
string.split.map! { |s| s.length >= 5 ? s.reverse : s }.join(' ')
puts string
solution.strip!

puts solution.to_s

# Or
# Solution 3
def split_words(string)
  string.gsub(/\w{5,}/, &:reverse)
end

puts split_words('Love is not a language')

# Capitalize every word
word = 'How can i capitalize this sentence'

def capitalize_word(word)
  # puts word.split.map { |w| w.capitalize}.join' '
  # or
  puts word.split.map(&:capitalize).join(' ')
end

capitalize_word(word)

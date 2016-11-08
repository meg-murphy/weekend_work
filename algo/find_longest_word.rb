# Complete the method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
# require 'pry'
def find_longest_word(sentence)
  words = sentence.split(/\W+/)
  @lengths = {}
  words.each do |word|
    @lengths[word] = word.length
  end

  max_value = @lengths.values.max
  @lengths.select{|k, v| v == max_value}.keys[0]

end



# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end

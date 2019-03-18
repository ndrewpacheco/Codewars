# Task
#   In this simple Kata your task is to create a function that turns a string into a Mexican Wave. 
#   You will be passed a string and you must return that string in an array where an uppercase letter 
#.  is a person standing up.
# Rules
#   1.  The input string will always be lower case but maybe empty.

# 2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

# input: string
# output: array,

# go through a loop with a counter. with each counter, take the index of the split word, and upcase,
# then put it into a new array 
# unless the char is whitespace. if so just raise the counter by one
# break when counter equals string size
WHITESPACE = " "

def wave(str)
  # Code here
  return [] if str.empty?
  split_str = str.chars
  counter = 0
  result = []

  loop do 
    if split_str[counter] == WHITESPACE
      # do nothing
    else
      split_str[counter].upcase!
      
      result << split_str.join
      split_str[counter].downcase!
    end
    counter += 1
    break if counter == str.size
  end
  result
end


wave("hello")

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# Test.assert_equals(wave("codewars"), result, "Should return: '#{result}'")

p wave("") == []
# Test.assert_equals(wave(""), result, "Should return: '#{result}'")

p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# Test.assert_equals(wave("two words"), result, "Should return: '#{result}'")

p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
# Test.assert_equals(wave(" gap "), result, "Should return: '#{result}'")
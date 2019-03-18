# Write a function, persistence, that takes in a positive parameter num
# and returns its multiplicative persistence,
# which is the number of times you must multiply the digits in num until you reach a single digit.

# For example:

#  persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
#                  # and 4 has only one digit

#  persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
#                   # 1*2*6=12, and finally 1*2=2

#  persistence(4) # returns 0, because 4 is already a one-digit number



# convert num into an array of digits
  # turn num into string, chars, map each char back to an int
  # times all the numbers with reduce method.

# repeat process untill product is a single digit ie. product < 10

# have a counter that counts the amount of repeats that we do


def persistence(num)
  product = num

  counter = 0


  loop do
    break if product < 10
    int_array = product.to_s.chars.map {|int| int.to_i}
    product = int_array.reduce(:*)
    counter += 1
  end

  counter
end

p persistence(39)
p persistence(999)
p persistence(4)
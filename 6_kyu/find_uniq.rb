# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
# It’s guaranteed that array contains more than 3 numbers.

# The tests contain some very huge arrays, so think about performance.

# This is the first kata in series: 

# input: array
# output: integer

# uniq method, compare arr vs arr.uniq

# iterate through the array, find the number whose count is 1
    # select method


# performance wise, create a hash, while iterating through the array. make the keys the element, and the value the count, then find the count which is equal to one

# # if statment to make hash:
# if num_hash.has_key?(element)
#   num_hash[element] += 1
# else
#   num_hash[element] = 1
# end

def find_uniq(arr)
  
  num_hash = {}
  
  arr.each do |element|
    
    
    if num_hash.has_key?(element)
      num_hash[element] += 1
    else
      num_hash[element] = 1
    end
    
  end
  
  num_hash.key(1)
  
end

p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
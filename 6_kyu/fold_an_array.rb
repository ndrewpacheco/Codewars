
# #Fold an array

# In this kata you have to write a method that folds a given array of integers by the middle x-times.

# An example says more than thousand words:

# Fold 1-times:
# [1,2,3,4,5] -> [6,6,3]

# A little visualization (NOT for the algorithm but for the idea of folding):

#  Step 1         Step 2        Step 3       Step 4       Step5
#                      5/           5|         5\          
#                     4/            4|          4\      
# 1 2 3 4 5      1 2 3/         1 2 3|       1 2 3\       6 6 3
# ----*----      ----*          ----*        ----*        ----*


# Fold 2-times:
# [1,2,3,4,5] -> [9,6]
# As you see, if the count of numbers is odd, the middle number will stay. Otherwise the fold-point is between the middle-numbers, so all numbers would be added in a way.

# The array will always contain numbers and will never be null. The parameter runs will always be a positive integer greater than 0 and says how many runs of folding your method has to do.

# If an array with one element is folded, it stays as the same array.

# The input array should not be modified!


# find out if array is odd or even
#    this will determine how to fold the array

# even: 
#  split the array into two
  # add each number according index


#   how to split array into two:
    #midpoint = arr.size / 2
    # arr1 = arr[0..(midpoint - 1)]
    # arr2 = arr[midpoint..-1]
    
    # counter
    
def fold(arr, x)
  fold_arr = arr.clone
  x.times do
    midpoint = fold_arr.size / 2
    
    if fold_arr.size.even?

      arr1 = fold_arr[0..(midpoint - 1)]
      arr2 = fold_arr[midpoint..-1]

      counter = 0
      fold_arr = arr1.map do |num|
        counter -= 1
        num + arr2[counter]
      end
    else
      
      arr1 = fold_arr[0..(midpoint -1)]
      arr2 = fold_arr[(midpoint + 1)..-1]
      corner = fold_arr[midpoint]
     
      counter = 0
      fold_arr = arr1.map do |num|
        
        counter -= 1
        num + arr2[counter]
      end
      fold_arr << corner
    end
  end
  fold_arr
end


 p fold([1,2,3,4,5], 1) == [6,6,3] 
 p fold([1,2,3,4,5], 2) == [9,6]

p fold([1,2,3,4,5,6], 1) == [7,7,7]
p fold([1,2,3,4,5,6], 2) == [14,7]

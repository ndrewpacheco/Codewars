# A rectangle can be split up into a grid of 1x1 squares, 
# the amount of which being equal to the product of the two dimensions of the rectangle.
# Depending on the size of the rectangle, 
# that grid of 1x1 squares can also be split up into larger squares, 

# for example a 3x2 rectangle has a total of 8 squares, as there are 6 distinct 1x1 squares,
# and two possible 2x2 squares. A 4x3 rectangle contains 20 squares.

# Your task is to write a function `findSquares` that returns the total number of squares for any given rectangle, 
# the dimensions of which being given as two integers
# with the first always being equal to or greater than the second.

# input: 2 ints
# output: 1 int

# rules: no square can a side longer than any of the input ints. 

# brainstorm:
# Find a way to start with 1X1 sqaures, than follow by 2x2, etc untill we max out the times we can do that.


# for 3x2 with 1x1 squares: 1 goes into 3 three times, 1 goes into 2 two times. 
  # times those numbers together, we get 6


# for 3x2 with 2x2 squares, 2 goes into 3 twice, 2 goes into two once, 
# times those numbers together, we get 2

#(3x2)
# 1x1: 3 * 2 = 6
# 2x2: 2 * 1 = 2

# (4, 3)
# 1x1: 4 * 3 = 12
 # 2x2: 3 x 2 = 6
 # 3x3: 2 * 1 = 2


 #(11, 4)

 # 1x1: 11 * 4 = 44
 #2x2:  10 * 3 = 30
 # 3x3: 


# take length and width, times them together, add the sum to total count
# minus one from both variables, repeat until either variable is equal to one
# output total sum



def find_squares(x,y)
  total = 0

  loop do 
    total += x * y

    break if x == 1 || y == 1
    x -= 1
    y -= 1
  end
  total
end


p find_squares(3, 2) == 8
p find_squares(4, 3) == 20
p find_squares(11, 4) == 100
  
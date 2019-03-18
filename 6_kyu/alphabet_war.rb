# Introduction
# There is a war and nobody knows - the alphabet war!
# There are two groups of hostile letters. 
#The tension between left side letters and right side letters was too high and the war began. 
#The letters called airstrike to help them in war - dashes and dots are spreaded everywhere on the battlefield.

# Task
# Write a function that accepts fight string consists of only small letters and 
# * which means a bomb drop place. Return who wins the fight after bombs are exploded. 
# When the left side wins return Left side wins!, when the right side wins return Right side wins!, 
#in other case return Let's fight again!.

# The left side letters and their power:

#  w - 4
#  p - 3 
#  b - 2
#  s - 1
# The right side letters and their power:

#  m - 4
#  q - 3 
#  d - 2
#  z - 1
# The other letters don't have power and are only victims.
# The * bombs kills the adjacent letters ( i.e. aa*aa => a___a, **aa** => ______ );

# Example
# AlphabetWar("s*zz");           //=> Right side wins!
# AlphabetWar("*zd*qm*wp*bs*"); //=> Let's fight again!
# AlphabetWar("zzzz*s*");       //=> Right side wins!
# AlphabetWar("www*www****z");  //=> Left side wins!


# input: string
# output: string

# * are bombs, and kill adjacent letters
# whatever letters are left, count the proper power points for each side
# output the winner


# how to make bombs kill adjacent letters
  # go through each character, if it is equal to bomb, make the letters next to it underscores


# two hashes to keep the power scores

LEFT_SIDE = {
  "w" => 4,
  "p" => 3, 
  "b" => 2,
  "s" => 1
}

RIGHT_SIDE = {
  "m" => 4,
  "q" => 3, 
  "d" => 2,
  "z" => 1
}


BOMB = "*"
KILL = "_"

def AlphabetWar(str)
  left_side_score = 0
  right_side_score = 0
  post_war = str.chars

  post_war.each_with_index do |char, idx|

    if char == BOMB
      post_war[idx - 1] = KILL unless idx == 0
      post_war[idx + 1] = KILL 
    end
  end.join

  post_war.each do |char|
    left_side_score += LEFT_SIDE[char] if LEFT_SIDE.keys.any?(char)
    right_side_score += RIGHT_SIDE[char] if RIGHT_SIDE.keys.any?(char)
  end

  if right_side_score > left_side_score
    "Right Side Wins!"
  elsif left_side_score > right_side_score
    "Left Side Wins!"
  else
    "Let's Fight Again!"
  end
   
end


# Example
p AlphabetWar("s*zz");           #//=> Right side wins!
p AlphabetWar("*zd*qm*wp*bs*"); #//=> Let's fight again!
p AlphabetWar("zzzz*s*");       #//=> Right side wins!
p AlphabetWar("www*www****z");  #//=> Left side wins!




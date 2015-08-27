# 023_game_electrons_around_the_cores.rb
# http://www.codewars.com/kata/game-electrons-around-the-cores
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Have you heard of the game "electrons around the cores"? I'm not allowed to
# give you the complete rules of the game, just so much:

# - game is played with 4-6 dice, resulting in array of 4-6 number of 1-6
# - name of the game is important
# - for a correct solution, return the correct number five times in a row

def electrons_around_the_cores(dice)
  dice.count(5) * 4 + dice.count(3) * 2
end

p electrons_around_the_cores([6, 6, 4, 4, 1, 3])  # 2
p electrons_around_the_cores([1, 1, 2, 5])        # 4
p electrons_around_the_cores([2, 2, 3, 3])        # 4
p electrons_around_the_cores([4, 2, 6, 3, 3])     # 4
p electrons_around_the_cores([1, 2, 3, 4, 5])     # 6
p electrons_around_the_cores([3, 1, 2, 5, 2])     # 6
p electrons_around_the_cores([5, 3, 6, 1, 4])     # 6
p electrons_around_the_cores([5, 5, 6, 6, 1, 3])  # 10
p electrons_around_the_cores([3, 5, 3, 5, 4, 2])  # 12

# tests

# Test.assert_equals(electrons_around_the_cores([6, 6, 4, 4, 1, 3]), 2)
# Test.assert_equals(electrons_around_the_cores([1, 1, 2, 5]), 4)
# Test.assert_equals(electrons_around_the_cores([2, 2, 3, 3]), 4)
# Test.assert_equals(electrons_around_the_cores([4, 2, 6, 3, 3]), 4)
# Test.assert_equals(electrons_around_the_cores([1, 2, 3, 4, 5]), 6)
# Test.assert_equals(electrons_around_the_cores([3, 1, 2, 5, 2]), 6)
# Test.assert_equals(electrons_around_the_cores([5, 3, 6, 1, 4]), 6)
# Test.assert_equals(electrons_around_the_cores([5, 5, 6, 6, 1, 3]), 10)
# Test.assert_equals(electrons_around_the_cores([3, 5, 3, 5, 4, 2]), 12)

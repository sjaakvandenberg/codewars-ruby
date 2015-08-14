# 043_feynmans_square_question.rb
# http://www.codewars.com/kata/feynmans-square-question
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Feynman's squares

# Richard Phillips Feynman was a well-known American physicist and a
# recipient of the Nobel Prize in Physics. He worked in theoretical physics
# and pioneered the field of quantum computing.

# Recently, an old farmer found some papers and notes that are believed to
# have belonged to Feynman. Among notes about mesons and electromagnetism,
# there was a napkin where he wrote a simple puzzle: "how many different
# squares are there in a grid of NxN squares?".

# For example, when N=2, the answer is 5: the 2x2 square itself, plus the
# four 1x1 squares in its corners:

# N = 2
# 1           2           3           4           5
# |----|----| |----|----| |----|----| |----|----| |----|----|
# |####|    | |    |####| |    |    | |    |    | |#########|
# |----+----| |----+----| |----+----| |----+----| |#########|
# |    |    | |    |    | |####|    | |    |####| |#########|
# |----|----| |----|----| |----|----| |----|----| |----|----|
# 4 x singles + 1 x whole

# N = 3                N = 4              N = 5
# [][][]  9 x singles  [][][][] 16 x 1x1  [][][][][] 25 x 1x1
# [][][]  1 x whole    [][][][]  9 x 2x2  [][][][][] 16 x 2x2
# [][][]  4 x small    [][][][]  4 x 3x3  [][][][][]  9 x 3x3
#        14 --------   [][][][]  1 x 4x4  [][][][][]  4 x 4x4
#                               30 -----  [][][][][]  1 x 5x5
#                                                    55 -----

# Task
# ----
# You have to write a function that solves Feynman's question in general.
# The input to your function will always be a positive integer.

def count_squares(n)
  (1..n).map { |e| e**2 }.reduce(:+)
end

# alternative

def count_squares2(n)
  (1..n).inject { |a, e| a + e * e }
end

p count_squares(1)  # 1
p count_squares(2)  # 5
p count_squares(3)  # 14
p count_squares(15) # 1240

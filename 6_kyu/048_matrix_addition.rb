# 048_matrix_addition.rb
# http://www.codewars.com/kata/matrix-addition
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Write a function that accepts two square matrices (nxn two dimensional arrays),
# and return the sum of the two. Both matrices being passed into the function will
# be of size nxn (square), containing only integers.

# How to sum two matrices:
# Take each cell [n][m] from the first matrix, and add it with the [n][m] cell from
# the second matrix. This will be cell [n][m] in the solution matrix.

# Visualization
# -------------
# |1 2 3|   |2 2 1|   |3 4 4|
# |3 2 1| + |3 2 3| = |6 4 4|
# |1 1 1|   |1 1 3|   |2 2 4|

def matrix_addition(*m)
  arr = []
  m[0].each_index do |r| # rows
    row = []
    m[0][r].each_index do |c| # columns
      row << m.inject(0) { |a, e| a + e[r][c] } # add sum to new row
    end
    arr << row # add row to new array
  end
  arr # return array
end

x = [[1, 2, 3], [3, 2, 1], [1, 1, 1]]
y = [[2, 2, 1], [3, 2, 3], [1, 1, 3]]

# alternative using matrix

require 'matrix'
def matrix_addition2(a, b)
  (Matrix[*a] + Matrix[*b]).to_a
end

# alternative using transpose

def matrix_addition3(a, b)
  a.zip(b).map { |r| r.transpose.map { |c| c.reduce(:+) } }
end

p matrix_addition(x, y) # [[3, 4, 4], [6, 4, 4], [2, 2, 4]]

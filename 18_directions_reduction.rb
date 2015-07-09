# 18_directions_reduction.rb
# http://www.codewars.com/kata/directions-reduction
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Once upon a time, on a way through the old wild west... A man was given
# directions to go from one point to another. The directions were
# "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are
# opposite, "WEST" and "EAST" too. Going one direction and coming back the
# opposite direction is a needless effort. Since this is the wild west,
# with dreadfull weather and not much water, it's important to save yourself
# some energy, otherwise you might die of thirst!

# How I crossed the desert the smart way:

# The directions given to the man are, for example, the following:
# plan = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]

# A better plan is simply:
# plan = ["WEST"]

# dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) => ["WEST"]
# dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH"]) => []

#            N (+Y)
#            |
#  (-X) W -- o -- E (+X)
#            |
#            S (-Y)

def simplify_directions(arr)
  pair = { 'NORTH' => 'SOUTH',
           'SOUTH' => 'NORTH',
           'EAST' => 'WEST',
           'WEST' => 'EAST' }
  i = 0
  loop do
    if i >= arr.size
      return arr
    elsif arr[i] == pair[arr[i + 1]]
      arr.delete_at(i)
      arr.delete_at(i)
      i = 0
    else
      i += 1
    end
  end
end

# earlier experiment

def simplify_directions2(arr)
  h = Hash.new(0).tap { |e| arr.each { |n| e[n] += 1 } }
  y = h['NORTH'] - h['SOUTH']
  x = h['EAST'] - h['WEST']
  puts "x: #{x}, y: #{y}"
  dir = []
  y > 0 ? (dir << ['NORTH'] * y).flatten! : dir
  y < 0 ? (dir << ['SOUTH'] * y.abs).flatten! : dir
  x > 0 ? (dir << ['EAST'] * x).flatten! : dir
  x < 0 ? (dir << ['WEST'] * x.abs).flatten! : dir
end

# alternative

def dirReduc(arr)
  a = arr.join(' ')
  b = a.strip.gsub(/north south|south north|east west|west east/i, '')
  b == a ? b.split(' ') : dirReduc(b.split(' '))
end

# tests
p simplify_directions(%w(SOUTH WEST NORTH EAST))
p simplify_directions(%w(EAST))
p simplify_directions(%w(NORTH))
p simplify_directions(%w(SOUTH))
p simplify_directions(%w(WEST))

p simplify_directions(%w(EAST WEST NORTH))
p simplify_directions(%w(NORTH NORTH))
p simplify_directions(%w(NORTH NORTH SOUTH NORTH EAST EAST WEST))
p simplify_directions(%w(EAST NORTH))
p simplify_directions(%w(NORTH EAST))

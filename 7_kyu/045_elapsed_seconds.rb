# 045_elapsed_seconds.rb
# http://www.codewars.com/kata/elapsed-seconds
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Complete the function so that it returns the number of seconds that have
# been elapsed between the start and end times given.

# Tips:
# - the start/end times are given as Time instances
# - the start time will always be before the end time

def elapsed_seconds(start_time, end_time)
  (end_time - start_time).to_i
end

start_time = Time.new(1984, 1, 10)
end_time = Time.now

p elapsed_seconds(start_time, end_time)

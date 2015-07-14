# 04_gas_usage.rb
# http://www.codewars.com/kata/miles-per-gallon-to-kilometers-per-liter
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Create a converter that converts miles per gallon into kilometers per liter.

def converter(mpg)
  # this converts mpg (miles per gallon)
  # to kpl (kilometers per liter)
  km_per_mi = 1.609344
  l_per_gal = 4.54609188
  (mpg.to_f * km_per_mi / l_per_gal).round(2)
end

puts <<EOM
A Chevrolet Volt drives 100 miles per gallon, or #{convertor(100)} kilometers per liter. A Toyota Prius drives 50 miles per gallon, or #{convertor(50)} kilometers per liter. A Ford F150 drives 22 miles per gallon, or #{convertor(25)} kilometers per liter. A Caterpillar 797 drives 0.3 miles per gallon, or #{convertor(0.3)} kilometers per liter.
EOM

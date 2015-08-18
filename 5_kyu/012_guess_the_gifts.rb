# 012_guess_the_gifts.rb
# http://www.codewars.com/kata/guess-the-gifts
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# It's Christmas! You had to wait the whole year for this moment. You can
# already see all the presents under the Christmas tree. But you have to wait
# for the next morning in order to unwrap them. You really want to know,
# what's inside those boxes. But as a clever child, you can do your
# assumptions already.

# You know, you've been a good human child this year. So you may assume,
# that you'll only get things from your wl. You see those presents,
# you can lift them and you can shake them a bit. Now you can make you
# assumptions about what you'll get.

# Your Task

# You will be given a wl (array), containing all possible items. Each
# item is in the format: {name: "toy car", size: "medium", clatters: "a bit",
# weight: "medium"} (Ruby version has an analog hash structure, see example
# below)

# You also get a list of presents (array), you see under the christmas tree,
# which have the following format each: {size: "small", clatters: "no",
# weight: "light"}

# Your task is to create a list of all possible presents you might get.

# Rules

# Possible values for size: "small", "medium", "large"
# Possible values for clatters: "no", "a bit", "yes"
# Possible values for weight: "light", "medium", "heavy"

# The return value must be an array of the names of items from your wl,
# e.g. ["Toy Car", "Card Game"]

# Don't add any item more than once to the result
# The order of names in the returned array doesn't matter
# It's possible, that multiple items from your wish list have the same
# attribute values. If they match the attributes of one of the presents,
# add all of them.

wl = [
  { name: 'mini puzzle', size: 'small', clatters: 'yes', weight: 'light' },
  { name: 'toy car', size: 'medium', clatters: 'a bit', weight: 'medium' },
  { name: 'card game', size: 'small', clatters: 'no', weight: 'light' }
]

# array with hash-lists

presents = [
  { size: 'medium', clatters: 'a bit', weight: 'medium' },
  { size: 'small', clatters: 'yes', weight: 'light' }
]

def guess_gifts(wl, presents)
  guesses = []
  presents.each.with_index do |ph, pi|
    ph.each do
      wl.each.with_index do |wh, wi|
        wh.each do
          if wl[wi].values_at(:size) == presents[pi].values_at(:size) &&
             wl[wi].values_at(:weight) == presents[pi].values_at(:weight) &&
             wl[wi].values_at(:clatters) == presents[pi].values_at(:clatters)
            guesses += wl[wi].values_at(:name)
          end
        end
      end
    end
  end
  guesses.uniq
end

# alternative using any, all and map

def guess_gifts2(w, p)
  w.select { |w| p.any? { |e| e.all? { |k, v| w[k] == v } } }.map { |x| x[:name] }
end

# alternative using merge

def guess_gifts3(wishlist, presents)
  gifts = []
  presents.uniq.each do |p|
    wishlist.uniq.each do |w|
      gifts << w[:name] if w.merge(p) == w
    end
  end
  gifts
end

p guess_gifts2(wl, presents) # must return ['toy car', 'mini puzzle']

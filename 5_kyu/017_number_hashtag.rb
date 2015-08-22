# 017_number_hashtag.rb
# http://www.codewars.com/kata/number-hashtag
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# You start working for a fancy new startup hoping to revolutionize social
# networking! GASP! They had this great idea that users should be able to
# specify relevant keywords to their posts using an ingenious idea by prefixing
# those keywords with the pound sign (#). Your job is to extract those keywords
# so that they can be used later on for whatever purposes.

# Note:

# - Pound signs alone do not count. The string "#" would return an empty array
# - If a word is preceded by more than one hashtag, only the last hashtag
#   counts (e.g. "##alot" would return ["alot"])
# - Hashtags cannot be within the middle of a word (e.g. "in#line hashtag"
#   returns an empty array)
# - Hashtags must precede alphabetical characters (e.g. "#120398" or "#?"
#   are invalid)

#  Input : String of words, where some words may contain a hashtag.
# Output : Array of strings that were prefixed with the hashtag, but do not
#          contain the hashtag.

def get_hashtags(post)
  post.scan(/(?:\s|^)(?:#+(?!\d+(?:\s|$)))(\w+)(?=\s|$)/).flatten
end

# (?:\s|^)          Matches the preceding space or start of line
#                   without capturing
# #+                Matches 1+ hashes without capturing
# (?!\d+(?:\s|$)))  Negative lookahead to avoid all numeric characters
#                   between # and space (or end of line)
# (\w+)             Matches and captures all word characters
# (?=\s|$)          Positive lookahead to ensure following space or
#                   end of line. This is required to ensure it matches
#                   adjacent valid hash tags.

# alternatives

def get_hashtags2(post)
  post.split.grep(/^#+(\w+)$/) { $1 }
end

def get_hashtags3(post)
  post.scan(/\B\#[\#]*([a-z]+)(?=\s|$)/im).flatten
end

p get_hashtags('#')                                     # []
p get_hashtags('##alot')                                # ['alot']
p get_hashtags('in#line hashtag')                       # []
p get_hashtags('#120398')                               # []
p get_hashtags('#?')                                    # []
p get_hashtags('bear banana fire lake #boat duck #dog') # ['boat', 'dog']
p get_hashtags('####hash')                              # ['hash']
p get_hashtags('yes no# ma#ybe oka###y')                # []

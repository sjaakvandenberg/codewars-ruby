# 042_who_won_the_election.rb
# http://www.codewars.com/kata/who-won-the-election
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# In democracy we have a lot of elections. For example, we have to vote for
# a class representative in school, for a new parliament or a new
# government.

# Usually, we vote for a candidate, i.e. a set of eligible candidates is
# given. This is done by casting a ballot into a ballot-box. After that, it
# must be counted how many ballots (= votes) a candidate got.

# A candidate will win this election if he has the absolute majority.

# Your Task
# ---------
# Return the name of the winner. If there is no winner, return null (in
# Java and JavaScript), None (in Python) or nil (in Ruby).

# Task Description
# ----------------
# There are no given candidates. An elector can vote for anyone. Each
# ballot contains only one name and represents one vote for this name. A
# name is an arbitrary string, e.g. "A", "B", or "XJDHD".

# There are no spoiled ballots.

# The ballot-box is represented by an unsorted list of names. Each entry in
# the list corresponds to one vote for this name. You do not know the names
# in advance (because there are no candidates).

# A name wins the election if it gets more than n/2 votes (n = number of
# all votes, i.e. n is equal to the size of the given list).

# Examples
# --------
# 3 votes for "A", 2 votes for "B" -> "A" wins the election
# getWinner(["A", "A", "A", "B", "B"]) == "A" #true
# 2 votes for "A", 2 votes for "B" -> No winner
# getWinner(["A", "A", "B", "B"]) == nil #true
# 1 vote for each name -> No winner
# getWinner(["A", "B", "C", "D"]) == nil #true
# 3 votes for "A", 2 votes for "B", 1 vote for "C"
# -> No winner ("A" does not have more than n/2 = 3 votes)
# getWinner(["A", "A", "A", "B", "B", "C"]) == nil #true

# Note
# ----
# Please keep in mind the list of votes can be large (n <= 1,200,000). The
# given list is immutable, i.e. you cannot modify the list (otherwise this
# could lead to vote rigging).

# Notes
# -----
# - a candidate wins if he has more than half of the votes
# - return the name of the winner, or nil

def get_winner(ballots)
  ballots.uniq.map do |candidate|
    return candidate if ballots.count(candidate) > ballots.size / 2
  end
  nil
end

# alternative

def get_winner2(ballots)
  ballots.uniq.detect { |candidate| ballots.count(candidate) > ballots.length / 2 }
end

p get_winner(%w(A A A B B))   # A
p get_winner(%w(A A B B))     # nil
p get_winner(%w(A B C D))     # nil
p get_winner(%w(A A A B B C)) # nil

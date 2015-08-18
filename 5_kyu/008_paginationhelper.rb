# 008_paginationhelper.rb
# http://www.codewars.com/kata/paginationhelper
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# For this exercise you will be strengthening your page-fu mastery. You will
# complete the PaginationHelper class, which is a utility class helpful for
# querying paging information related to an array.

# The class is designed to take in an array of values and an integer
# indicating how many items will be allowed per each page. The types of
# values contained within the collection/array are not relevant.

class PaginationHelper
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.length
  end

  # returns the number of pages
  def page_count
    @collection.length.fdiv(@items_per_page).ceil
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    return -1 if @collection.each_slice(@items_per_page).to_a[page_index].nil?
    @collection.each_slice(@items_per_page).to_a[page_index].length
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 if (item_count - 1) < item_index || item_index < 0
    item_index.fdiv(@items_per_page).ceil - 1
  end
end

helper = PaginationHelper.new(%w(a b c d e f), 4)
p helper.page_count         # 2
p helper.item_count         # 6
p helper.page_item_count(0) # 4
p helper.page_item_count(1) # 2 (last page)
p helper.page_item_count(2) # -1 (page is invalid)

# page_index takes an item index and returns the page that it belongs on
p helper.page_index(5)      # 1 (zero based index)
p helper.page_index(2)      # 0
p helper.page_index(20)     # -1
p helper.page_index(-10)    # -1 (negative indexes are invalid)

# tests

# helper = PaginationHelper.new(%w(a b c d e f), 4)
# Test.assert_equals(helper.page_count, 2)
# Test.assert_equals(helper.item_count, 6)
# Test.assert_equals(helper.page_item_count(0), 4)
# Test.assert_equals(helper.page_item_count(1), 2)
# Test.assert_equals(helper.page_item_count(2), -1)
# Test.assert_equals(helper.page_index(5), 1)
# Test.assert_equals(helper.page_index(2), 0)
# Test.assert_equals(helper.page_index(20), -1)
# Test.assert_equals(helper.page_index(-10), -1)

# helper = PaginationHelper.new([true, 0, -24, 15.75, 'lorem', 'ipsum'], 4)
# Test.assert_equals(helper.page_count, 2)
# Test.assert_equals(helper.item_count, 6)
# Test.assert_equals(helper.page_item_count(0), 4)
# Test.assert_equals(helper.page_item_count(1), 2)
# Test.assert_equals(helper.page_item_count(2), -1)
# Test.assert_equals(helper.page_index(5), 1)
# Test.assert_equals(helper.page_index(2), 0)
# Test.assert_equals(helper.page_index(20), -1)
# Test.assert_equals(helper.page_index(-10), -1)

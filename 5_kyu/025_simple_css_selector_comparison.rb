# 025_simple_css_selector_comparison.rb
# http://www.codewars.com/kata/simple-css-selector-comparison
#
# Sjaak van den Berg
# http://www.codewars.com/users/sjaakvandenberg
# @svdb

# Cascading Style Sheets (CSS) is a style sheet language used for describing
# the look and formatting of a document written in a markup language. A style
# sheet consists of a list of rules. Each rule or rule-set consists of one or
# more selectors, and a declaration block. Selector describes which element it
# matches.

# Sometimes element is matched to multiple selectors. In this case, element
# inherits multiple styles, from each rule it matches. Rules can override each
# other. To solve this problem, each selector has it's own 'specificity' -
# e.g. weight. The selector with greater specificity overrides the other
# selector.

# Your task is to calculate the weights of two selectors and determine which
# of them will beat the other one.

# compare('body p', 'div')    # 'body p'
# compare '.class', '#id'     # '#id'
# compare 'div.big', '.small' # 'div.big'
# compare '.big', '.small'    # '.small' (because it appears later)

# For simplicity, all selectors in test cases are CSS1-compatible, test cases
# don't include pseudoclasses, pseudoelements, attribute selectors, etc.
# Below is an explanation on how to weight two selectors.

# The simplest selector type is tagname selector. It writes as a simple
# alphanumeric identifier: eg body, div, h1, etc. It has the least weight.
# If selectors have multiple elements - the selector with more elements win.
# For example, body p beats div, because it refers to 2 (nested) elements
# rather than 1.

# Another simple selector is .class selector. It begins with dot and refer to
# element with specific class attribute. Class selectors can also be applied
# to tagname selectors, so div.red refer to <div class='red'> element. They
# can be grouped, for example, .red.striped. Class selector beats tagname
# selector.

# The most weighted selector type in stylesheet is #id selector. It begins
# with hash sign and refer to element with specific id attribute. It can also
# be standalone, or applied to an element. Id selector beats both selector
# types.

# And the least weighted selector is *, which has no specificity and can be
# beat by any other selector.

# Selectors can be combined, for example, body #menu ul li.active refers to li
# element with class='active', placed inside ul element, placed inside element
# width id='menu', placed inside body.

# Specificity calculation is simple.

# 1. Selector with more #id selectors wins
# 2. If both are same, the winner is selector with more .class selectors
# 3. If both are same, selector with more elements wins
# 4. If all of above values are same, the winner is selector that appear last
# For example, let's represent the number of #id , .class, tagname selectors
# as array (in order from worst to best):

# notes

# - tag selectors have least weight           body, div, h1
# - more tag selectors beat fewer selectors   body p beats div
# - class selectors beat tag selectors        div.red, .red.striped
# - most weighted is the id selector          #menu
# - least weighted selector is *
# - selectors can be combined                 #menu ul li.active

# Selector                      Specificity (#id,.class,tagname)
# *                             0, 0, 0
# span                          0, 0, 1
# body p                        0, 0, 2
# .green                        0, 1, 0
# apple.yellow                  0, 1, 1
# div.menu li                   0, 1, 2
# .red .orange                  0, 2, 0
# div.big .first                0, 2, 1
# #john                         1, 0, 0
# div#john                      1, 0, 1
# body #john span               1, 0, 2
# menu .item #checkout.active   1, 2, 1
# #foo div#bar.red .none        2, 2, 1

def compare(a, b)
  # ids, classes, tags
  a_ = [a.scan(/\#\w+/), a.scan(/\.\w+/), a.scan(/(?<=^|\s)\b(\w+)\b/)]
  b_ = [b.scan(/\#\w+/), b.scan(/\.\w+/), b.scan(/(?<=^|\s)\b(\w+)\b/)]
  return a if a_[0].count > b_[0].count
  return a if a_[0].count == b_[0].count && a_[1].count > b_[1].count
  return a if a_[0].count == b_[0].count && a_[1].count == b_[1].count && a_[2].count > b_[2].count
  return a if a_[0].count == b_[0].count && a_[1].count == b_[1].count && a_[2].count == b_[2].count && a_.count > b_.count
  b
end

# alternatives

def compare2(a, b)
  score(a) > score(b) ? a : b
end

def score2(a)
  a.scan('#').size * 10_000 + a.scan('.').size * 10 + a.split.count { |s| s[0] =~ /[^#\.\*]/ }
end

def compare3(a, b)
  if (score(a) <=> score(b)) > 0
    return a
  else
    return b
  end
end

def score3(item)
  res = [0, 0, 0]
  return res if item == '*'
  res[2] = item.scan(/[^.#]\w* ?/).count
  res[1] = item.count('.')
  res[0] = item.count('#')
  res
end

def compare4(a, b)
  score = lambda do |selector|
    selector.count('#') * 1_000_000 + selector.count('.') * 1000 + selector.split.count { |x| x.match(/^[a-zA-Z]/) }
  end
  [b, a].max_by(&score)
end

p compare('#id#id2', '#id#id2#id3')             # '#id#id2#id3'      - rule 1
p compare('#id', '.class')                      # '#id'              - rule 1
p compare('#id', '.class#id')                   # '.class#id'        - rule 2
p compare('body p', 'div')                      # 'body p'
p compare('body', 'body .class')                # 'body .class'
p compare('body .class', 'body .class #id')     # 'body .class #id'
p compare('body .class', 'body .red')           # 'body .red'        - rule 4

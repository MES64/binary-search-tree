# frozen_string_literal: true

require_relative 'lib/tree'

numbers = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
words = %w[hello goodbye world Alfie alfie boo good gooey alfie
           brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr]

puts Tree.new
puts Tree.new([1])
tree = Tree.new(numbers)
puts tree
word_tree = Tree.new(words)
puts word_tree

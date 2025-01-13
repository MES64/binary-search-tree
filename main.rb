# frozen_string_literal: true

require_relative 'lib/tree'

numbers = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
words = %w[hello goodbye world Alfie alfie boo good gooey alfie
           brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr]

word_tree = Tree.new(words)
puts word_tree
puts Tree.new
puts Tree.new([1])
tree = Tree.new(numbers)
puts tree

tree.insert(1000)
puts tree
puts Tree.new([1]).insert(2).insert(0).insert(1).insert(2).insert(2000).insert(4000)
puts Tree.new.insert(1).insert(2).insert(3)

tree = Tree.new(numbers)
puts tree
puts tree.find(8)
puts tree.find(6)
puts Tree.new([1]).find(1)
puts Tree.new([1]).find(2)
puts Tree.new.find(1)

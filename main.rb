# frozen_string_literal: true

require_relative 'lib/tree'

puts Tree.new
puts Tree.new([1])
tree = Tree.new([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
puts tree

# frozen_string_literal: true

require_relative 'lib/tree'

numbers = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
words = %w[hello goodbye world Alfie alfie boo good gooey alfie
           brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr]

# puts 'Init:'
# word_tree = Tree.new(words)
# puts word_tree
# puts Tree.new
# puts Tree.new([1])
# tree = Tree.new(numbers)
# puts tree

# puts 'Insert:'
# tree.insert(1000)
# puts tree
# puts Tree.new([1]).insert(2).insert(0).insert(1).insert(2).insert(2000).insert(4000)
# puts Tree.new.insert(1).insert(2).insert(3)
# word_tree.insert('bumble').insert('bee')
# puts word_tree

# puts 'Find:'
# puts tree
# puts tree.find(8)
# puts tree.find(6)
# puts Tree.new([1]).find(1)
# puts Tree.new([1]).find(2)
# puts Tree.new.find(1)
# puts word_tree.find('boo')
# puts word_tree.find('')

def test(tree, data)
  puts tree
  puts tree.find(data)
end

tree = Tree.new(numbers)

puts 'Find:'
puts 'Empty Tree:'
test(Tree.new, 8)

puts '1-node tree: at root node:'
test(Tree.new([8]), 8)

puts '1-node tree: nil node:'
test(Tree.new([8]), 6)

puts 'n-node tree: at root node:'
test(tree, 8)

puts 'n-node tree: non-root node in tree:'
test(tree, 5)

puts 'n-node tree: nil node:'
test(tree, 2)

# TODO: Test insert, then do delete

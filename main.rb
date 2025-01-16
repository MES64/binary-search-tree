# frozen_string_literal: true

require_relative 'lib/tree'
require_relative 'lib/parent'

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

def test_parent(tree, search_node, insert_node)
  puts tree
  parent = Parent.new(tree.root, search_node)
  puts parent.parent
  puts parent.direction
  puts parent.add
  puts parent.child
  parent.child = insert_node
  puts parent.child
  puts tree
end

puts 'Parent:'
node1 = Node.new(8)
node2 = Node.new(324)
node3 = Node.new(88)

puts 'Empty Tree:'
test_parent(Tree.new, node1, node3)

puts '1-node tree: parent of root node:'
test_parent(Tree.new([8]), node1, node3)

puts '1-node tree: nil child:'
test_parent(Tree.new([8]), node2, node3)

puts 'n-node tree: parent of root node:'
test_parent(Tree.new(numbers), node1, node3)

puts 'n-node tree: parent of non-root node in tree:'
test_parent(Tree.new(numbers), node2, node3)

puts 'n-node tree: nil child:'
test_parent(Tree.new(numbers), node3, node1)

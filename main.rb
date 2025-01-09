# frozen_string_literal: true

require_relative 'lib/node'

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(-1)

p node1.left
p node1.right
p node1.data
p node2.data
p node3.data

node1.left = node2
node1.right = node3
node1.data = 100

p node1.data
p node1.left.data
p node1.right.data

puts 'Compare'
p node2 < node3
p node3 < node2
p node1.between?(node2, node3)
p node2.between?(node3, node1)
sorted_array = [node1, node2, node3].sort
sorted_array.each { |node| p node.data }

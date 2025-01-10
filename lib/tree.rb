# frozen_string_literal: true

require_relative 'node'

# Tree class
class Tree
  def initialize(data_array = [])
    @root = build_tree(data_array.uniq.sort)
  end

  def to_s
    stringify
  end

  private

  def build_tree(sorted_data)
    return nil if sorted_data.empty?

    mid_index = (sorted_data.length - 1) / 2
    node = Node.new(sorted_data[mid_index])
    node.left = build_tree(sorted_data[...mid_index])
    node.right = build_tree(sorted_data[(mid_index + 1)..])
    node
  end

  def stringify(node: @root, prefix: '', is_left: true)
    return '' if node.nil?

    tree_string = stringify(node: node.right, prefix: "#{prefix}#{is_left ? '│   ' : '    '}", is_left: false)
    tree_string += "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}\n"
    tree_string + stringify(node: node.left, prefix: "#{prefix}#{is_left ? '    ' : '│   '}", is_left: true)
  end
end

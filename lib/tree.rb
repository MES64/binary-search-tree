# frozen_string_literal: true

require_relative 'node'
require_relative 'parent'

# Tree class
class Tree
  private

  attr_writer :root

  public

  attr_reader :root

  def initialize(data_array = [])
    @root = build_tree(data_array.uniq.sort)
  end

  def insert(data)
    node = Node.new(data)
    self.root = node if root.nil?
    return self if root == node

    parent = Parent.new(root, node)
    parent.child = node if parent.child.nil?
    self
  end

  def find(data)
    node = Node.new(data)
    return nil if root.nil?
    return root if root == node

    parent = Parent.new(root, node)
    parent.child
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

  def stringify(node: root, prefix: '', is_left: true)
    return '' if node.nil?

    right_subtree = stringify(node: node.right, prefix: "#{prefix}#{is_left ? '│   ' : '    '}", is_left: false)
    current_node = "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}\n"
    left_subtree = stringify(node: node.left, prefix: "#{prefix}#{is_left ? '    ' : '│   '}", is_left: true)
    "#{right_subtree}#{current_node}#{left_subtree}"
  end
end

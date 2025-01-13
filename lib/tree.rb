# frozen_string_literal: true

require_relative 'node'

# Tree class
class Tree
  def initialize(data_array = [])
    @root = build_tree(data_array.uniq.sort)
  end

  def insert(data)
    node = Node.new(data)
    @root = node if @root.nil?
    found_node = locate_nearest(node)
    return self if found_node == node

    add = node < found_node ? :left= : :right=
    found_node.send add, node
    self
  end

  def find(data)
    node = Node.new(data)
    found_node = locate_nearest(node)
    return found_node if found_node == node

    nil
  end

  def to_s
    stringify
  end

  private

  def locate_nearest(node)
    current = nil
    next_node = @root
    until current == node || next_node.nil?
      current = next_node
      next_node = node < current ? current.left : current.right
    end
    current
  end

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

    right_subtree = stringify(node: node.right, prefix: "#{prefix}#{is_left ? '│   ' : '    '}", is_left: false)
    current_node = "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}\n"
    left_subtree = stringify(node: node.left, prefix: "#{prefix}#{is_left ? '    ' : '│   '}", is_left: true)
    "#{right_subtree}#{current_node}#{left_subtree}"
  end
end

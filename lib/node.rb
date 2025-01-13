# frozen_string_literal: true

# Node class has methods for init, comparison, and to access left node, right node, and data
class Node
  include Comparable

  attr_accessor :left, :right, :data

  def initialize(data)
    @left = nil
    @right = nil
    @data = data
  end

  def <=>(other)
    data <=> other.data
  end

  def to_s
    "Node(#{@data})"
  end
end

# frozen_string_literal: true

# Node class
class Node
  attr_accessor :left, :right, :data

  def initialize(data)
    @left = nil
    @right = nil
    @data = data
  end
end

# frozen_string_literal: true

# Parent class has the ability to get and set its child node set by an initial search node
# If the search node exists in the tree then it is its parent node
# If the search node does not exist in the tree then it finds the parent of where it should be
# (as if inserting)
# There is no parent when it is an empty tree or the node of interest is at the root node.
# Every variable is set to nil if there is no parent. Also child() returns nil and setting the
# child does nothing. This case must be covered by guard clauses
class Parent
  private

  attr_writer :parent, :direction, :add

  public

  attr_reader :parent, :direction, :add

  def initialize(parent, node)
    @parent = parent
    @direction = nil
    @add = nil
    find_parent_of(node)
  end

  def child
    return parent.send direction unless direction.nil?

    parent
  end

  def child=(node)
    parent.send add, node unless add.nil?
  end

  private

  def find_parent_of(node)
    search_for(node) until found?(node)
    self.parent = nil if direction.nil?
  end

  def search_for(node)
    self.parent = child
    self.add = node < parent ? :left= : :right=
    self.direction = add[...-1]
  end

  def found?(node)
    child == node || child.nil?
  end
end

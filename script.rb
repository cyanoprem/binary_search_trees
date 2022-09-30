# compare nodes usind their data attribute 
module Comparable
  
end

class Node
  
  def initialize(data)
    @data = data
    @right_subtree
    @left_subtree
  end
end

class Tree
  attr_accessor :array
  def initialize(array)
    @array = array
    # @final_array = build_tree(@array)
  end

  def build_tree(array = @array)
    # Sort, remove duplicates, form Node objects and build the balanced binary tree
    # returns level-0 root node 
    p array
    sorted_array = merge_sort(array)
    p sorted_array
    sorted_unique_array = sorted_array.uniq
    p sorted_unique_array
  end

  # Method to visualize the binary search tree
  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end

  def insert
    
  end 

  def delete
    
  end

  def find
    
  end

  def merge_sort(array)
    sorted_array = []
    if array.length > 1
      left_array = array.take(array.length / 2)
      right_array = array.last(array.length - array.length / 2)
      left_array = merge_sort(left_array)
      right_array = merge_sort(right_array)
      sorted_array = merge(left_array, right_array, sorted_array)
    else
      sorted_array = array
    end
    sorted_array
  end
  
  # Merge 2 already sorted array
  
  def merge(left_array, right_array, array)
    if left_array.first.nil?
      array.concat right_array
    elsif right_array.first.nil?
      array.concat left_array
    elsif left_array.first < right_array.first
      array << left_array.shift
      merge(left_array, right_array, array)
    else
      array << right_array.shift
      merge(left_array, right_array, array)
    end
    array
  end

end

tree = Tree.new((Array.new(15) { rand(1..100) }))
tree.build_tree
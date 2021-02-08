require 'set'

class GraphNode

  attr_reader :value, :neighbors

  def initialize(value)
    @value = value
    @neighbors = []
  end

  def neighbors=(other_nodes)
    
    other_nodes.each do |node|
      unless @neighbors.include?(node)
        @neighbors << node
      end
    end

    return nil


  end

  def bfs(target_value)
    already_searched = Set.new
    arr = [self]
    until arr.empty?
      current_value = arr[0]
      arr.shift
    
      unless already_searched.include?(current_value)
        if current_value.value == target_value
          return current_value
        else
          already_searched << current_value
          current_value.neighbors.each do |nbr|
            arr << nbr
          end
        end
      end
    end
    nil
  end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

# a.neighbors.each { |n| p n.value }
# puts "--------"
# c.neighbors.each { |n| p n.value }
# puts "--------"
# e.neighbors.each { |n| p n.value }
# puts "--------"
# f.neighbors.each { |n| p n.value }

p a.bfs('f')
p a.bfs('b')
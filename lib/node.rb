class Node
  attr_reader :data,
              :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def add_next(node)
    @next_node.nil? ? @next_node = node : "next_node already assigned."
  end
end

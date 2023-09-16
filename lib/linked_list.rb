class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    node = Node.new(sound)
    self.head.nil? ? @head = node : find_tail(node)

  end

  def count
    count = 0
    return count if @head.nil?

    current_node = @head
    while current_node.next_node
      count += 1
    end
  end

  private
  # methods that will only be utilized internally

  def find_tail(node)
    current_node = @head

    until current_node.next_node.nil?
      current_node = current_node.next_node
    end

    current_node.add_next(node)
  end

end

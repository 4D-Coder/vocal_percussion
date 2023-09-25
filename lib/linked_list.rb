class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end


  def count
    @head.nil? ? count = 0 : count = 1
    current_node = @head
    count += 1 while current_node = current_node.next_node
    return count
  end

  def to_string
    return "List empty!" if head.nil?
    string = ""; current_node = head; i = self.count
    i.times { string.concat("#{current_node.data} "); current_node = current_node.next_node }
    return string.rstrip
  end

  def append(value)
    node = Node.new(value)
    self.head.nil? ? @head = node : find_tail.add_next(node)
  end

  def prepend(value)
    previous_head = head
    @head = Node.new(value)
    head.add_next(previous_head)
  end

  def insert(index, value)
    return prepend(value) if index == 0
    return append(value) if index > count - 1
    new_node = Node.new(value); current_node = head
    (index - 1).times { current_node = current_node.next_node }
    new_node.add_next(current_node.next_node)
    current_node.add_next(new_node)
  end

  private

  def find_tail
    current_node = @head

    until current_node.next_node.nil?
      current_node = current_node.next_node
    end

    current_node
  end

end

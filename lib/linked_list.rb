class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    node = Node.new(sound)
    self.head.nil? ? @head = node : find_tail.add_next(node)
  end

  def count
    @head.nil? ? count = 0 : count = 1
    current_node = @head
    count += 1 while current_node = current_node.next_node
    return count
  end

  def to_string
    return "List empty!" if @head.nil?
    scat = head.data
    current_node = head
    scat.concat(" #{current_node.data}") while current_node = current_node.next_node
    return scat
  end

  def prepend(sound)
    current_node = head unless head.nil?
    @head = Node.new(sound)
    head.add_next(current_node)
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

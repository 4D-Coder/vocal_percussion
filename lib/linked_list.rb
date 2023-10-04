class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end


  def count
    @head.nil? ? count = 0 : count = 1
    current_node = @head
    count += 1 while current_node = current_node.next_node
    count
  end

  def to_string
    return "List empty!" if head.nil?
    string = ""; current_node = head; i = self.count
    i.times { string.concat("#{current_node.data} "); current_node = current_node.next_node }
    string.rstrip
  end

  def append(value)
    new_node = Node.new(value)

    self.head.nil? ? @head = new_node : find_tail.add_next(new_node)
  end


  def pop
    return to_string if head.nil?
    if head.next_node.nil?
      popped_data = head.data
      @head = nil
      return popped_data
    end
    current_node = head
    current_node = current_node.next_node until current_node.next_node.next_node.nil?
    popped_node = current_node.next_node
    current_node.add_next(nil)
    popped_node.data
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

  def find(index, quantity)
    collection = to_string.split(" ")
    substring = ""
    (index..index + quantity - 1).each { |i| substring.concat(collection[i], ' ') }
    substring.strip
  end

  def includes?(string)
    collection = to_string.split(" ")
    collection.include?(string)
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

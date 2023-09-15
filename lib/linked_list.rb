class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    node = Node.new(sound)

    @head = node if self.head == nil
  end

  def count
    count = 0
    return count if @head.nil?

    count += 1
  end
end

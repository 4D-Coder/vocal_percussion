class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    node = Node.new(sound)

    @head = node if self.head == nil
  end
end

class BeatBox
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

    def append(value)
      values = value.split(" ")
      values.each { |e| list.append(e) }
    end

    def count
      list.count
    end
  end

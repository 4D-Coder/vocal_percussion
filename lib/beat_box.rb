class BeatBox
  DEFAULT_RATE = 500
  ALLOWED_BEATS = ["tee", "dee", "deep", "bop", "boop", "la", "na", "ditt", "doo", "woo", "hoo", "shu", "dop"]
  attr_reader :list
  attr_accessor :rate,
                :voice
  # Why use a constant?
  # GitHub Copilot: Yes, the `ALLOWED_BEATS` variable is defined as a constant at the top of the `BeatBox` class definition. This is a common practice in Ruby to define constants that are used throughout the class. By defining the constant at the top of the class, it's easy to see what values are allowed for the beats and to update them if necessary.
  # Additionally, defining the constant within the class scope ensures that it's only accessible within the class, which helps to prevent naming conflicts with other parts of the code.


  def initialize
    @list = LinkedList.new
    @rate = DEFAULT_RATE
  end

  def append(value)
    values = value.split(" ")
    values.each { |e| list.append(e) } if validate(values)
  end

  def prepend(value)
    values = value.split(" ")
    values.reverse.each { |e| list.prepend(e) } if validate(values)
  end

  def count
    list.count
  end

  def all
    list.to_string
  end

  def play
    beats = self.list.to_string
    # Add functionality that analyzes if OS is macOS or Linux
    # Added os gem
    `espeak -s #{rate} "#{beats}"`
  end

  def rate=(rate)
    @rate = rate
  end

  def reset_rate
    @rate = DEFAULT_RATE
  end

  private

  def validate(string)
    # Using #all? allows the enumerable to return a boolean value in a cleaner way than #each for use within the append/prepend methods
    string.all? { |s| ALLOWED_BEATS.include?(s) }
  end
end

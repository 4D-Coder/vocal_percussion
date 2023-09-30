class BeatBox
  DEFAULT_VOICE = "english-us"
  DEFAULT_RATE = 500
  ALLOWED_BEATS = ["tee", "dee", "deep", "bop", "boop", "la", "na", "ditt", "doo", "woo", "hoo", "shu", "dop"]

  attr_reader :list,
              :voice,
              :rate

  def initialize
    @list = LinkedList.new
    @rate = DEFAULT_RATE
    @voice = DEFAULT_VOICE
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
    `espeak -s #{rate} -v "#{voice}" "#{beats}"`
  end

  def rate=(rate)
    @rate = rate
  end

  def reset_rate
    @rate = DEFAULT_RATE
  end

  def voice=(voice)
    @voice = voice
  end

  def reset_voice
    @voice = DEFAULT_VOICE
  end

  private

  def validate(string)
    string.all? { |s| ALLOWED_BEATS.include?(s) }
  end
end

require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

ALLOWED_OPTIONS = ["-r", "-v"]
bb = BeatBox.new
bb.rate = ARGV[ARGV.index("-r") + 1] if ARGV.index("-r")
bb.voice = ARGV[ARGV.index("-v") + 1] if ARGV.index("-v")
bb.append(ARGV.last)

if ARGV.all? do |e| { |e| ALLOWED_OPTIONS.include?(e) }
  bb.play
else
  allowed_options_str = ALLOWED_OPTIONS.join(", ")
  puts "Invalid options. Allowed options are: #{allowed_options_str}"
end

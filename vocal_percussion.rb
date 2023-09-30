require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

VALID_OPTIONS = ["-r", "-v"]

bb = BeatBox.new
options = ARGV.select {|e| e =~ /^-\w+$/ }

unless options.all? { |o| VALID_OPTIONS.include?(o) }
  puts "Invalid option passed. Valid options include: #{VALID_OPTIONS}"
  exit
end

bb.rate = ARGV[ARGV.index("-r") + 1].to_i if ARGV.include?("-r")
bb.voice = ARGV[ARGV.index("-v") + 1] if ARGV.include?("-v")

bb.append(ARGV.last)
bb.play

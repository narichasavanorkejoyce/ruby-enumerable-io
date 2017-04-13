# the_file = 'data/cusa-preamble.txt'
#
# new_hash = Hash.new
# file = File.open(the_file, 'r')
#
# file.each_line { |line|
#   words = line.split
#   words.each { |w|
#     if new_hash.has_key?(w)
#       h[w] = h[w] + 1
#     else
#       h[w] = 1
#     end
#   }
# }

input_file = ARGV[0]

File.open(input_file) do |file|
  total = 0

  file.each do |line|
    total += line.split(' ').length
  end

  p total
end

# ruby bin/word_count.rb Gemfile

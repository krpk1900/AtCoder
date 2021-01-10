X, Y = gets.chomp.split.map(&:to_i)

diff = (X-Y).abs
if diff < 3
  puts 'Yes'
else
  puts 'No'
end
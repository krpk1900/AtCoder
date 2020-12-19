H, W = gets.chomp.split.map(&:to_i)
A = Array.new

H.times do
  gets.chomp.split.map(&:to_i).each do |a|
    A << a
  end
end

sum_diff = 0
min = A.min

A.each do |a|
  sum_diff += (a - min)
end

puts sum_diff

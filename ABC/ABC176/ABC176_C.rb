N = gets.chomp.to_i
heights = gets.chomp.split(" ").map(&:to_i)

sum = 0
(N-1).times do |i|
    diff = heights[i] - heights[i+1]
    if diff >= 0
        sum += diff
        heights[i+1] = heights[i]
    end
end

puts sum
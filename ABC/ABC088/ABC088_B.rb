N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

A.sort!.reverse!
first_sum = second_sum = 0
A.each_slice(2).map do |first_num, second_num|
  first_sum += first_num
  second_sum += second_num if !second_num.nil?
end

puts first_sum - second_sum

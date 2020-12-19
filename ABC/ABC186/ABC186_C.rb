N = gets.chomp.to_i
nums_not_include_7 = Array.new

N.times do |num|
  nums_not_include_7 << (num+1) unless (num+1).to_s.include?('7')
end

count_num = 0
nums_not_include_7.each do |num|
  count_num += 1 unless num.to_s(8).include?('7')
end

puts count_num
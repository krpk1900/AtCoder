N = gets.chomp.to_i
$nums = gets.chomp.split.map(&:to_i)

def calc_max index_of_end, sum = 0
	max = sum
	for i in 0..index_of_end do 
		sum += $nums[i]
		if sum >= max
			max = sum
		end
	end
	return max, sum
end

sum = 0
sum_max = 0
for i in 0..N-1 do
	max, sum = calc_max(i, sum)
	puts "max = #{max} sum = #{sum}"
end

puts max
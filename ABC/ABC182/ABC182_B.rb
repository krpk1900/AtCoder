N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

ans = 0
count = 0
count_max = 0
for i in 2..1000 do
	A.each do |a|
		if a % i == 0 
			count += 1
		end
	end
	if count >= count_max
		ans = i
		count_max = count
	end
	count = 0
end

puts ans
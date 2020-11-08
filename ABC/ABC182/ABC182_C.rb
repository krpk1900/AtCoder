N = gets.chomp.split('').map(&:to_i)
reminder_of_0 = reminder_of_1 = reminder_of_2 = 0

N.each do |n|
	case n%3
	when 0 then reminder_of_0 += 1
	when 1 then reminder_of_1 += 1
	when 2 then reminder_of_2 += 1
	end
end

def calculate1 reminder_of_1, reminder_of_2
	# 縦で消す
	min = [reminder_of_1, reminder_of_2].min
	reminder_of_1 -= min
	reminder_of_2 -= min
	# 横で消す
	reminder_of_1 = reminder_of_1 % 3
	reminder_of_2 = reminder_of_2 % 3
	return reminder_of_1 + reminder_of_2
end

def calculate2 reminder_of_1, reminder_of_2
	# 横で消す
	reminder_of_1 = reminder_of_1 % 3
	reminder_of_2 = reminder_of_2 % 3
	# 縦で消す
	min = [reminder_of_1, reminder_of_2].min
	reminder_of_1 -= min
	reminder_of_2 -= min
	return reminder_of_1 + reminder_of_2
end

if reminder_of_0 == 0 && ((reminder_of_1 == 0 && reminder_of_2 == 1) || (reminder_of_1 == 0 && reminder_of_2 == 2) || (reminder_of_1 == 1 && reminder_of_2 == 0) || (reminder_of_1 == 2 && reminder_of_2 == 0))
	puts -1
	exit
end

ans = [calculate1(reminder_of_1, reminder_of_2), calculate2(reminder_of_1, reminder_of_2)].min
puts ans
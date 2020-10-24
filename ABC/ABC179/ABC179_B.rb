N = gets.chomp.to_i
nums = []
N.times do
    nums << gets.chomp.split(" ").map(&:to_i)
end

count = 0
flag = false
nums.each do |line|
    if line[0] == line[1]
        count += 1 
        flag = true if count == 3
    else
        count = 0
    end
end

if flag
    puts "Yes"
else
    puts "No"
end
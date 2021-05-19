N = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)

n = 0
while true do
  nums.map! do |num|
    if num % 2 == 0
      num = num / 2
    else
      puts n
      exit
    end
  end
  n += 1
end

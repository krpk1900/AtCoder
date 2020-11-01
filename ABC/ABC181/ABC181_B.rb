N = gets.chomp.to_i

sum = 0
for i in 1..N do
    a, l =  gets.chomp.split.map(&:to_i)
    sum += (a+l) * (l-a+1) / 2
end

puts sum


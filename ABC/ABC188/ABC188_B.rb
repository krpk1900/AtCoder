N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

sum = 0
N.times do |i|
  sum += (A[i] * B[i])
end

if sum == 0
  puts 'Yes'
else
  puts 'No'
end
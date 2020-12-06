require 'prime'

N = gets.chomp.to_i
answer = []
sum = 1
for n in 2..N do
  Prime.prime_division(n).each do |a, b|
    answer[a] = b if answer[a].nil? || answer[a] <= b
  end
end

answer.each_with_index do |x, i|
  sum *= i**x if x != nil
end

puts sum + 1
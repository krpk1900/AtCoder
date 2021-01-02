A, B = gets.chomp.split
int_a = A.split('').map(&:to_i)
sum_a = int_a.sum
int_b = B.split('').map(&:to_i)
sum_b = int_b.sum

if sum_a >= sum_b
  puts sum_a
else
  puts sum_b
end
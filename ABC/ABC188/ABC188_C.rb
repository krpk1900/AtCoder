N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

left_max = A[0..(2**(N-1)-1)].max
right_max = A[(2**(N-1))..2**N-1].max

if left_max > right_max
  puts (A.index(right_max) + 1)
else
  puts (A.index(left_max) + 1)
end
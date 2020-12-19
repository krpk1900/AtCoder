N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort

sum = [0]
A.each do |a|
  sum << sum.last + a
end

ans = 0
for i in 1..N-1 do
  ans += ((sum[N] - sum[i]) - (N-i)*A[i-1])
end

puts ans
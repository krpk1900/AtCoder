N, A, B = gets.chomp.split.map(&:to_i)

sum = 0
i = 1
while i <= N do
  d1 = (i / 10000) % 10
  d2 = (i / 1000) % 10
  d3 = (i / 100) % 10
  d4 = (i / 10) % 10
  d5 = i % 10
  d_sum = d1 + d2 + d3 + d4 + d5
  sum += i if (A <= d_sum && d_sum <= B)
  i += 1
end

puts sum

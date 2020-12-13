N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

A << 0
A << N+1

diffs = Array.new
A.sort!

(M+1).times do |i|
  diff = A[i+1]-A[i]-1
  diffs << diff if diff > 0
end
# p diffs
min = diffs.min

answer = 0
diffs.each do |diff|
  # p diff.quo(min).to_f.ceil
  answer += diff.quo(min).to_f.ceil
end

p answer
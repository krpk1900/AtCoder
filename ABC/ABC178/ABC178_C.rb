N = gets.chomp.to_i
ans = (10**N - 9**N - 9**N + 8**N) % (10**9 + 7)
puts ans
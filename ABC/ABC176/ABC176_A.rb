N, X, T = gets.chomp.split(" ").map(&:to_i)
ans = N.fdiv(X).ceil * T
puts ans
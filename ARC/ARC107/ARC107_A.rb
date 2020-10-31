A, B, C = gets.chomp.split.map(&:to_i)

sum = A*(A+1) * B*(B+1) * C*(C+1) / 8
ans = sum % 998244353
puts ans
        
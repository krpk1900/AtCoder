A, B, C, X, Y = gets.chomp.split.map(&:to_i)

# セットの枚数
min_num = [X, Y].min
# セットで買うときの最安値
set_price = [2*C, A+B].min * min_num

# セットで買った後まだ買う必要がある枚数
rest_num = 0
rest_price = 0
if X > Y
  rest_num = X - min_num
  rest_price = [A, 2*C].min * rest_num
elsif X < Y
  rest_num = Y - min_num
  rest_price = [B, 2*C].min * rest_num
end

puts set_price + rest_price

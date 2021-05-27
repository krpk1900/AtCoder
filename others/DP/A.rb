N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)
$dp = []

def cost(i)
  # メモにあれば計算せずに返す
  return $dp[i] if !$dp[i].nil?

  # ベースケース
  return 0 if i == 0

  # i-1から来たとき
  cost1 = cost(i-1) + (H[i] - H[i-1]).abs
  # i-2から来たとき
  if i > 1
    cost2 = cost(i-2) + (H[i] - H[i-2]).abs
  else
    cost2 = Float::INFINITY
  end

  return $dp[i] = [cost1, cost2].min
end

puts cost(N-1)
# p $dp

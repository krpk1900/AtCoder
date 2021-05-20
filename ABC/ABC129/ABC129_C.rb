N, M = gets.chomp.split.map(&:to_i)
$a = []
for i in 0..M-1 do
  $a << gets.chomp.to_i
end
$dp = Array.new(10000){nil}

# n段目に上がってくる方法が何通りか
def go_up_stairs(n)
  # puts "go_up_stairs(#{n})が呼ばれました"

  # メモにあれば計算せずに返す
  if !$dp[n].nil?
    return $dp[n]
  end

  # 壊れていたら行けないので0を返す
  if $a.include?(n)
    $dp[n] = 0
    return 0
  end

  # 壊れていないとき
  if n == 1
    $dp[1] = 1
    return $dp[1]
  elsif n == 2
    $dp[2] = go_up_stairs(1) + 1
    return $dp[2]
  end

  return $dp[n] = go_up_stairs(n-1) + go_up_stairs(n-2)
end

puts go_up_stairs(N) % 1000000007

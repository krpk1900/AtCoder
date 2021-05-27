N, W = gets.chomp.split.map(&:to_i)
weight = []
value = []
(0..N-1).each do |i|
  line = gets.chomp.split.map(&:to_i)
  weight << line[0]
  value << line[1]
end

$dp = Array.new(N+1) { Array.new(W+1) {0} }

(0..N-1).each do |i|
  (0..W).each do |w|
    # puts "i=#{i} w=#{w}"
    if w-weight[i] >= 0
      # 品物iを選ぶとき
      # $dp[i+1][w] = [$dp[i][w-weight[i]] + value[i], $dp[i+1][w]].max
      $dp[i+1][w] = $dp[i][w-weight[i]] + value[i]
    end
    # 品物iを選ばないとき
    $dp[i+1][w] = [$dp[i][w], $dp[i+1][w]].max
  end
end

#$dp.each do |line|
#  p line
#end

puts $dp[N][W]

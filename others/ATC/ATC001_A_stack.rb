H, W = gets.chomp.split.map(&:to_i)
$c = []
$reached = Array.new(H) {Array.new(W) {false}}
$start_x = 0
$start_y = 0
$goal_x = 0
$goal_y = 0

(0..H-1).each do |i|
  line = gets.chomp.split('')
  $c << line

  if !line.index('s').nil?
    $start_x = line.index('s')
    $start_y = i
    # puts "start_x, start_y = #{$start_x}, #{$start_x}"
  end

  if !line.index('g').nil?
    $goal_x = line.index('g')
    $goal_y = i
    # puts "goal_x, goal_y = #{$goal_x}, #{$goal_x}"
  end
end

def dfs()
  stack = [[$start_x, $start_y]]
  # stackが空になるまで繰り返す
  while !stack.empty? do
    # p stack
    # stackから1つ取り出す
    point = stack.pop
    x = point[0]
    y = point[1]

    # 位置が迷路の中か壁でないかこれまで到達していない場合
    if (0<=x && x<W && 0<=y && y<H && $c[y][x]!='#' && !$reached[y][x] )
      $reached[y][x] = true
      stack.push([x + 1, y]) # 右
      stack.push([x - 1, y]) # 左
      stack.push([x, y + 1]) # 上
      stack.push([x, y - 1]) # 下
    end
  end
end

dfs()

# p $reached

if $reached[$goal_y][$goal_x]
  puts 'Yes'
elsif
  puts 'No'
end

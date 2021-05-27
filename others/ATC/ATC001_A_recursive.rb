H, W = gets.chomp.split.map(&:to_i)
$c = []
$reached = Array.new(W) {Array.new(H) {false}}
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

def dfs(x, y)
  # 位置が迷路の外か壁の場合は何もしない
  return if (x<0 || W<=x || y<0 || H<=y || $c[y][x]=='#' )
  # 以前に到達していれば何もしない
  return if $reached[y][x]
  # 以下、到達したら
  $reached[y][x] = true

  dfs(x+1, y) # 右
  dfs(x-1, y) # 左
  dfs(x, y+1) # 下
  dfs(x, y-1) # 上
end

dfs($start_x, $start_y)

if $reached[$goal_y][$goal_x]
  puts 'Yes'
elsif
  puts 'No'
end

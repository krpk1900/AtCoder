H, W = gets.chomp.split.map(&:to_i)
Sy , Sx = gets.chomp.split.map(&:to_i)
Gy , Gx = gets.chomp.split.map(&:to_i)
$c = []
(0..H-1).each do |i|
  $c << gets.chomp.split('')
end
$distance = Array.new(W){Array.new(W){1000}}

# p $c

def wfs
  queue = [[Sx-1, Sy-1, 0]]
  # キューが空になるまで繰り返す
  while !queue.empty? do
    # p queue
    point = queue.shift
    x = point[0]
    y = point[1]
    d = point[2]
    # puts "x=#{x} y=#{y}"

    # 位置が範囲内かつ、壁でないかつ、これまで到達していない場合
    if ( 0<=x && x<W && 0<=y && y<H && $c[y][x]!='#' && $distance[y][x]==1000 )
      $distance[y][x] = d
      queue.push([x + 1, y, d + 1]) # 右
      queue.push([x - 1, y, d + 1]) # 左
      queue.push([x, y + 1, d + 1]) # 下
      queue.push([x, y - 1, d + 1]) # 上
    end
  end
end

wfs

puts $distance[Gy-1][Gx-1]

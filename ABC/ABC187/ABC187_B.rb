N = gets.chomp.to_i
points = []
N.times do
  points << gets.chomp.split.map(&:to_i)
end

count = 0
for i in 0..N-1 do
  for j in i+1..N-1 do
    slope = (points[j][1] - points[i][1]).quo(points[j][0] - points[i][0])
    count += 1 if (-1 <= slope and slope <= 1)
  end
end

puts count
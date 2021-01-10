N, C = gets.chomp.split.map(&:to_i)
Lenge = []
points = []

N.times do |i|
  Lenge << gets.chomp.split.map(&:to_i)
  points << Lenge[i][0]
  points << Lenge[i][1]
end

points.uniq!
points.sort!

ratio = 0
point_before = points[0]
point_after = 0
sum = 0

points.each do |point|
  puts "point = #{point}"
  point_after = point
  days = point_after - point_before
  puts "days = #{days}"

  Lenge.each do |lenge|
    if lenge[0] <= point and point <= lenge[1]
      ratio += lenge[2]
    end
  end

  if ratio > C
    ratio = C
  end
  puts "ratio = #{ratio}"

  sum += days * ratio
  puts "sum = #{sum}"
end

p sum
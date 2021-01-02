N = gets.chomp.to_i
voters = []
N.times do
  voters << gets.chomp.split.map(&:to_i)
end

points = []
score = 0
voters.each do |voter|
  # 評価値, 行ったときの+, 行かなかったときの-
  tmp = voter[0]*2 + voter[1], voter[0] + voter[1], voter[0]
  points << tmp
  score -= voter[0]
end

i = 0
while score <= 0 do
  #p score
  #p points.sort!.reverse!
  score += points[i][0]
  i += 1
end

puts i
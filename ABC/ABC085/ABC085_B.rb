N = gets.chomp.to_i
D = []
for i in 0..N-1 do
  D[i] = gets.chomp.to_i
end

buket = Array.new(100, false)
D.each do |d|
  buket[d] = true
end

count_true = 0
buket.each do |b|
  count_true += 1 if b
end

puts count_true

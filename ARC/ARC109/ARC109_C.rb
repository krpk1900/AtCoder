n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp

p s

i = 0
while i < 2**k do
  battle(round0[i], round0[i+1])
  i += 2
end
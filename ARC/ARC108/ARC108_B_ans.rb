N = gets.chomp.to_i
s = gets.chomp
t = []

N.times do |i|
  t << s[i]
  t.slice!(-3..-1) if t[-3..-1] == ["f", "o", "x"]
  i += 1
end

puts t.length
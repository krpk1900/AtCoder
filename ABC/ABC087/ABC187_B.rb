A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

count_pattern = 0
a = 0
b = 0
c = 0
while a <= A do
  while b <= B do
    while c <= C do
      count_pattern += 1 if 500*a + 100*b + 50*c == X
      c += 1
    end
    c = 0
    b += 1
  end
  b = 0
  a += 1
end

puts count_pattern

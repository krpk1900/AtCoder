S = gets.chomp

length = 0
max_length = 0

S.each_char do |char|
  if char=='A' || char=='G' || char=='C' || char=='T'
    length += 1
    max_length = length if length > max_length
  else
    length = 0
  end
end

puts max_length

a, b, x, y = gets.chomp.split.map(&:to_i)

if 2*x > y
  if a <= b
    puts x + (b-a) * y
    exit
  else
    puts x + (a-b-1) * y
    exit
  end
else
  if a <= b
    puts x + (b-a) * 2*x
    exit
  else
    puts x + (a-b-1) * 2*x
    exit
  end
end
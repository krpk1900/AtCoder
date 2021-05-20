N = gets.chomp.to_i
t = [0]
x = [0]
y = [0]
for i in 1..N do
  line = gets.chomp.split.map(&:to_i)
  t << line[0]
  x << line[1]
  y << line[2]
end

for i in 1..N do
  # puts "x=#{x} y=#{y}"
  dt = t[i] - t[i-1]
  dist = (x[i] - x[i-1]).abs + (y[i] - y[i-1]).abs
  if dist > dt
    puts "No"
    exit
  end
  if dt.odd?
    if dist.even?
      puts "No"
      exit
    end
  elsif dt.even?
    if dist.odd?
      puts "No"
      exit
    end
  end
end
puts "Yes"

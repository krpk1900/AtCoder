a, b = gets.chomp.split(' ').map(&:to_i)
product = a * b
if product%2 == 1
    puts "Odd"
else
    puts "Even"
end
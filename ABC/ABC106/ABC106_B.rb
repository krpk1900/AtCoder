require 'prime'

N = gets.chomp.to_i
count = 0

i = 1
while i <= N
  count += 1 if Prime.prime_division(i).map {|p, e| e + 1 }.inject(:*) == 8
  i += 2
end

puts count

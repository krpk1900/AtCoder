N = gets.chomp.to_i
T = gets.chomp

n = ((N+2) / 3.0).ceil
if ('110'*n).index(T) != nil
  k = ((('110'*n).index(T) + N)  / 3.0).ceil
else
  puts 0
  exit
end

if N==1 && T == '1'
  puts (10**10-k+1) * 2
else
  puts (10**10-k+1)
end
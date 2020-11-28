n = gets.chomp.to_i

root = Math.sqrt( 2*(n+1) ).floor

for k in root-1..root+1 do
  if (k+1)*(k+2) > 2*(n+1) && 2*(n+1) >= k*(k+1)
    puts n-k+1
    exit
  end
end
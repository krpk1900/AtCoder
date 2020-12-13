N, M, T = gets.chomp.split.map(&:to_i)

ab = Array.new
ab << [0,0]
M.times do
  ab << $stdin.gets.chomp.split.map(&:to_i)
end

remaining_battery = N
# p remaining_battery

M.times do |k|
  remaining_battery -= (ab[k+1][0]-ab[k][1])
  # p remaining_battery
  if remaining_battery <= 0
    puts 'No'
    exit
  end
  remaining_battery += (ab[k+1][1]-ab[k+1][0])
  remaining_battery = N if remaining_battery > N
  # p remaining_battery
end

remaining_battery -= (T - ab.last[1])
# p remaining_battery
if remaining_battery <= 0
  puts 'No'
  exit
end

puts 'Yes'
N, K = gets.chomp.split.map(&:to_i)
t = Array.new(N) { Array.new(N) }

for i in 0..N-1 do
  t[i] = gets.chomp.split.map(&:to_i)
end

count = 0
sum = 0
[*2..N].permutation.to_a.each do |perm|
  sum = 0
  #puts "perm=#{perm}"
  # 1からpermの最初まで
  #puts "i=1 j=#{perm[0]}"
  sum += t[0][perm[0]-1]

  perm.each_cons(2) do |i, j|
    #puts "i=#{i} j=#{j}"
    sum += t[i-1][j-1]
  end

  # permの最後から1まで
  #puts "i=#{perm[-1]} j=1"
  sum += t[perm[-1]-1][0]

  count += 1 if sum == K
end

puts count

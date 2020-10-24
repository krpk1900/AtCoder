def distance_of(pq)
    Math.sqrt(pq[0]**2 + pq[1]**2)
end

N, D = gets.chomp.split(" ").map(&:to_i)
count = 0
N.times do
    pq = gets.chomp.split(" ").map(&:to_i)
    count += 1 if distance_of(pq) <= D
end

puts count
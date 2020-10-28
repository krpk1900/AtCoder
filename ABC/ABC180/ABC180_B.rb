N = gets.chomp.to_i
xs = gets.chomp.split.map(&:to_i)

def calc_manhattan_distance(xs)
    manhattan_distance = 0
    xs.each do |x|
        manhattan_distance += x.abs
    end
    return manhattan_distance
end

def calc_euclidean_distance(xs)
    sum_square = 0
    xs.each do |x|
        sum_square += x**2
    end
    return Math.sqrt(sum_square)
end

def calc_chebyshev_distance(xs)
    xs.map(&:abs).max
end

puts calc_manhattan_distance xs
puts calc_euclidean_distance xs
puts calc_chebyshev_distance xs
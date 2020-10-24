a, b, c, d = gets.chomp.split(" ").map(&:to_i)
products = []
products << a*c << a*d <<b*c <<b*d
puts products.max